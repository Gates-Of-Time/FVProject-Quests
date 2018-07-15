sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am Nexvok, master wizard of the Dismal Rage.  My associates Heneva and Konious and I provide our services to master Zarn on a regular basis.  People of our talent are in high demand. and Pietro pays well, so we are, of course, very loyal.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18854 -  A tattered note
	if (plugin::check_handin(\%itemcount, 18854 => 1)) {
		quest::say("Ah ha.. Fresh meat. here, put this on.. you're one of us now. Do your best to do your worst.");
		#:: Give item 13564 - Dirty Torn Robe*
		quest::summonitem(13564);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(86,100); 	#:: + Dismal Rage
		quest::faction(184,-15); 	#:: - Knights of Truth
		quest::faction(235,20); 	#:: + Opal Dark Briar
	}
	plugin::return_items(\%itemcount);
}
