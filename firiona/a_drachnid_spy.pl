sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote(" looks upon you with evil eyes and you hear a horrid chatter. Hairs rise from the spider's thorax. 'Greetings, creature. What a fine meal you would make!'");
		quest::attack($name);
		quest::say("You shall not take the tome from me!! I shall snack upon your blood-drained corpse.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	#:: Send a signal '1' to Firiona Vie >> Hero_Goxnok (84319) with no delay
	quest::signalwith(84319, 1, 0);
}
