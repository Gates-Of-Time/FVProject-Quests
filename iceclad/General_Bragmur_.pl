sub EVENT_ITEM {
	#:: Match a 8897 - Expedition Orders
	if (plugin::takeItems(8897 => 1)) {
		quest::say("The final orders, follow me closely! I pray that the Kromrif have not learned of our plans to allign with the gnomes.");
    	#:: Ding!
		quest::ding();
		my $x = $npc->GetX();
		my $y = $npc->GetY();
		my $z = $npc->GetZ();
		my $h = $npc->GetHeading();
		#:: Spawn one and only one Iceclad Ocean >> General_Bragmur_ (110118), with no grid or guildwar, at the current location
		quest::spawn2(110118,55,0,$x,$y,$z,$h);
    	#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	else {
		quest::say("I have no need for this, $name.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '10' from Iceclad Ocean >> Avatar_of_Below (110119)
	if ($signal == 10) {
		quest::say("I must go tell the Dain of these events immediately!");
		#:: Send a signal "10" to Iceclad Ocean >> Captain_Nalot (110069) with a one second delay
		quest::signalwith(110069, 10, 1000);
		#:: Create a timer 'bragmur4' that triggers every 5 seconds
		quest::settimer("bragmur4", 5);
	}
	#:: Match a signal '2' from Iceclad Ocean >> Captain_Nalot (110119)
	elsif($signal == 2) {
		quest::say("Greetings Captain Nalot, I have come to you with a proposition to make.");
		#:: Send a signal "3" to Iceclad Ocean >> Captain_Nalot (110069) with a one second delay
		quest::signalwith(110069, 3, 1000);
	}
	#:: Match a signal '3' from Iceclad Ocean >> Captain_Nalot (110069)
	elsif($signal == 3) {
		quest::say("Well ya see sir, we have a surplus of Velium that we would not mind sharing with you for yer tinkerin' but would ask a favor in return for it.");
		#:: Send a signal "4" to Iceclad Ocean >> Captain_Nalot (110069) with a one second delay
		quest::signalwith(110069, 4, 1000);
	}
	#:: Match a signal '4' from Iceclad Ocean >> Captain_Nalot (110069)
	elsif($signal == 4) {
		quest::say("I represent the Dain in this matter, we would like for you to use yer Icebreaker there to head to Antonica and bring reinforcements for the war that is preparing to ensue. We are needin' all the help we can get against the Kromrif.");
		#:: Create a timer 'bragmur3' that triggers every 3 seconds
		quest::settimer("bragmur3", 3);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#::: When NPC arrives at waypoint 13
	if ($wp eq "13") {
		#:: Send a signal "102" to Iceclad Ocean >> Commander_Vjorik (110096) with nodelay
		quest::signalwith(110096, 102);
		#:: Spawn one Iceclad Ocean >> Kromrif_tracking_wolf (110097), with no grid or guildwar, at the given location
		quest::spawn2(110097, 0, 0, 7518.8, -3539.8, 164.0, 95.1);
		#:: Spawn one Iceclad Ocean >> Kromrif_tracking_wolf (110097), with no grid or guildwar, at the given location
		quest::spawn2(110097, 0, 0, 7536.8, -3525.8, 163.2, 125.4);
		#:: Spawn one Iceclad Ocean >> Kromrif_tracking_wolf (110097), with no grid or guildwar, at the given location
		quest::spawn2(110097, 0, 0, 7555.5, -3530.8, 162.2, 155.6);
		#:: Spawn one Iceclad Ocean >> Kromrif_tracking_wolf (110097), with no grid or guildwar, at the given location
		quest::spawn2(110097, 0, 0, 7512.5, -3575.6, 165.3, 32.8);
	}
	#::: When NPC arrives at waypoint 20
	elsif($wp eq "20") {
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110120), with no grid or guildwar, at the given location
		quest::spawn2(110120, 0, 0, 7243.8, -2153.7, 150.2, 110.8);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110120), with no grid or guildwar, at the given location
		quest::spawn2(110120, 0, 0, 7211.8, -2204.5, 145.6, 69.9);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110120), with no grid or guildwar, at the given location
		quest::spawn2(110120, 0, 0, 7254.1, -2246.1, 147.5, 8.9);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110120), with no grid or guildwar, at the given location
		quest::spawn2(110120, 0, 0, 7324.7, -2196.4, 153.9, 188.1);
	}
	#::: When NPC arrives at waypoint 33
	elsif($wp eq "33") {
		#:: Spawn one Iceclad Ocean >> Commander_Kvarid (110112), with no grid or guildwar, at the given location
		quest::spawn2(110112, 0, 0, 5923.9, -1015.7, 162.5, 129.3);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 5864.8, -1063.2, 157.7, 66.6);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 5894.9, -1110.1, 160.6, 21.6);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 5973.3, -1041.8, 163.0, 177.6);
	}
	#::: When NPC arrives at waypoint 68
	elsif($wp eq "68") {
		#:: Spawn one Iceclad Ocean >> Kromrif_Tracking_Wolf (110122), with no grid or guildwar, at the given location
		quest::spawn2(110122, 0, 0, 2265.1, 1530.2, 60.1, 142.6);
		#:: Spawn one Iceclad Ocean >> Kromrif_Tracking_Wolf (110122), with no grid or guildwar, at the given location
		quest::spawn2(110122, 0, 0, 2249.0, 1536.2, 56.0, 123.4);
		#:: Spawn one Iceclad Ocean >> Kromrif_Tracking_Wolf (110122), with no grid or guildwar, at the given location
		quest::spawn2(110122, 0, 0, 2234.1, 1530.7, 52.4, 112.4);
		#:: Spawn one Iceclad Ocean >> Kromrif_Tracking_Wolf (110122), with no grid or guildwar, at the given location
		quest::spawn2(110122, 0, 0, 2220.9, 1500.8, 50.4, 87.9);
		#:: Spawn one Iceclad Ocean >> Kromrif_Tracking_Wolf (110122), with no grid or guildwar, at the given location
		quest::spawn2(110122, 0, 0, 2242.6, 1458.6, 52.0, 19.3);
	}
	#::: When NPC arrives at waypoint 80
	elsif($wp eq "80") {
		#:: Spawn one Iceclad Ocean >> Commander_Vjorik (110109), with no grid or guildwar, at the given location
		quest::spawn2(110109, 0, 0, 2695.9, 3725.1, 249.2, 128.4);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 2678.2, 3719.1, 250.3, 89.4);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 2709.9, 3720.5, 245.5, 165.4);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 2711.9, 3707.5, 242.0, 192.9);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 2678.7, 3690.9, 245.7, 35.4);
		#:: Spawn one Iceclad Ocean >> Frost_Giant_Skirmisher (110121), with no grid or guildwar, at the given location
		quest::spawn2(110121, 0, 0, 2666.9, 3735.2, 247.8, 95.1);
	}
	#::: When NPC arrives at waypoint 91
	elsif($wp eq "91") {
		quest::say("Lo there gnomes! Tell me is your camp nearby?");
		#:: Send a signal "101" to Iceclad Ocean >> Ratop (110052) with half a second delay
		quest::signalwith(110052, 101, 500);
	}
	#::: When NPC arrives at waypoint 100
	elsif($wp eq "100") {
		#:: Send a signal "1" to Iceclad Ocean >> Captain_Nalot (110069) with no delay
		quest::signalwith(110069,1);
	}
}

sub EVENT_TIMER {
	#:: Match the timer 'bragmur4'
	if ($timer eq "bragmur4") {
		#:: Stop the timer 'bragmur4'
		quest::stoptimer("bragmur4");
		#:: Depop without spawn timer
      	quest::depop();
	}
	#:: Match the timer 'bragmur3'
	elsif ($timer eq "bragmur3") {
		#:: Stop the timer 'bragmur3'
		quest::stoptimer("bragmur3");
		#:: Spawn one and only one Iceclad Ocean >> Avatar_of_Below (110119), with no grid or guildwar, at the given location
      	quest::spawn2(110119, 0, 0, 1309.9, 4571.0, 72.6, 24.6);
	}
}