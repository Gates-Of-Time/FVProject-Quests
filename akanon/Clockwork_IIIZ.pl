sub EVENT_SPAWN {
	#:: Create a proximity 100 units across by 20 units tall, without proximity say
	quest::set_proximity($x-50, $x+50, $y-50, $y+50, $z-10, $z+10, 0);
}

sub EVENT_ENTER {
	quest::say("Please do not disturb the animals.");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
