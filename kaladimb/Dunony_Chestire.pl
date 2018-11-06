sub EVENT_SAY {
	#:: Match text for "hail", case insensitive
	if ($text=~/hail/i) {
		#:: Separate response for melee classes
		if ($class eq 'Monk'  || $class eq 'Rogue' || $class eq 'Warrior') {
			#:: Send a message that only the client can see, in yellow (15) text
			$client->Message(15, "Young fighter, I am the greatest spell scribe Norrath has ever seen--I do not waste my time on brutes like you!");
		}
		#:: Separate response from bards, who are always special
		elsif ($class eq 'Bard') {
			#:: Send a message that only the client can see, in yellow (15) text
			$client->Message(15, "With just one look, I can see that your songbook is lacking, $name.  Would you like me to [" . quest::saylink("scribe") . "] all of the known $class songs for you?");
		}
		#:: Separate response for casting classes
		elsif ($class eq 'Beastlord' || $class eq 'Berserker' || $class eq 'Cleric' || $class eq 'Druid' || $class eq 'Enchanter' || $class eq 'Magician' || $class eq 'Necromancer' || $class eq 'Paladin' || $class eq 'Ranger' || $class eq 'Shadowknight' || $class eq 'Shaman' || $class eq 'Wizard') {
			#:: Send a message that only the client can see, in yellow (15) text
			$client->Message(15, "With just one look, I can see that your spellbook is lacking, $name.  Would you like me to [" . quest::saylink("scribe") . "] all of the known $class spells for you?");
		}
	}
	#:: Match text for "scribe", case insensitive
	elsif ($text=~/scribe/i) {
		if ($class eq 'Bard' || $class eq 'Beastlord' || $class eq 'Berserker' || $class eq 'Cleric' || $class eq 'Druid' || $class eq 'Enchanter' || $class eq 'Magician' || $class eq 'Necromancer' || $class eq 'Paladin' || $class eq 'Ranger' || $class eq 'Shadowknight' || $class eq 'Shaman' || $class eq 'Wizard') {
			#:: Clear out any existing spells
			quest::unscribespells();
			#:: Scribe all spells up to the user's level
			quest::scribespells($ulevel, 0);
			#:: Send a message that only the client can see, in yellow (15) text
			$client->Message(15, "You look like a more powerful caster already! Go out and test your new spells!");
			#:: Play a Ding! sound
			quest::ding();
		}
		elsif ($class eq 'Monk'  || $class eq 'Rogue' || $class eq 'Warrior') {
			$client->Message(15, "Begone, $class--lest I turn you into froglok tad!");
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items since we don't expect any handins
	plugin::returnUnusedItems();
}
