sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Huh? What? Oh, you speak so fast, it took me a moment. I have become used to the slow and stately conversation the Earth holds, where a thought can span aeons. I am the Master of Earth, you know. Though I'm usually too humble to say this, that makes me the most powerful mortal in Norrath, as everyone knows that Earth is the only REAL Element, all else must give way before its power. Water is absorbed by it, Air is ignored by it, and Fire is contained in it. But you know all these things, I am sure. Are you interested in obtaining the Element of Earth? I know Magi'kot was, but we know what happened to him, don't we?");
		}
		elsif ($text=~/element of earth/i) {
			quest::say("Combining the following items can bring the Element of Earth together. Obtain the Staff of Elemental Mastery: Earth, held by the minions of the Prince of Hate, The Dirt of Underfoot found on Slix something or the other, and of course, I shall need the Broom of Trilon and the Shovel of Ponz. Bring all these things, and I shall show you what a true Master of Earth can do, and gift you with the Element of Earth.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 11567 - Staff of Elemental Mastery: Earth, a 28042 - Dirt of Underfoot, a 6360 - Broom of Trilon and a 6361 - Shovel of Ponz
		if (plugin::takeItems(11567 => 1, 28042 => 1, 6360 => 1, 6361 => 1)) {
			quest::say("Take this Element and keep it with you. I wish you the best in your journey, but I must ask you to leave me now. This frantic pace you set makes me nervous.");
			#:: Give a 28032 - Element of Earth
			quest::summonitem(28032);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(5000);
		}
		else {
			quest::say("I do not need these.");  
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
