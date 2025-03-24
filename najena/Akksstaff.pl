sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("What do you want?! Foolish $race, I am in no mood to treat with beggars. I have half a mind to turn my pet here loose on you! Well, don't keep me waiting, state your business or be off with you!");
		}
		elsif ($text=~/tell me about magi'kot/i) {
			quest::say("Ah, that I can help you with. Magi'kot was a powerful elementalist, able to control the power of the elements which surrounded him. He was not able to fully master the elements when I was learning from him, but soon after my departure I heard rumors that he was going after the Orb of Mastery. At the time, I did not feel he was ready to harness all the elements, but Magi'kot listened to no one. He was in search of power beyond any held by a mortal. Do you wish to hear more?");
		}
		elsif ($text=~/wish to hear more/i) {
			quest::say("Then bring me the torn pages of Mastery, there are four pages that can be found upon the women In this keep, though have a care, Najena's followers guard her treasures carefully, and delight in punishing trespassers.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28027 - Torn Page of Mastery Fire, a 28028 - Torn Page of Mastery Wind, a 28029 - Torn Page of Mastery Earth and a 28030 - Torn Page of Mastery Water
		if (plugin::takeItems(28027 => 1, 28028 => 1, 28029 => 1, 28030 => 1)) {
			quest::say("Very well. Take these words back to that shriveled old gnome, Rykas, if you wish to complete this quest. Now leave me, $name, it sickens me to be this cordial for so long. And my pet needs exercise. Go!");
			#:: Give a 28004 - Words of Mastery
			quest::SummonItem(28004);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::say("I do not need these.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
