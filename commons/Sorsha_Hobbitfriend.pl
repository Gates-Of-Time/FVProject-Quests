sub EVENT_SPAWN {
	quest::say("Spawned!");
	quest::settimer("timer", 2);
	quest::say("Timer Set!");
}

sub EVENT_TIMER {
	if ($timer eq "timer") {
		my $random = int(rand(100));
		quest::say("My random number is $random.");
		quest::spawn2(21059, 0, 0, $x + $random, $y + $random, $z, 0);
		quest::npcfeature("texture",$random);
		quest::npcfeature("helm",$random);
		quest::npcfeature("haircolor",$random);
		quest::npcfeature("beardcolor",$random);
		quest::npcfeature("eyecolor1",$random);
		quest::npcfeature("eyecolor2",$random);
		quest::npcfeature("hair",$random);
		quest::npcfeature("face",$random);
		quest::npcfeature("beard",$random);
	}
}
