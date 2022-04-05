sub EVENT_SAY {
  if($text=~/Hail/i){
    quest::say("It is good to see our numbers growing on this land. Welcome! May your travels be as prosperous as mine have. There are many [new powers] to be gained from this land.");
  }
  elsif($text=~/new powers/i){
    quest::say("The new powers are scrolls that give us access to new and powerful spells. My collection is almost complete. I am simply [lacking] four more and then I will return back to the homeland.");
  }
  elsif($text=~/lacking/i){
    quest::say("I am missing the scroll Atol's Spectral Shackles, Tears of Druzzil, Inferno of Al'kabor, and Pillar of Frost. Should you run into one, bring it to me and I'll perform an exchange for another scroll.");
  }
}

sub EVENT_ITEM {
	#:: Match a 19315 - Spell: Atol`s Spectral Shackles
	if (plugin::takeItems(19315 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329, 19320, 19324, 19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19322 - Spell: Inferno of Al`Kabor
	elsif (plugin::takeItems(19322 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329, 19320, 19324, 19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19318 - Spell: Pillar of Frost
	elsif (plugin::takeItems(19318 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329, 19320, 19324, 19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19319 - Spell: Tears of Druzzil
	elsif (plugin::takeItems(19319 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19329 - Spell: Tears of Solusek, 19320 - Spell: Abscond, 19324 - Spell: Thunderbolt or 19317 - Spell: Tishan`s Discord
		quest::summonitem(quest::ChooseRandom(19329, 19320, 19324, 19317));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
