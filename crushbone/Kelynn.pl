#:: Scouts Cape Quest

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What are you doing here?!! Get out before you find yourself mining for these wretched beasts!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 12184 -  Useless Token
	if (plugin::check_handin(\%itemcount, 12184 => 1)) {
		quest::say("You were sent by Geeda!! Here. Take the information. Maybe next you shall earn your Scout Blade from Laren. Quickly!! Leave at once!!");
		#:: Give item 12183 - Crushbone Information
		quest::summonitem(12183);
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
