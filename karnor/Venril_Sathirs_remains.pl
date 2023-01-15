sub EVENT_SPAWN {
	#:: Create a timer 'check' that triggers every 5 seconds
	quest::settimer("check", 5);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("The living fire. I seek the fires of life. Bring them.");
	}
}

sub EVENT_ITEM {
	#:: Match a 10295 - Summoned: Firefly Globe
#::	if (plugin::takeItems(10295 => 1)) {
#::		quest::emote("grasps the glowing sphere of fireflies from your hands. Tendrils of mystical energy begin to flow forth from the swarm of glowing insects like tiny fingers. The glowing tendrils begin to reach into the ribcage of the rotting remains of Venril Sathir, coalescing into the form of an iksar ghost.");
#::		#:: Spawn a Karnor's Castle >> Spirit_of_Venril_Sathir (102123) at the current location
#::		quest::spawn2(102123, 0, 0, $x, $y, $z, $h);
#::		#:: Depop with spawn timer active
#::		quest::depop_withtimer();
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'check'
	if ($timer eq "check") {
		#:: Match Karnor's Castle >> #Venril_Sathir (102112)
		if ($entity_list->IsMobSpawnedByNpcTypeID(102112)) {
			quest::stoptimer("check");
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
}
