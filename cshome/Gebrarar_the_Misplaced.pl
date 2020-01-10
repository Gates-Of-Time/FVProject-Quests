my $number = 0;

sub EVENT_SPAWN {
	$number = quest::ChooseRandom(17..23);
	quest::npctexture($number);
}
