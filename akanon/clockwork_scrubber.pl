# Ak'Anon (akanon) >> clockwork_scrubber (55001), (55010), (55035)

sub EVENT_SPAWN {
	my $miner628 == 0;
	my $random = int(rand(100));
	if ($random <= 5) {
		$miner628 == 1;
	}
}

sub EVENT_SAY {
	if ($text=~/628/i && $miner628 == 1) {
		quest::emote(".wizz.click.628.");
	}
}

sub EVENT_ITEM {
	if (plugin::check_handin(%itemcount, 12164 => 1) && $miner628 == 1) { #Scrubber Key
		quest::emote(".wizz.click.628.");
		$gnometake = quest::ChooseRandom(12162,12167); #Gnome Take (Good or Bad)
		quest::summonitem($gnometake);
		quest::faction(45,-10); # Clockwork Gnome
		quest::ding();
		quest::exp(500);
	}
	plugin::return_items(%itemcount); # return unused items
}

# Ak'Anon (akanon) >> clockwork_scrubber (55001), (55010), (55035)
