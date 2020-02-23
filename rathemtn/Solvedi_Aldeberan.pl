sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, forestwalker. Welcome to the Rathe bear preserve of the Unkempt Druids. We strive to protect nature with diligence and punish her [defilers] with prejudice!");
	}
	elsif ($text=~/defilers/i) {
		quest::say("There are many defilers of nature about that warrant eradication. Groi Gutblade is a loathsome troll poacher who lurks in South Karana. Slay him and bring me his Lionhide Backpack. Timbur the Tiny takes pride in crushing the trees in North Karana into pulp under his feet. Make him pay for this affront and bring me his Laceless Sandal as proof of his demise. I will give you my own blade if you succeed.");
	}
}

sub EVENT_ITEM {
	#:: Match a 9352 - Giant Laceless Sandal, and a 17350 - Lionhide Backpack
	if (plugin::takeItems(9352 => 1, 17350 => 1)) {
		quest::say("You are now a respected ally of the Unkempt. Wield this with pride.");
		#:: Give a 5378 - Solvedi Scimitar
		quest::summonitem(5378);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(25000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
