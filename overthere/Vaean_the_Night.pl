sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ahh, welcome! More souls to succumb to the inhabitants of the Outlands! My army of undead will grow stronger by the day, but it would be a pity if you perished before doing a [mortal bidding] for me.");
	}
	elsif ($text=~/mortal bidding/i) {
		quest::say("I see it as a win-win situation for me. If you succeed, I'll gain more power from the knowledge you bring back to me. If you fail, you become another addition to my undead minions. Thus, you cannot fail me in returning a scroll of Splurt, Defoliation, Covergence, or Thrall of Bones. In return, I will part with a scroll of mine.");
	}
}

sub EVENT_ITEM {
	#:: Match a 19423 - Spell: Convergence
	if (plugin::takeItems(19423 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19297 - Spell: Minion of Shadows, 19421 - Spell: Sacrifice, 19408 - Spell: Scent of Terris or 19409 - Spell: Shadowbond
		quest::summonitem(quest::ChooseRandom(19297, 19421, 19408, 19409));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 19296 - Spell: Defoliation
	elsif (plugin::takeItems(19296 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19297 - Spell: Minion of Shadows, 19421 - Spell: Sacrifice, 19408 - Spell: Scent of Terris or 19409 - Spell: Shadowbond
		quest::summonitem(quest::ChooseRandom(19297, 19421, 19408, 19409));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 19294 - Spell: Splurt
	elsif (plugin::takeItems(19294 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19297 - Spell: Minion of Shadows, 19421 - Spell: Sacrifice, 19408 - Spell: Scent of Terris or 19409 - Spell: Shadowbond
		quest::summonitem(quest::ChooseRandom(19297, 19421, 19408, 19409));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 19299 - Spell: Thrall of Bones
	elsif (plugin::takeItems(19299 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!"); 
		#:: Choose a random 19297 - Spell: Minion of Shadows, 19421 - Spell: Sacrifice, 19408 - Spell: Scent of Terris or 19409 - Spell: Shadowbond
		quest::summonitem(quest::ChooseRandom(19297, 19421, 19408, 19409));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
