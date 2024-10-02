sub EVENT_SAY {#need correct text for all parts
	if ($text=~/hail/i) {
		quest::say("I do not have time to talk to you, I am looking for something that I [lost]");
	}
	if ($text=~/lost/i) {
		quest::say("Yes, lost.  I am missing my robes if you could bring them to me I would reward you.");
	}
}

sub EVENT_ITEM {
	#:: Match a 1360 - Shining Metallic Robes
	if (plugin::takeItems(1360=> 1)) {
		quest::say("You found it, I am so pleased! Here is your reward");
		#:: Give a 8960 - Shiny Robe of the Underfoot or a 8961 - Shiny Hunk of Metal
		quest::summonitem(quest::ChooseRandom(8960, 8961));
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(5000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
