sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello.  Let me know if I can get you a drink.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18200 - Note (TomeOfAges1)
	if (plugin::takeItems(18200 => 1)) {
		quest::say("Take this note and be gone with you.");
		#:: Give a 18201 - Note (TomeOfAges2)
		quest::summonitem(18201);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(236, 10);	#:: + Dark Bargainers
		quest::faction(334, 1);		#:: + Dreadguard Outer
		quest::faction(370, 1);		#:: + Dreadguard Inner
		#:: Grant a small amount of experience, based on level
		$client->AddLevelBasedExp(10, 10);
	}
	#:: Match a 13846 - Dark Elf Decapitated Head and a 18201 - Note (TomeOfAges2)
	elsif (plugin::takeItems(13846 => 1, 18201 =>1)) {
		quest::say("Take this book and be gone with you.");
		#:: Give a 18202 - Book of Turmoil
		quest::summonitem(18202);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(236, 10);	#:: + Dark Bargainers
		quest::faction(334, 1);		#:: + Dreadguard Outer
		quest::faction(370, 1);		#:: + Dreadguard Inner
		#:: Grant a small amount of experience, based on level
		$client->AddLevelBasedExp(10, 10);
	}
	#:: Match 1000pp, a 19071 - Torn, Burnt Book, and a 19070 - Torn, Frost-covered Book
	elsif (plugin::takeItemsCoin(0, 0, 0, 1000, 19071 => 1, 19070 => 1)) {
		#:: Missing dialogue
		#:: Give a 18302 - Book of Scale
		quest::summonitem(18302);
		#:: Ding
		quest::ding();
		#:: Missing faction reward
	}
  	#:: Return unused items
	plugin::returnUnusedItems();
}
