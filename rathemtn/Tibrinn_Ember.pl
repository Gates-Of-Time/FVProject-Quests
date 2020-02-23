sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am Tibrinn Ember, forest friend and Unkempt Druid. Aid us in our [conflict] against the polluters of nature and I will reward you.");
	}
	elsif ($text=~/conflict/i) {
		quest::say("Grazhak the Berzerker is a powerful orc who roams these mountains. Slay him and bring me his Mithril Plated Girth. The gorge tyrant himself, King Xorbb, has plagued my halfling brothers for ages. Dispatch this beast and bring me his Slime Crystal Staff as proof of your deed. After you have brought me these items I will give you a weapon as reward for your feats.");
	}
}

sub EVENT_ITEM {
	#:: Match a 4310 - Mithril Plated Girth, and a 6335 - Slime Crystal Staff
	if (plugin::takeItems(4310 => 1, 6335 => 1)) {
		quest::say("You have done well. Here is the reward for your deeds.");
		#:: Give a 6364 - Sap Sheen Staff
		quest::summonitem(6364);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(25000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
