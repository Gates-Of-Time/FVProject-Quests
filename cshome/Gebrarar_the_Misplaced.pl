my $number = 0;

sub EVENT_SPAWN {
	$number = quest::ChooseRandom(1, 2, 3);
	quest::say("$number");
	GetDressed();
}

sub GetDressed {
	quest::npcfeature("texture", $number);
}
