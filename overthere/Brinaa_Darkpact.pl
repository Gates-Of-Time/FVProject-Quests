sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello, $name. It's nice to see more able bodies around this part of the outland. We came here in search of the magical powers that are supposed to exist in the ruins and dungeons of this area. We need you to bring back evidence of this power in the form of scrolls. I can't offer much coin in payment, but I do have some rare scrolls I already brought back that may interest you, if you wish to [help in the search].");
	}
	elsif ($text=~/help in the search/i) {
		quest::say("Excellent! Here is what we are still seeking. The scrolls of Death Pact. Upheaval. Yaulp IV. and Reckoning. If you return one of these to me. I'll release one of my rare scrolls to you.");
	}
}

sub EVENT_ITEM {  
	#:: Match a 19203 - Spell: Death Pact
	if (plugin::takeItems(19203 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19205 - Spell: Upheaval
	elsif (plugin::takeItems(19205 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19209 - Spell: Yaulp IV
	elsif (plugin::takeItems(19209 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19212 - Spell: Reckoning
	elsif (plugin::takeItems(19212 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19233 - Spell: Upheaval
	elsif (plugin::takeItems(19233 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
