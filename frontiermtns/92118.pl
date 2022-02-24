sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("seems to have lost all hope. He sadly looks to the ground. His shackles are different than the others you see in this cell. One is definitely steel and not of goblin design. The other is made of an unfamiliar metal.");
	}
	elsif ($text=~/veltar/i) {
		quest::emote("'s soiled face shines with a glint of hope. 'You know my name? Who has [sent] you to find me?'");
	}
	elsif ($text=~/sent/i) {
		quest::say("Then word has gotten to him!! If you be a monk of the third rung I will accept your aid. You must find the [coppernickel key]. It is required to release me from this goblin shackle. I have no reward to offer other than the shackle of steel. Give me both your shackles of the third rung along with the key and I shall reward you the first shackle of the fourth rung.");
	}
	elsif ($text=~/coppernickel key/i) {
		quest::say("The key is split into three parts. Part one is the base and must be combined with the two remainder pieces. One piece is in here and the other was lost. I overheard the goblins chattering and recognized the goblin phrase, 'lair of flying mouths'!! As for the base, I do not know.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12839 - Coppernickel Key, 4194 - Shackle of Copper, 4195 - Shackle of Bronze
	if (plugin::takeItems(12839 => 1, 4194 => 1, 4195 => 1)) {
		quest::emote("hands you a shackle and removes the coppernickel shackle so he may flee. He places your shackles on his wrists and darts into the darkness.");
		#:: Give a 4196 - Shackle of Steel
		quest::summonitem(4196);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(5000);
	}
	#:: Match a 12839 - Coppernickel Key
	elsif (plugin::takeItems(12839 => 1)) {
		quest::say("I made a pact to reward the shackle of steel to one who could deliver the coppernickel key and the shackles of copper and bronze.");
		quest::summonitem(12839);
	}
	#:: Match a 4194 - Shackle of Copper
	elsif (plugin::takeItems(4194 => 1)) {
		quest::say("I made a pact to reward the shackle of steel to one who could deliver the coppernickel key and the shackles of copper and bronze.");
		quest::summonitem(4194);
	}
	#:: Match a 4195 - Shackle of Bronze
	elsif (plugin::takeItems(4195 => 1)) {
		quest::say("I made a pact to reward the shackle of steel to one who could deliver the coppernickel key and the shackles of copper and bronze.");
		quest::summonitem(4195);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
