#:: Create a scalar variable to track whether or not the delivery was successful
my $delivery = 0;
#:: Create scalar variables for the bandits to export NPC_Type_ID
my $bandit1id = 56178;	#:: Hector_the_highway_bandit
my $bandit2id = 56179;	#:: Renaldo_the_highway_bandit
my $bandit3id = 56180;	#:: Jerald_the_highway_bandit

sub EVENT_SPAWN {
	#:: Create a timer to trigger every 5 seconds
	quest::settimer("CargoTimer",5);
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from steamfont/Watchman_Grep.pl
	if ($signal == 1) {
		quest::emote("Chuga.. Chug..Chug..");
		quest::say("This unit requires maintenance.");
	}
}

sub EVENT_TIMER {
	#:: Match "CargoTimer" every five seconds
	if ($timer eq "CargoTimer") {
		#:: Key a data bucket
		$key = $npc->GetCleanName() . "-failed";
		#:: Match if the data bucket does not exist
		if (!quest::get_data($key)) {
			#:: Match if the time is 8 AM
			if ($zonehour == 8) {
				#:: Key a data bucket
				$key = $npc->GetCleanName() . "-five-days";
				#:: Match if the data bucket does not exist
				if (!quest::get_data($key)) {
					#:: Set the data bucket for 21,600 seconds (5 game days)
					quest::set_data($key, 1, 21600);
					#:: Key a data bucket
					$key = $npc->GetCleanName() . "-failed";
					#:: Set the data bucket for 4320 seconds (1 game day)
					quest::set_data($key, 1, 4320);
					#:: Start path grid 177 - path to the windmills
					quest::start(177);
				}
			}
		}
		#:: Match if at the spawnpoint (WP 0) and if delivery was completed
		if ($x == 700 && $y == -1783 && $delivery == 1) {
			#:: Stop pathing on path grid 177
			quest::stop();
			#:: Reset the delivery state
			$delivery = 0;
			#:: Reset the data bucket
			quest::delete_data($key);
		}
		#:: Match if at the crossroads with Watchman Grep (WP 7)
		if ($x == 550 && $y == -830) {
			#:: Pull a list of clients from the entity list
			my @ClientList = $entity_list->GetClientList();
			#:: Match if the ClientList is not empty
			if (scalar @ClientList > 0) {
				quest::say("kachunk .. kachunk..");
				#:: Send a signal '1' to Watchman Grep with no delay
				quest::signalwith(56066, 1, 0);
			}
		}
		#:: Match if at the highway robbery location and delivery has not been completed
		if ($x == 90 && $y == -700 && $delivery == 0) {
			#:: Set delivery complete
			$delivery = 1;
			quest::emote("Chuga.. Chug..Chug..");
			quest::emote("The chugging of the Cargo Clockwork comes to a halt.");
			#:: Spawn Hector_the_highway_bandit (56178)
			$bandit1 = quest::spawn2($bandit1id,0,0,30,-700,-109,62);
			#:: Get Hector_the_highway_bandit's ID from the entity list
			$bandit1obj = $entity_list->GetMobID($bandit1);
			#:: Add the Cargo_Clockwork to the hate list of the bandit
			$bandit1npc = $bandit1obj->CastToNPC();
			$bandit1npc->AddToHateList($npc,1);
			#:: Spawn Renaldo_the_highway_bandit (56179)
			$bandit2 = quest::spawn2($bandit2id,0,0,95,-732,-108,240);
			#:: Get Renaldo_the_highway_bandit's ID from the entity list
			$bandit2obj = $entity_list->GetMobID($bandit2);
			#:: Add the Cargo_Clockwork to the hate list of the bandit
			$bandit2npc = $bandit2obj->CastToNPC();
			$bandit2npc->AddToHateList($npc,1);
			#:: Spawn Jerald_the_highway_bandit (56180)
			$bandit3 = quest::spawn2($bandit3id,0,0,53,-615,-107,113);
			#:: Get Jerald_the_highway_bandit's ID from the entity list
			$bandit3obj = $entity_list->GetMobID($bandit3);
			#:: Add the Cargo_Clockwork to the hate list of the bandit
			$bandit3npc = $bandit3obj->CastToNPC();
			$bandit3npc->AddToHateList($npc,1);
			quest::say("This is highway robbery.");
		}
		#:: Match if the NPC has a highway bandit from its hate list targeted
		if ($npc->GetTarget() && ($targetname=~/highway_bandit/i)) {
			#:: Wipe the hate list (to cause a target switch)
			$npc->WipeHateList();
		}
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Stop the 5 second timer
	quest::stoptimer("CargoTimer");
	#:: Reset delivery status to 0
	$delivery = 0;
	#:: Send a signal to each bandit so they can gloat
	quest::signal($bandit1id,0);
	quest::signal($bandit2id,0);
	quest::signal($bandit3id,0);
	#:: Spawn Steamfont Mountains >> Driver_Bryggin (56147) at the current location
	quest::spawn2(56147, 0, 0, $x, $y, $z, $h);
}
