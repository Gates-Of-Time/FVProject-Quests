sub EVENT_SAY {
	if ($text=~/Megan/i) {
		if ($faction <= 4) {
			quest::say("I heard she got lost on the plains. You should go ask her dog, Snowflake, where she is. I hear she is somewhere around the pass to Halas.");
		}
		elsif ($faction == 5) {
			quest::say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the [" . quest::saylink("gnoll bounty") . "].");
		}
		elsif ($faction >= 6) {
			quest::say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		}
	}
}

# Magic Elixir for the Warriors quest

sub EVENT_ITEM {
	#:: Match 13243 - One Half of Elixir
	if (plugin::check_handin(\%itemcount, 13243 => 1)) {
		quest::say("Mmmm.. Thank you stranger. I feel a lot warmer now. You should now go and find [" . quest::saylink("Megan") . "] O'Reilly.");
		#:: Give a 13244 - One Quarter of Elixir
		quest::summonitem(13244);
		quest::ding();
		#:: Set factions
		quest::faction(213,1);	#:: Merchants of Halas
		quest::faction(294,1);	#:: Shaman of Justice
		quest::faction(311,1);	#:: Steel Warriors
		quest::faction(361,1);	#:: Wolves of the North
		quest::exp(150);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
	#:: From where does this signal originate?
	if ($signal == 1) {
		quest::setrunning(true);
	}
}

# Converted to Perl by SS
