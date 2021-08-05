sub EVENT_SAY {   
	if ($text=~/hail/i) {
		quest::say("Hail to yourself fool. Leave me be. I have [matters of importance] to ponder.");
	}
	elsif ($text=~/matters of importance/i) {
		quest::say("If you are so greatly interested in my affairs then so be it. I have lost my skeleten servant. He now wanders the yard, taking his pain out on the new apprentices of our guild. I cannot return to my guild without ridding the yard of that menace for my mistake will cost me dearly if it is brought to the attention of my masters. Hrm. Perhaps you could destroy my pet for me and bring me proof of his removal. If you do I may even grace you with a [reward].");
	}
	elsif ($text=~/reward/i) {
		quest::say("Speak not of reward when you have not even finished this simple task! Now leave me be.");
	}
}

sub EVENT_ITEM {
	#:: Match a 7107 - Rotting Femur
	if (plugin::takeItems(7107 => 1)) {
		quest::say("Ah! You found him and obviously removed his presence from the yard. You have my thanks, small as it is for such a menial task. Here. Keep this worthless bit of bone for your labors.");
		#:: Give a 7106 - Noclin's Femur
		quest::summonitem(7106); 
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(265, 1);			# + Heretics
		quest::faction(254, -1);		# - Gate Callers
		quest::faction(242, -1);		# - Deepwater Knights
		quest::faction(231, -1);		# - Craftkeepers
		quest::faction(233, -1);		# - Crimson Hands
		#:: Grant a very small amount of experience
		quest::exp(5);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
