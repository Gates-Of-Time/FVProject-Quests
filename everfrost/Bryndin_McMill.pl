# Magic Elixir for the Warriors quest

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13242 => 1)) { # Three Quarters of Elixir
		quest::Say("Ahhh!! I feel warm all over. Thanks. You should go give Arnis McLish a drink of this elixir. Last time I saw him he was headed toward Blackburrow.");
		quest::SummonItem(13243); # One Half Full Bottle of Elixir
		quest::Ding();
		quest::Faction(213,1); # Merchants of Halas
		quest::Faction(294,1); # Shaman of Justice
		quest::Faction(311,1); # Steel Warriors
		quest::Faction(361,1); # Wolves of the North
		quest::exp(150);
		}

	
		#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS 
