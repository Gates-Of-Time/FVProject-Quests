sub EVENT_SPAWN {
	#:: Set a timer that loops every 900 seconds (15 min)
	quest::settimer("despawn", 900);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest:say("Yes?");
	}
	elsif ($text=~/come back to the closet/i) {
		quest::emote("lets out a long sigh.");
		quest::say("If I must...but only if I can take a bit of my former life with me inside the closet. Since my boat is broken, bring me a Ship in a Bottle and I will accept my fate.");
	}
}

sub EVENT_TIMER {
	#:: Match the timer "despawn"
	if ($timer eq "despawn") {
		#:: Stop the timer from looping over and over
		quest::stoptimer("despawn")
		#:: Depop
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Match a 12218 - Ship in a Bottle
	if (plugin::takeItems(12218 => 1) {
		quest::say("At least I can dream I'm on this ship out on the wide open sea...Thanks friend. You know what would make being in that closet easier? Having my friend The Minstrel playing music. I heard Basher Avisk trying to hum a tune that I know The Minstrel plays a lot. Maybe he knows where to find The Minstrel. Hmm...I doubt he'll know what a minstrel is...better ask him about the [tune] he's always humming.");
		#:: Give a 12215 - The Captain
		quest::summonitem(12215);
		#:: Ding!
		quest::ding();
		#:: Stop the timer from looping over and over
		quest::stoptimer("despawn")
		#:: Depop
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
