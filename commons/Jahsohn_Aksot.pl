sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Greetings, $name.");
		}
		elsif ($text=~/rykas gave it to me/i) {
			quest::say("I have not heard of anyone speaking that name out loud in years. Rykas once shared a tale with me, though I have lived with fear in my mind ever since. He told me afterwards that I did not have the balance I thought I had. Have you come for the Words of Magi'kot?"); 
		}
		elsif ($text=~/words/i) {
			quest::say("The Words of Magi'kot can only be shared with those elementalists whose minds are of balance. The Words were separated into three pieces by a high council of Magi who feared that the story would bring an end to elementalists throughout Norrath. If you feel you wish to read from the sacred Power of the Orb then an elementalist of such power should easily accomplish this task.");
		}
		elsif ($text=~/what task/i) {
			quest::say("Bring me the torn pages of Magi'kot. The first section can be found in the depths of a tainted forest, warded by an angry lupine. It is also rumored that one section is found in the haunted estate of a murderer, on a many armed creature. The last may be found in the belly of an amphibian who thirsts for blood.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28035 - Token of Mastery
		if (plugin::takeItems(28035 => 1)) {
			quest::say("What is this? I cannot believe you found it! Where did you get this?");
			#:: Ding!
			quest::ding();
			#:: Grant a tiny amount of experience
			quest::exp(50);
		}
		#:: Match a 28000 - Torn Page of Magi`kot pg. 1, a 28001 - Torn Page of Magi`kot pg. 2 and a 28002 - Torn Page of Magi`kot pg. 3
		elsif (plugin::takeItems(28000 => 1, 28001 => 1, 28002 => 1)) {
			quest::say("Rykas may have been right about you, $name. Now, go find Walnan. Walnan was apprenticed to a very powerful Mage. After her apprenticeship was complete, she wished to begin teaching other beings of Norrath. Even those who knew nothing of the art! I do not believe she was successful, though. Seek her out to further your tale. Good luck in your journeys, $name!");
			#:: Give a 28003 - Words of Magi`kot
			quest::summonitem(28003);
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
