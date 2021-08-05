sub EVENT_SAY {   
	if ($text=~/hail/i) {
		quest::say("By Cazic-Thule. I am going to kill him!  If he keeps up that endless chatter.. Oh, hello there, $name.  Please feel free to peruse my wares.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
