sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("My scroll must find my [" . quest::saylink("scroll") . "] so I may finish my research.");
	}
	if ($text=~/scroll/i) {
		quest::say("Kobold! Kobold!");
		quest::spawn2(38172, 0, 0, $x+5, $y-2, $z, $h);
		quest::depop();
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
