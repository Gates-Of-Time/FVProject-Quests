sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i) {
			quest::say("Are you the one they sent to help our cause? I should have known they would send a green witch doctor to serve Bertoxxulous and myself. Very well, you will have to suffice. I have a [task] you must fulfill if you wish to know the blessing of my god and impress your masters.");
		}
		elsif($text=~/task/i) {
			quest::emote("brandishes a long, wicked-looking bone dagger and there is a horrid, diseased stench as soon as he unsheathes it. He draws another blade, shorter and wider than the first, of blackened bone with a larger than normal hilt, obviously for defense. He says, 'This festering blade is called Woe, and this scorched one is called Envy. They were created on the Plane of Decay by Bertoxxulous' own hands. He has judged me worthy of the protection of such holy relics. However, there is one in these very mountains who seeks to destroy these relics. End this idiot follower of Marr's life and bring me proof.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1675 - Marr's Promise
		if (plugin::takeItems(1675 => 1)) {
			quest::say("Hahahah! Even you were able to do away with that fool. It is only a matter of time before Bertoxxulous, with the help of devout followers like myself, wipes out all who attempt to stop the spread of filth and decay. You have done well, shaman, and your masters will be pleased with what you have done for me and my treasures. Take this and give it to your master. He will reward you.");
			#:: Give a 1669 - Obsidian Pebble
			quest::summonitem(1669);
			#:: Ding!
			quest::ding();
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		} 
	} 
}