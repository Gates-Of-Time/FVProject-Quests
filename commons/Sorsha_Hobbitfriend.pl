$number = 1;

sub EVENT_SPAWN {
	quest::say("Spawned!");
	quest::settimer("timer", 2);
	quest::say("Timer Set!");
}

sub EVENT_TIMER {
	if ($timer eq "timer") {
		quest::spawn2(21059, 0, $x + 10, $y + 10, $z, 0);
		$number++;
		quest::say("$number");
		quest::npcfeature("texture",$number);
		quest::npcfeature("helm",$number);
		quest::npcfeature("haircolor",$number);
		quest::npcfeature("beardcolor",$number);
		quest::npcfeature("eyecolor1",$number);
		quest::npcfeature("eyecolor2",$number);
		quest::npcfeature("hair",$number);
		quest::npcfeature("face",$number);
		quest::npcfeature("beard",$number);
	}
}
