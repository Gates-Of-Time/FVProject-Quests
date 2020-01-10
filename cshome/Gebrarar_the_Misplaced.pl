my $number = 0;

sub EVENT_SPAWN {
	$number = quest::ChooseRandom(1, 2, 3);
	quest::say("$number");
	GetDressed();
}

sub GetDressed {
	quest::say("Getting dressed in texture $number");
	quest::npcfeature("texture", $number);
}
