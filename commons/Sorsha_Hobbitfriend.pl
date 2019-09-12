$x_offset = 0
$y_offset = 0

sub EVENT_SPAWN {
	quest::settimer("spawnanother",5);
}

sub EVENT_TIMER {
	if ($timer eq "spawnanother") {
		quest::say("Timer!");
		$x_offset++;
		$y_offset++;
		quest::spawn2(21059,0,$x + $x_offset,$y + $y_offset,$z,0);
		quest::npcfeature("texture",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("helm",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("haircolor",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("beardcolor",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("eyecolor1",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("eyecolor2",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("hair",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("face",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
		quest::npcfeature("beard",quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10));
	)
}
