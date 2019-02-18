sub EVENT_SAY {
     if ($text=~/hail/i) {
        quest::say("Hello, me friend! I'm the resident healer o' Halas. Please inform me when ye've a need fer me talents to [" . quest::saylink("bind wounds") . "], [" . quest::saylink("cure disease") . "] or [" . quest::saylink("cure poison") . "]. Might I add, if ye're a young shaman o' Halas, ye can also [" . quest::saylink("assist in gathering fungus") . "]?");
     }
	 if ($text=~/bind wounds/i && $faction <= 5) {
	    quest::say("Before I bind yer wounds, ye must pay tribute to the Tribunal in the amount of ten gold coins.");
     }
	 if ($text=~/cure disease/i && $faction <= 5) {
	    quest::say("Two small quantities o' wooly fungus are needed before we can cure yer malady.");
     }
	 if ($text=~/cure poison/i && $faction <= 5) {
	    quest::say("I'll be needing mammoth steaks to feed the unfortunate.  Then we'll drain the poison from yer veins.");
     }
	 if ($text=~/assist in gathering fungus/i && $faction <= 4) {
	    quest::say("As the wooly spiderlings get ready to molt, they'll carry wooly fungus. Oftentimes, one can find wooly fungus growing on their bellies. I use this in me healing practices. I'll reward ye if ye can fill this jar full o' the valuable fungus. Don't forget to combine them before ye return it to me. And have yerself some rations handy, or ye may find yerself snacking on this tasteless food source.");
		quest::summonitem(17946); # "Empty Jar" (identifies as "Jar for Wooly Fungus")
     }
     if ($faction < 5) {
		quest::say("The scales o' the Shamans o' Justice dinnae tip in yer favor. Ye'd best flee ye still have the chance.");
	}
}

sub EVENT_ITEM {
    if (plugin::takeItemsCoin(0,0,10,0, ) && $faction <= 5) { # 10 gold
		quest::Say("The scales have been balanced and the Tribunal has spoken. Yer body shall be saved.");
		quest::Ding();
		$npc->CastSpell(17,$userid); # cast Light Healing
		}
		
	if (plugin::check_handin(\%itemcount, 13967 => 2) && $faction <= 5) { # 2 wooly fungus
		quest::Say("Ah! Now I can cure yer malady.");
		quest::Ding();
		$npc->CastSpell(213,$userid); # cast Cure Disease
		}
		
	if (plugin::check_handin(\%itemcount, 13445 => 1) && $faction <= 5) { # Check for 18761- A tattered note (Guild Summons)
		quest::Say("Aye! I will draw the poison from your veins!");
		quest::Ding();
		$npc->CastSpell(203,$userid); # cast Cure Poison
		}
    if (plugin::check_handin(\%itemcount, 13966 => 1) && $faction <= 4) { # Jar of Fungus
		quest::Say("Aye! Ye've filled the jar. I'll see to it that Holana locks this away. Tis difficult to obtain and we can only spare the talents of our young shamans. Allow me to give ye a reward. Thank ye kindly fer yer service.");
		quest::SummonItem::ChooseRandom(15203, 15270, 15271, 15275, 15036, 15075); # Random Spell  Cure Poison, Drowsy, Fleeting Fury, Frost Rift, Gate, Sicken
        #:: Set Factions
		quest::faction(213,1); 		# Merchants of Halas
		quest::faction(33,-1);		# circle of unseen hands
		quest::faction(294,10);		# Shamen of Justice
		quest::faction(47,-1);		# coalition of tradefolk
		quest::faction(90,-2);		# Ebon Mask
		quest::Ding();
		quest::exp(50);
        #:: Create a hash for storing cash - 400 to 700 cp
        my %cash = plugin::RandomCash(400,700);
        #:: Grant a random cash reward
        quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
	        # Converted to Perl by SS 
