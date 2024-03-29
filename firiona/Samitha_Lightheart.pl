sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("And a good day to you, too! I have traveled here in the name of the Jaggedpine Treefolk to search out any new and [wonderful powers] that would aid us in preserving the wildlife back home. I have not been able to venture far from this outpost as the inhabitants of the nearby woods pose a great danger. I have decided to wait for more of my Treefolk to arrive before adventuring further.  There's safety in numbers, they always say.");
	}
	elsif ($text=~/wonderful powers/i) {
		quest::say("From what I have gathered from the residents of this outpost and from others like myself, there are a fair number of scrolls to be found in the outlying areas.  These scrolls are said to contain new and powerful magic. I myself have found a few of these scrolls. But the problem is, I don't believe I have a complete collection. If you would care to [help] me, I'd be willing to trade some of the extra ones I have for some of the extras you may run across.");
	}
	elsif ($text=~/help/i) {
		quest::say("I am still looking for four scrolls that I have not been able to locate. They are the scrolls of Circle of Winter, Circle of Summer, Spirit of Scale, and Form of the Howler. If you bring any of these back, I'll give you one of four very rare scrolls in my possession.");
	}
}

sub EVENT_ITEM {  
	#:: Match a 19238 - Spell: Spirit of Scale
	if (plugin::takeItems(19238 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19235 - Spell: Call of Karana, 19233 - Spell: Upheaval, 19236 - Spell: Egress or 19240 - Spell: Glamour of Tunare
		quest::summonitem(quest::ChooseRandom(19235, 19233, 19236, 19240));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19244 - Spell: Form of the Howler
	elsif (plugin::takeItems(19244 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19235 - Spell: Call of Karana, 19233 - Spell: Upheaval, 19236 - Spell: Egress or 19240 - Spell: Glamour of Tunare
		quest::summonitem(quest::ChooseRandom(19235, 19233, 19236, 19240));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19232 - Spell: Circle of Winter
	elsif (plugin::takeItems(19232 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19235 - Spell: Call of Karana, 19233 - Spell: Upheaval, 19236 - Spell: Egress or 19240 - Spell: Glamour of Tunare
		quest::summonitem(quest::ChooseRandom(19235, 19233, 19236, 19240));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19234 - Spell: Circle of Summer
	elsif (plugin::takeItems(19234 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19235 - Spell: Call of Karana, 19233 - Spell: Upheaval, 19236 - Spell: Egress or 19240 - Spell: Glamour of Tunare
		quest::summonitem(quest::ChooseRandom(19235, 19233, 19236, 19240));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
