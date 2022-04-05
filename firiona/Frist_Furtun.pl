sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail to thee, adventurer! I have been sent to this new land by the Clerics of Tunare in search of the new arcane magiks said to exist beyond this outpost. I myself once searched the nearby Outlands, but to go any further would lead to my certain death. Lately, the dangers have proven to be too much for adventurers and ones like myself. Have you also ventured to this land in search of these [new magiks?]");
	}
	elsif ($text=~/new magiks/i) {
		quest::say("Ahh, wonderful! The more souls who search for these scrolls, the sooner I'll be able to return home and share this knowledge. The magiks are in the form of scrolls held by the strongest creatures of the Outlands. You will probably have the best luck searching in the darkest depths of the dungeons beyond this outpost. You might want to talk to the residents of this outpost for locations of these dreadful places. If you should happen to [have] any duplicate scrolls], please come speak to me. I might be interested in working out a trade for a scroll you do not yet have.");
	}
	elsif ($text=~/duplicate scrolls/i) {
		quest::say("Great! The scrolls I am interested in are those of Death Pact, Upheaval, Yaulp IV, and Reckoning. If you bring me any one of these scrolls, I'll let you reach into my bag and pull out one of the four very rare scrolls that have come into my possession.");
	}
}

sub EVENT_ITEM(){
	#:: Match a 19203 - Spell: Death Pact
	if (plugin::takeItems(19203 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
	}
	#:: Match a 19205 - Spell: Upheaval
	elsif (plugin::takeItems(19205 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
	}
	#:: Match a 19209 - Spell: Yaulp IV
	elsif (plugin::takeItems(19209 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
	}
	#:: Match a 19212 - Spell: Reckoning
	elsif (plugin::takeItems(19212 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
	}
	#:: Match a 19233 - Spell: Upheaval
	elsif (plugin::takeItems(19233 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");   
		#:: Choose a random 19210 - Spell: Unswerving Hammer, 19224 - Spell: Heroic Bond, 19420 - Spell: Sunskin or 19206 - Spell: Word of Vigor
		quest::summonitem(quest::ChooseRandom(19210, 19224, 19420, 19206));
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
