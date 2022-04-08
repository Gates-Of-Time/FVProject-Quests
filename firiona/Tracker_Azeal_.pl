sub EVENT_SPAWN {
	quest::say("I'm going to start my patrol. I'll report back by morning.");
	#:: Create a timer 'Patrol' that triggers every 10 seconds
	quest::settimer("Patrol", 10);
}

sub EVENT_ITEM {
	#:: Match a 12691 - Coin
	if (plugin::takeItems(12691 => 1)) {
		quest::emote("begins to pull his face off.. it is a disguise!! 'Aha!! You have made it!! I cannot see well in this disguise, but I thought I smelled you. I have [news of the Charasis tome].'");
		#:: Ding!
		quest::ding();
		#:: Spawn Firiona Vie >> Hero_Goxnok (84319), with no grid or guild war, at the current location
		quest::spawn2(84319, 0, 0, $x, $y, $z, $h);
		#:: Spawn Firiona Vie >> a_drachnid_spy (84311), with no grid or guild war, at the specified coordinates
		quest::spawn2(84311, 0, 0, -1822, 617, 142.5, 206);
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'Patrol'
	if ($timer eq "Patrol") {
		#:: Start path grid 11
		quest::start(11);
		quest::stoptimer("Patrol");
		#:: Create a timer 'ZoneTime' that triggers every 30 seconds
		quest::settimer("ZoneTime", 30);
	}
	#:: Match timer 'ZoneTime'
	elsif ($timer eq "ZoneTime") {
		#:: Match if time is 06:00
		if ($zonehour == 6) {
			#:: Spawn a Firiona Vie >> Tracker_Azeal (84277) with no grid or guild war, at the specified coordinates
			quest::spawn2(84277, 0, 0, 2268, -2828, -74.8, 475);
			quest::stoptimer("ZoneTime");
			quest::depop();
		}
	}
}
