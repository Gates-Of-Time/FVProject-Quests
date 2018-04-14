sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hmmph.");
		}
	if ($text=~/avenge my brother/i) {
		quest::say("My brother was part of a raiding party that adventured into the Caverns of Guk. Somewhere within he was betrayed and left for dead by the dastardly brother of Karg IceBear - Martar. I want you to find me what remains of my brothers body and bring it back to me. I am told that he died within a mine shaft.");
		}
	}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 10528 => 1)) { # Shadowed Ball
		quest::Say("You must be another one from Vilissia. I will tell you what I tell all the others--you must help me [" . quest::saylink("avenge my brother") . "] before I will help you attain Tishan's Kilt.");
		quest::SummonItem(18797); # Tattered Note
		quest::Ding();
		quest::exp(500);
		}
    if (plugin::check_handin(\%itemcount, 10556 => 1)) { # Barbarian Head
		quest::Say("Oh Wulfthan, look what has become of you. I told you that you should not have trusted Martar.  $name, as a final service, I want you to kill Martar IceBear for me. He is known to roam these parts. Bring me the Warthread Kilt that he wears and my two reminder notes, and I will give to you Tishan's Kilt.");
		quest::SummonItem(18798); # Tattered Note
		quest::Ding();
		quest::exp(500);
		}
	if (plugin::check_handin(\%itemcount, 18797 => 1, 18798 => 1, 1347 => 1)) { # Tattered Note, Tattered Note, Warthread Kilt
		quest::Say("Ah, Wulfthan, you are at last avenged. Thank you, $name please take this kilt as a reward for services well done.");
		quest::SummonItem(18798); # Tattered Note
		quest::Ding();
		quest::exp(1500);
		}
		
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 
