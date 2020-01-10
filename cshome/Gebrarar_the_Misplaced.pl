my $number = 0;

sub EVENT_SPAWN {
	$number = quest::ChooseRandom(17..23);
	quest::say("$number");
	GetDressed();
}

sub GetDressed {
	quest::npcfeature("texture", $number);
}
