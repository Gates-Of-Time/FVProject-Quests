sub EVENT_SAY { 
  if($text=~/Hail/i) {
    quest::say("Hello, $name. This place is quite a formidable outpost, but it lacks the comforts of home. Once I have finished collecting some of my [missing scrolls], I'll be able to leave this place and all its hidden dangers.");
  }
  elsif($text=~/missing scrolls/i) {
    quest::say("Travelers have been bringing back numerous scrolls from the depths of darkness in the Outlands. They contain arcane knowledge specific to our classes. Only four are left that I seek. Keep a wary out for Theft of Thoughts, Color Slant, Cripple, and Dementia. Return any one of these to me and your reward shall be a scroll that can be found nowhere else."); 
  }
}

sub EVENT_ITEM {
	#:: Match a 19378 - Spell: Color Slant
	if (plugin::takeItems(19378 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19386 - Spell: Boon of the Clear Mind, 19379 - Spell: Clarity II, 19381 - Spell: Recant Magic or 19215 - Spell: Wake of Tranquility
		quest::summonitem(quest::ChooseRandom(19386, 19379, 19381, 19215));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19269 - Spell: Cripple
	elsif (plugin::takeItems(19269 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19386 - Spell: Boon of the Clear Mind, 19379 - Spell: Clarity II, 19381 - Spell: Recant Magic or 19215 - Spell: Wake of Tranquility
		quest::summonitem(quest::ChooseRandom(19386, 19379, 19381, 19215));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19384 - Spell: Dementia or 19374 - Spell: Theft of Thought
	elsif (plugin::takeItems(19384 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19386 - Spell: Boon of the Clear Mind, 19379 - Spell: Clarity II, 19381 - Spell: Recant Magic or 19215 - Spell: Wake of Tranquility
		quest::summonitem(quest::ChooseRandom(19386, 19379, 19381, 19215));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19374 - Spell: Theft of Thought
	elsif (plugin::takeItems(19374 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19386 - Spell: Boon of the Clear Mind, 19379 - Spell: Clarity II, 19381 - Spell: Recant Magic or 19215 - Spell: Wake of Tranquility
		quest::summonitem(quest::ChooseRandom(19386, 19379, 19381, 19215));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
