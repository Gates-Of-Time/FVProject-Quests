sub EVENT_SAY {
	$truespiritFaction = $client->GetModCharacterFactionLevel(404);
	if ($text=~/hail/i && $truespiritFaction >= 43) {
		quest::say("$name! My hero! I am at your service. I have been told to tell you all I know of the Head of the Valiant. Its construction is a mockery to the gods of Light, an abomination above all others. The method of creation of the Head of the Valiant was passed down through my family for centuries. All I require of you is the physical head of a valiant warrior. I have the rest of the materials right here to fashion this item for you.");
	}
}

sub EVENT_ITEM {
	$truespiritFaction = $client->GetModCharacterFactionLevel(404);
	#:: Match a 14375 - Seal of Kastane
	if (($truespiritFaction >= 42) && plugin::takeItems(14375 => 1)) {
		quest::say("At last! I have been waiting for my brother for weeks! We are doomed! Innoruuk will taint our seed into some perverse, twisted, maddened breed. The prophecy has begun to unfold and there are none capable of stopping it. Quickly, return this note to Marl, we must hide! We have failed the master! We must escape the hateful one's wrath!");
		#:: Give a 14376 - Note to Marl
		quest::summonitem(14376);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(404, 1);  		#:: + Truespirit
	}
	#:: Match a 14378 - Head of Glohnor
	elsif (($truespiritFaction >= 58) && plugin::takeItems(14378 => 1)) {
		quest::say("Good travels, dark one! May Innoruuk curse your enemies!");
		#:: Give a 14369 - Head of the Valiant
		quest::summonitem(14369); 
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(404, 7);  		#:: + Truespirit       
	}    
	#:: Return unused items
	plugin::returnUnusedItems();
}
