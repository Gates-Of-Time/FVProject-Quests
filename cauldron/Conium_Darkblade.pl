sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You seek Conium Darkblade, do you? Find me you have. Often I am here. To test my [" . quest::saylink("Wasp Poison") . "], yes. Less Aqua Gobs there now are. Ha!! A true rogue am I with no leader or guild. Just the wind and shadows and much treasure to be had.");
	}
	if ($text=~/Wasp Poison/i) {
		quest::say("Giant Wasp Venom made from the Giant Wasp Venom Sacs. An interest in poison we share? Need the insect venom you do. It comes not cheap.  My time is precious, my talent supreme.. 30 Gold is my price and also provide me with three Giant Wasp Venom Sacs.");
	}
	if ($text=~/one who once owned it/i) {
		quest::say("The human who gave me the axe remains nameless. We were separated during the battle. If he ever got out of there with all his gold, I do not know. The only clue I know of is the axe itself. The words 'Top of the World' were once printed on its handle.");
	}
	if ($text=~/go on a little mission/i) {
		quest::say("High in the pass you can find Top of the World. It sits near the highest bridge. It is one of the newest additions to our community. It specializes in imported items for adventuring.");
	}
}

sub EVENT_ITEM {
	#:: Set a scalar variable to convert currency
	my $cash = $copper + $silver * 10 + $gold * 100 + $platinum * 1000;
	#:: Match 13260 - Giant Wasp Venom Sac and 30 gold
	if (($cash >= 3000) && plugin::check_handin(\%itemcount, 13260 => 3)) {
		quest::say("Take the giant wasp venom. Good or evil it is not. That is up to you.");
		#:: Give a 14032 - Regalis Poison
		quest::summonitem(14032);
	}
	#:: Match a 18955 - Sealed Note
	if (plugin::check_handin(\%itemcount, 18955 => 1)) {
		quest::say("So Lon has sworn allegiance to a temple. What a fool, but he is a skilled fool. My word is my bond and if he asks for the gem, then so be it. Unfortunately I traded it for a much-needed axe. It was in the middle of a dungeon and... well, that is a long story. If you want to get the gem, take this axe back to the [" . quest::saylink("one who once owned it") . "].");
		#:: Give a 12366 - Never Stop Chopping
		quest::summonitem(12366);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS
