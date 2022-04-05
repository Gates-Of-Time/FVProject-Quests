sub EVENT_SAY { 
  if($text=~/Hail/i){
    quest::say("Why is it that you have come to this place? If you are coming here to search for [magical scrolls], just get back on that so-called ship you came here on and forget everything you thought you heard.");
  }
  elsif($text=~/magical scrolls/i){
    quest::say("Is your hearing failing you!? Unless you [have something I need]. be gone!");
  }
  elsif($text=~/i have something you need/i){
    quest::say("I must have the scrolls of Gift of Xev. Bristlebane's Bundle. Quiver of Marr. and the Scars of Sigil. If you don't have one of these. leave my sight!  If you do. I think we can work up a fair trade.");
  }
}

sub EVENT_ITEM {
	#:: Match a 19351 - Spell: Bristlebane`s Bundle
	if (plugin::takeItems(19351 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19347 - Spell: Gift of Xev
	elsif (plugin::takeItems(19347 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19354 - Spell: Quiver of Marr
	elsif (plugin::takeItems(19354 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19358 - Spell: Scars of Sigil
	elsif (plugin::takeItems(19358 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
