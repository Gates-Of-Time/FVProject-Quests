sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13241 => 1)) { # Full Bottle of Elixir
		quest::Say("Mmmm.. I feel much warmer. Thank you. You should now find Bryndin McMill. He could use a swig also. I saw him hanging around two other guards.");
		quest::SummonItem(13242); # 3/4 Full Bottle of Elixir
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
