sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("You be tinking you be [" . quest::saylink("real tuff Craknek") . "]?");
	}
	if ($text=~/real tuff craknek/i) {
		quest::say("Me not tinking so. but maybe me wrongs.. no.. me neber wrongs.  You no tuff. only liddle Craknek is you.  You tink you be tuff Craknek. you bringed me four lizard meats.  Me like lizard meats.  You no tuff.  You bringed me lizard [" . quest::saylink("meats") . "].  I make you tuffer Craknek.  Me bestest Craknek."); }
	}
	if ($text=~/meats/i) {
		quest::say("Yup, meats.  You brings me four, me gives you sumting.");
	}
}

sub EVENT_ITEM {
	#:: Match 13410 - Lizard Meat
	if (plugin::check_handin(\%itemcount, 13410 => 4)) {
		quest::say("Yous really did it. Mebbe you tuff Craknek after all.");
		#:: Set factions
		quest::faction(46, 15);		#:: Clurg +15
		quest::faction(57, 15);		#:: Craknek Warriors +15
	}
	plugin::return_items(\%itemcount);
}
