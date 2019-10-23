sub EVENT_ITEM {
	#:: Match a 18804 - Tattered Note
	if (plugin::takeItems(18804 => 1)) {
		quest::say("Rele.. ase.. me.. from.. this.. tor.. ment.. ARGH! You will die for entering the domain of the Bloodsabers!! Karana.. help.. me?");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("ARGH!!!!!.. Thank.. you..");
}
