sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Very good to meet you. $name.  I am the keeper of the [Greaves of Ro].  Please feel free to rest and recuperate here.  We shall see that you are safe from the evils of the Rathe Mountains.");
	}
	elsif ($text=~/greaves of ro/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Go to the countryside of Freeport.  There, you shall seek out any nightfall giants .  They have terrorized the countryside for too long.  They have protection from common weapons.  Rely on magic.  I failed in tracking them down.  You shall succeed and when return any single head to me. you shall be awarded the mold for the greaves."); 
		}
		else {
			quest::say("Leave my presence at once. Your ways of life are not acceptable to one who follows the Truthbringer.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 12313 - Nightfall Giant's Head
	if (plugin::takeItems(12313 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("You have done well.  These giants shall soon be purged from the Commonlands and the inns will be filled once again.  Here is the mold for the Ro Greaves.  For the final component, go and ask Thomas of [Lord Searfire].");
			#:: Give a 12303 - Mold of Ro Greaves
			quest::summonitem(12303);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::say("Leave my presence at once. Your ways of life are not acceptable to one who follows the Truthbringer.");
			#:: Give a 12313 - Nightfall Giant's Head
			quest::summonitem(12313);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
