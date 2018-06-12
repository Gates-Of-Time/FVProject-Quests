sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("My scroll must find my [" . quest::saylink("scroll") . "] so I may finish my research.");
	}
	if ($text=~/scroll/i) {
		quest::say("Kobold! Kobold!");
		quest::depop();
		quest::spawn2(38228, 174, 0, 758.83, 207.75, 42.35, 232.4);
		quest::attack($rClient->GetName());
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
