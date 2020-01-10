sub EVENT_SPAWN {
	$number = quest::ChooseRandom(17..23);
	quest::say("$number");
	quest::npcfeature("texture", $number);
}
