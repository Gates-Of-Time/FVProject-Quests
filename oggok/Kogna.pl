sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("You be tinking you be [real tuff Craknek]?");
	}
	if ($text=~/real tuff craknek/i) {
		quest::say("Me not tinking so. but maybe me wrongs.. no.. me neber wrongs.  You no tuff. only liddle Craknek is you.  You tink you be tuff Craknek. you bringed me four lizard meats.  Me like lizard meats.  You no tuff.  You bringed me lizard [meats].  I make you tuffer Craknek.  Me bestest Craknek.");
	}
	if ($text=~/meats/i) {
		quest::say("Yup, meats.  You brings me four, me gives you sumting.");
	}
}

sub EVENT_ITEM {
	#:: Match four 13410 - Lizard Meat
	if (plugin::takeItems(13410 => 4)) {
		quest::say("No, I donut tink so. Who gived you? Bah, me most tuffest Craknek, but me no lier. Me help you be tuffer Craknek. Who gived you dese? Maybe you finded dead lizards, yes, dat it. Bah, taking dis and kills more tings. You learned much, com see me, I teaches you best Craknek ways. Keep eye on dem Greenbloods, dey nasty and not so tuff.");
		#:: Give a 5025 - Rusty Two Handed Battle Axe
		quest::summonitem(5025);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(228, 5);		#:: + Clurg
		quest::faction(232, 1);		#:: + Craknek Warriors
		quest::faction(261, -1);	#:: - Green Blood Knights
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
