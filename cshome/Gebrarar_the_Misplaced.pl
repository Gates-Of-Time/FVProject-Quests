my $number = 0;

sub EVENT_SPAWN {
	$number = quest::ChooseRandom(1, 2, 3);
	quest::say("$number");
	quest::settimer("dressup", 10);
}

sub EVENT_TIMER {
	if ($timer eq "dressup") {
		GetDressed();
	}
}

sub GetDressed {
	quest::say("Getting dressed in texture $number");
	quest::npcfeature("texture", $number);
}
