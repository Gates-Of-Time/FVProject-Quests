sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Please be very quiet. I am tracking a notorious poacher.");
		}
	 if ($text=~/call of flame/i) {
		quest::say("I suppose you would like to call the flame? I must know you are a dedicated forester before I would even consider teaching such a thing.");
	}
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 20876 => 1)) { # Love Letter (Sealed)
		quest::Say("Ah, what do we have here? A letter? Hmm? Scented with a familiar fragrance too. You must have gotten this from Lily. I do wish I had more time to sp} with her, for she is a very sweet girl. If she trusts you to deliver such a letter, I must ask you to do me a favor for me. Please take these eggs. They are a very rare species of albino rattlesnakes which were thought to have been extinct due to poachers who eat them as a delicacy and griffins which prey on them. If these eggs hatch there is hope for the species. I need you to deliver them to my master, Kithicor.");
		quest::SummonItem(20877); # Albino Rattlesnake Eggs
		quest::Ding();
		quest::Faction(99,50); # Faydark's Champions
		quest::Faction(178,50); # King Tearis Thex
		quest::Faction(43,50); # Clerics of Tunare
		quest::Faction(304,50); # Soldiers of Tunare
		quest::Faction(63,-50); # Crushbone Orcs
		quest::exp(1000);
    if (plugin::check_handin(\%itemcount, 20878 => 1)) { # Symbol of Achievement
		quest::Say("This does speak highly of you, my frind, an award from Kithicor does not come easy. But I must see more of your skills before I can consider teaching you. Lily's brother Devin is my current pupil - I need you to gather some equipment for me so I can properly train him. I require the following items of you - a smoldering sash, an adamantine ring and a blade forged of electrum. I also need a favor. Take this credit slip to Aanina Rockfinder. She is a merchant from whom I purchased a gift for Lily; it should be ready by now.");
		quest::SummonItem(20879); # Note of Credit
		quest::Ding();
		quest::exp(1000);
		}
	if (plugin::check_handin(\%itemcount, 20881 => 1, 20880 => 1, 10151 => 1, 5408 => 1)) { # Smoldering Sash of Skarlon, Ganelorn's Gift To Lily, Adamantite Band, Electrum-Bladed Wakizashi
		quest::Say("You have done well. I sense the one I have been hunting in the distance. As your final test, you must track him down and destroy him.");
		quest::spawn2(15183,0,0,-800,-2712,15.6,138); # MobID 15183 Vance Bearstalker, Grid 0, Guildwar 0, X, Y, Z, Heading
		quest::Ding();
		quest::Faction(99,50); # Faydark's Champions
		quest::Faction(178,50); # King Tearis Thex
		quest::Faction(43,50); # Clerics of Tunare
		quest::Faction(304,50); # Soldiers of Tunare
		quest::Faction(63,-50); # Crushbone Orcs
		quest::exp(1000);
		}
	if (plugin::check_handin(\%itemcount, 20882 => 1)) { # A Poacher's Head
		quest::Say("You, $name, are a worthy forester. It brings me great pride to present you this scroll that I have only passed to the finest in all of Norrath. Now you, too, may call the flames.");
		quest::SummonItem(15691); # Call of Flame
		quest::Ding();
		quest::Faction(99,50); # Faydark's Champions
		quest::Faction(178,50); # King Tearis Thex
		quest::Faction(43,50); # Clerics of Tunare
		quest::Faction(304,50); # Soldiers of Tunare
		quest::Faction(63,-50); # Crushbone Orcs
		quest::exp(1000);
	}
}

	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS 
