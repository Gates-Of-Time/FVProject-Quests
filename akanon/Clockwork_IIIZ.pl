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

sub EVENT_AGGRO {
	quest::say("Click... Tick... City violation. Code 5150. This unit is authorized to execute punishment. Please stand still. Thank you.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Bzzzz... Click... This unit is terminally damaged. Destruction of city property is a violation of city code 22468. All units shall be notified of your offense...");
	#:: Spawn a Ak'Anon >> Clockwork_MM (55164) at the current coordinates
	quest::spawn2(55164, 0, 0, $x, $y, $z, $h+256);
}
