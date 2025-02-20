sub EVENT_SAY{
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("What brings you to my home, $name? Do you seek knowledge of Rallos Zek and the great wars to come?");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 18083 - Redblade's Legacy
		if (plugin::takeItems(18083 => 1)) {
			quest::say("So, you know my brother Kargek. He is weak and does not believe the legend that our family was chosen by Rallos Zek to bear the great scabbard. Yet he still holds it. Very well, I shall give you the first test since my 'dear' brother seems to have forgotten it. Travel to the fortress where the children of Rallos were first cursed by the Rathe and bring me the heart of one of the goblins who have made it their new home. Do not return without the heart of your foe and this war totem."); 
			#:: Give a 20680 - Totem of the Freezing War
			quest::summonitem(20680);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(100000);
		}
		#:: Match a 20680 - Totem of the Freezing War and a 10549 - Heart of Frost
		if (plugin::takeItems(20680 => 1, 10549 => 1)) {
			quest::say("Very good, you have wreaked havoc on your foes in the ancient land of the giants. Rallos Zek must have guided your blade. (Tenal's voice is suddenly silenced and you feel as if your body is frozen. From Tenal's lips issues a voice that is not his own.) 'Bring this mortal the scales of the children of Veeshan. The red and green as well as my war totem. I will guide your blade.' Your movement returns as Tenal falls to the ground, gasping for breath.");
			#:: Animation 16 - Fall Down / Death / Chest: Crumble
			quest::doanim(16);
			#:: Give a 20681 - Totem of Fiery War
			quest::summonitem(20681);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(100000);
		}
		#:: Match a 20681 - Totem of Fiery War, a 11622 - Red Dragon Scales and a 11582 - Green Dragon Scales
		if (plugin::takeItems(20681 => 1, 11622 => 1, 11582 => 1)) {
			quest::emote("looks at you oddly as you hand him the scales.");
			quest::say("What are..? 'You have done well, mortal, and you will be rewarded if you are truly brave. Travel to the Plane of Hatred and slay the ancient bard who lives there. Do not return without his hand and this mark or you will never be a true warlord.' Tenal drops to the ground as the last words leave his lips.");
			#:: Animation 16 - Fall Down / Death / Chest: Crumble
			quest::doanim(16);
			#:: Give a 20683 - Mark of the Sword
			quest::summonitem(20683);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(100000);
		}
		#:: Match a 20683 - Mark of the Sword and a 20676 - Hand of the Maestro
		if (plugin::takeItems(20683 => 1, 20676 => 1)) {
			quest::emote("looks horrified as you give him the hand of the Maestro of Rancor and show him the mark of the sword.  The godlike voice returns, 'You have done well to acquire this. One final task must be completed before you hold the red scabbard in your mortal hands.' Tenal reaches out and hands you a note. 'Take this note and a wingblade of the spirocs to Kargek. When he receives them, I will speak to you one last time.'");
			#:: Give a 20684 - Tenal's Note to Kargek
			quest::summonitem(20684);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(100000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}