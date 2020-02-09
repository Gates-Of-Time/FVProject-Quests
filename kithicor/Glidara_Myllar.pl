sub EVENT_ITEM {
	#:: Turn in for 20635- Warning to Glidara
	if (plugin::takeItems(20635 => 1 )) {
		quest::say("So the ghoul boss knows of our inquiries? I fear that villain not! In fact, we must find out how much information he has received. Invade the undead ruins nearby and retrieve his log. Take this ring... it will protect you from his spells. Return my ring with his log book and we will hopefully crack the mystery of Kithicor.");
		#:: Ding!
		quest::ding();
		#:: Give item 20640 - Glidara's Ring
		quest::summonitem(20640);
	}
	#:: Turn in for 20640 - Glidara's Ring and 20637 Ghoul Boss' Log Book
	if (plugin::takeItems(20640 => 1, 20637 => 1)) {
		quest::say("Daring work, $name. I've imprinted my seal on this log so that only Morin may open it. Deliver the log to Morin.");
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Give item 20638 - Sealed Ghoul Boss` Log Book
		quest::summonitem(20638);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
