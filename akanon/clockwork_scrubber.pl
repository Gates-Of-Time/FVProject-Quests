# Ak'Anon (akanon) >> clockwork_scrubber (55001), (55010), (55035)

my $miner628 = "false";

sub EVENT_SPAWN {
	#:: 1 in 20 will be 628
	my $random = int(rand(100));
	if ($random <= 5) {
		$miner628 = "true";
	}
}

sub EVENT_SAY {
	#:: 1 in 20 will respond to 628
	if ($text=~/628/i && $miner628 eq "true") {
		quest::emote(".wizz.click.628.");
	}
	elsif ($text=~/628/i && $miner628 eq "false") {
	}
}

sub EVENT_ITEM {
	#:: Check for handin of 12164 - Scrubber Key (Rogue Scrubber Key)
	if (plugin::check_handin(%itemcount, 12164 => 1) && $miner628 eq "true") {
		quest::emote(".wizz.click.628.");
		#:: Choose a random 12162 - Gnome Take (Good Take For Rogues), 12167 - Gnome Take (Bad Take For Rogues)
		$gnometake = quest::ChooseRandom(12162,12167);
		#:: Give one of the Gnome Take items
		quest::summonitem($gnometake);
		#:: Set faction
		quest::faction(45,-10); 	#:: -10 Clockwork Gnome
		quest::ding();
		quest::exp(500);
	}
	plugin::return_items(%itemcount); # return unused items
}

# Ak'Anon (akanon) >> clockwork_scrubber (55001), (55010), (55035)
