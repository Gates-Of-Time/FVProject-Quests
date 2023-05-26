sub EVENT_SAY {
	$ask_minion_dead = "ask_minion_dead";
	$mage_epic = $name . "-mage_epic";

	#:: Mage Epic 1.5 Quest dialogue from the Omens of War expansion
	if (quest::is_omens_of_war_enabled()) {
		if ((defined quest::get_data($ask_minion_dead)) && ($text=~/hail/i) ) {
			quest::say("How is this possible? I cannot be defeated. Spare my life and I will tell you the truth of Magi'kot's [" . quest::saylink("demise") . "].");
		} elsif ((defined $qglobals{"ask_minion_dead"}) && ($text=~/demise/i) ) {
			quest::say("I am the last Council Member of the Order of the Elemental Shadows. For Centuries, we protected the true secrets behind elemental mastery, but our sect dies here with me. I chose to sit at Magi'kot's side and watch his progress, he showed more promise than anyone since Tvish. When I learned he was to receive the Orb of Mastery, I sabotaged his spell. The flaw was not his, but now people have succeeded where he failed. It doesn't matter, even with the power of the Orb and the knowledge in these tomes, Bantil will never unlock the full power of elemental mastery. You are only helping him to meet the same fate as Magi'Kot.' He then hands you the book and fades into the shadows.");
			#:: Give a 15778 - Sentience of Elements
			quest::summonitem(15778);
		} elsif (($text=~/bantil sent me/i) && quest::get_data($mage_epic) >= "5") {
			quest::say("My, you are persistant aren't you? Well you have found more trouble than you expected, now haven't you? Prepare to witness the true power of a master of the elements!");
			#:: Spawn Akksstaff's Minion at the same spot
			quest::spawn2(44108, 0, 0, $x, $y, $z, $h);
		}
	}

	#:: "ask_minion_dead" will never be defined until Omens of War expansion when Mage Epic 1.5 quest is enabled
	if ( (quest::get_data($ask_minion_dead) eq "") && ($text=~/hail/i)) {
		quest::say("What do you want?! Foolish $race, I am in no mood to treat with beggars. I have half a mind to turn my pet here loose on you! Well, don't keep me waiting, state your business or be off with you!");
	} elsif ($text=~/tell me about magi'kot/i) {
		quest::say("Ah, that I can help you with. Magi'kot was a powerful elementalist, able to control the power of the elements which surrounded him. He was not able to fully master the elements when I was learning from him, but soon after my departure I heard rumors that he was going after the Orb of Mastery. At the time, I did not feel he was ready to harness all the elements, but Magi'kot listened to no one. He was in search of power beyond any held by a mortal. Do you wish to hear more?");
	} elsif ($text=~/wish to hear more/i) {
		quest::say("Then bring me the torn pages of Mastery, there are four pages that can be found upon the women In this keep, though have a care, Najena's followers guard her treasures carefully, and delight in punishing trespassers.");
	}
}

sub EVENT_ITEM {
	#:: Match a 28027 - Torn Page of Mastery Fire, 28028 - Torn Page of Mastery Wind, 28029 - Torn Page of Mastery Earth, and 28030 - Torn Page of Mastery Water
	if (plugin::takeItems(28027 => 1, 28028 => 1, 28029 => 1, 28030 => 1)) {
		quest::say("Very well. Take these words back to that shriveled old gnome, Rykas, if you wish to complete this quest. Now leave me, $name, it sickens me to be this cordial for so long. And my pet needs exercise. Go!");
		#:: Ding!
		quest::ding();
		#:: Give a 28004 - Words of Mastery
		quest::summonitem(28004);
		#:: Despawn and start respawn timer
		quest::depop_withtimer();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}