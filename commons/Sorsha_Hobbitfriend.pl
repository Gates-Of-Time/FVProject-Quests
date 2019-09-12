sub EVENT_SPAWN {
	quest::say("Spawned!");
	quest::settimer("timer", 2);
	quest::say("Timer Set!");
}

sub EVENT_TIMER {
	if ($timer eq "timer") {
		quest::spawn2(21059, 0, $x + 10, $y + 10, $z, 0);
		my $Number = int(rand(100));
		quest::say("$Number");
		quest::npcfeature("texture",$Number);
		quest::npcfeature("helm",$Number);
		quest::npcfeature("haircolor",$Number);
		quest::npcfeature("beardcolor",$Number);
		quest::npcfeature("eyecolor1",$Number);
		quest::npcfeature("eyecolor2",$Number);
		quest::npcfeature("hair",$Number);
		quest::npcfeature("face",$Number);
		quest::npcfeature("beard",$Number);
	}
}
