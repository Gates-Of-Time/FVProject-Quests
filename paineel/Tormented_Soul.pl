#:: Create a scalar variable to store a state
my $FlavorTrigger;

sub EVENT_SPAWN {
	#:: Create a proximity 500 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 250, $x + 250, $y - 250, $y + 250, $z - 50, $z + 50, 0);
	#:: Set the state to false
	$FlavorTrigger = 0;
}

sub EVENT_ENTER {
	#:: Match if the flavor text has not been triggered
	if ($FlavorTrigger == 0) {
		#:: Create a timer 'tormentedsoul_client_check' that triggers every 60 seconds (1 min)
		quest::settimer("tormentedsoul_client_check", 60);
		#:: Create a scalar variable to store a random number (this npc has a dialogue timer of 37s, 74s, 147s, or 10 minutes 37 most common, 147 uncommon, 74 rare, 10 min rarest
		my $dialoguetimer = quest::ChooseRandom(37, 37, 37, 37, 37, 37, 37, 147, 147, 147, 147, 147, 74, 74, 74, 600);
		#:: Create a timer 'tormentedsoul' that triggers at the random time
		quest::settimer("tormentedsoul", $dialoguetimer);
		#:: Set the flavor text trigger state to true
		$FlavorTrigger = 1;
		quest::say("Was oonncee... aliiive...");
	}

}

sub EVENT_TIMER {
	#:: Match timer 'mangler_client_check'
	if ($timer eq "tormentedsoul_client_check") {
		#:: Pull a list of clients from the entity list
		my @ClientList = $entity_list->GetClientList();
		#:: Match if the ClientList array is empty
		if (scalar @ClientList == 0) {
			#:: Set the flavor text trigger state to false
			$FlavorTrigger = 0;
			#:: Stop the timer 'tormentedsoul'
			quest::stoptimer("tormentedsoul");
		}
		else {
			#:: Set the flavor text trigger state to true
			$FlavorTrigger = 1;
		}
	}
	#:: Match timer 'tormentedsoul'
	elsif ($timer eq "tormentedsoul") {
		#:: Match if the flavor trigger state is set to true
		if ($FlavorTrigger == 1) {
			#:: Stop the timer 'tormentedsoul'
			quest::stoptimer("tormentedsoul");
			quest::say("Was oonncee... aliiive...");
			#:: Create a scalar variable to store a random number (this npc has a dialogue timer of 37s, 74s, 147s, or 10 minutes 37 most common, 147 uncommon, 74 rare, 10 min rarest
			my $dialoguetimer = quest::ChooseRandom(37, 37, 37, 37, 37, 37, 37, 147, 147, 147, 147, 147, 74, 74, 74, 600);
			#:: Create a timer 'tormentedsoul' that triggers at the random time
			quest::settimer("tormentedsoul", $dialoguetimer);
		}
		else {
			#:: Stop the timer 'tormentedsoul'
			quest::stoptimer("tormentedsoul");
		}
	}
}


sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Dullard.  I may be a scholar but I can still make your soul writhe in pain.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Whaaat foool does seek counsel with this spirit?");
		}
		elsif ($faction == 5) {
			quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
		}
		else {
			quest::say("I was... once...");
		}
	}
	elsif ($text=~/counsel/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Yes, counsel. It means to meet and converse, fool. Waste my time with definitions of words any dullard would know and taste my anger.");
		}
		elsif ($faction == 5) {
			quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
		}
		else {
			quest::say("I was... once...");
		}
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Kindly or better
	if ($faction <= 3) {
		#:: Match a 7114 - Soul Trap
		if (plugin::takeItems(7114 => 1)) {
			quest::say("Was oonncee... aliiive...");
			#:: Give a 7105 - Mantle of Souls
			quest::summonitem(7105);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(265, 5);  		#:: + Heretics
			quest::faction(242, -5);  		#:: - Deepwater Knights
			quest::faction(254, -5); 		#:: - Gate Callers
			quest::faction(231, -5);  		#:: - Craftkeepers
			quest::faction(233, -5);  		#:: - Crimson Hands
			#:: Grant a moderate amount of experience
			quest::exp(1000);
		}
	}
	quest::say("Come back when you have done more to further our campaign.");
	#:: Return unused items
	plugin::returnUnusedItems();
}
		
sub EVENT_DEATH_COMPLETE {
	quest::say("The cold of souls and stench of death!  Always, here, do I find it...");
}
