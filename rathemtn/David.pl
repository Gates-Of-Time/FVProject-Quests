sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("I, the keeper of the [Bracers of Ro],  welcome you.  Come and rest within our camp.  You have nothing to fear while such righteous might is gathered.");
	}
	elsif ($text=~/bracers of ro/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("When you can swim the waters of Rathe and return two goblin nets from the elusive goblin net masters. then you will be rewarded the bracer mold.");
		} 
		else {
			quest::say("We, the Deepwater Knights, know of your vile ways. You had best leave while you can."); 
		}
	}
}

sub EVENT_ITEM {
	#:: Match two 12311 - Deepwater Goblin Net
	if (plugin::takeItems(12311 => 2)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("You have done well. Take the mold for the bracer.  Go forth to speak with Thomas of [Lord Searfire].  Then all components shall be known.");
			#:: Give a 12301 - Mold of Ro Bracer
			quest::summonitem(12301);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(242, 20);		#:: + Deepwater Knights
			quest::faction(266, 3);			#:: + High Council of Erudine
			quest::faction(265, -3);		#:: - Heretics
		}
		else {
			quest::say("We, the Deepwater Knights, know of your vile ways. You had best leave while you can.");
			#:: Return two 12311 - Deepwater Goblin Net
			quest::summonitem(12311);
			quest::summonitem(12311);
		}
	}
	#:: Match a 12311 - Deepwater Goblin Net
	elsif (plugin::takeItems(12311 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Two Deepwater goblin nets are required.");
			#:: Return a 12311 - Deepwater Goblin Net
			quest::summonitem(12311);
		}
		else {
			quest::say("We, the Deepwater Knights, know of your vile ways. You had best leave while you can.");
			#:: Return a 12311 - Deepwater Goblin Net
			quest::summonitem(12311);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
