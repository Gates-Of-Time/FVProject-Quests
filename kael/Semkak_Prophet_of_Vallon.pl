sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say("You have entered the sacred temple of Vallon Zek. This is the Temple of Strategy. We teach what must be done to be a great leader. Forethought is a powerful tool.");
	}
	elsif ($text =~ /teach/i) {
		quest::say("I cannot teach one of your kind the arts of war at this time. I must teach the other Kromzek and Kromrif that proper strategy will allow us to win the war against the dragons. If you were to serve the temple of Vallon, I might consider giving you a few words of advice about strategy.");
	}
	elsif ($text =~ /serve/i) {
		quest::say("The dragons of Velious are ancient and wise beyond belief. They have ageless strategies to destroy their foes. The Temple of Strategy must gain the knowledge they hold. I have heard rumors of a great dragon burial ground. If this tomb indeed exists, find it and seek out the knowledge of the dragons who are now dead. Bring whatever you believe will teach us their strategies and tactics of the past.");
	}
}

sub EVENT_ITEM {
	#:: Match a 24986 - Golden Tablet of Draconic Strategy
	if (plugin::takeItems(24986 => 1)) {
		quest::say("These scrolls are ancient beyond belief. They describe the maneuvers dragons use to avoid being injured by mighty warriors. This will aid the cause of King Tormax greatly. Take this gift from the temple of Vallon and know that you are wise indeed.");
		#:: Set factions
		quest::faction(448, 10);  #:: + Kromzek
		quest::faction(419, 10);  #:: + Kromrif
		quest::faction(429, 10);  #:: + King Tormax
		quest::faction(430, -30); #:: - Claws of Veeshan
		#:: Grant a huge amount of experience
		quest::exp(1750000);
		#:: Give a random reward:  25036 - Steel Wristband of Strategy, 25040 - Shield of Battle, 25034 - Circlet of Vallon, 25035 - Book of Strategy
		quest::summonitem(quest::ChooseRandom(25036, 25040, 25034, 25035));
	}
	#:: Match a 24985 - Scroll of Scaled Tactics
	elsif (plugin::takeItems(24985 => 1)) {
		quest::say("These scrolls are ancient beyond belief. They describe the maneuvers dragons use to avoid being injured by mighty warriors. This will aid the cause of King Tormax greatly. Take this gift from the temple of Vallon and know that you are wise indeed.");
		#:: Set factions
		quest::faction(448, 10);  #:: + Kromzek
		quest::faction(419, 10);  #:: + Kromrif
		quest::faction(429, 10);  #:: + King Tormax
		quest::faction(430, -30); #:: - Claws of Veeshan
		#:: Grant a huge amount of experience
		quest::exp(1750000);
		#:: Give a random reward:  25036 - Steel Wristband of Strategy, 25040 - Shield of Battle, 25034 - Circlet of Vallon, 25035 - Book of Strategy
		quest::summonitem(quest::ChooseRandom(25036, 25040, 25034, 25035));
	}
	else {
		quest::say("I don't need this.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}