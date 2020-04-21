sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Cauldron of Hate. If you are a young warrior, you have come to the right place. There are many [duties] to be performed. If you are a veteran of the blade, we welcome your return to service. Perhaps you return with a [Leatherfoot] skullcap?");
	}
	elsif ($text=~/duties/i) {
		quest::say("I am so glad you asked. There is one matter of importance with which you may be able to assist. It seems an Erudite has made camp in Lavastorm. He is powerful and we do not expect you to slay him. Your mission is to cut off his supply line. I hope you will [accept the mission].");
	}
	elsif ($text=~/accept the mission/i) {
		quest::say("Go to the Lavastorm Mountain Range. It is a dangerous place, but the one you seek must leave by the direction you entered. He is a goblin. Apparently the Erudite is employing their strength. The fire goblin runner shall be an easy kill for you. At least, he should be. Return his runner pouch to me.");
	}
	elsif ($text=~/leatherfoot/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Where have you been? The halflings of Rivervale have an elite force of warriors. They are called the Leatherfoot Raiders. They have been infiltrating our glorious city of Neriak for quite some time. They must be exterminated! I must hire strong warriors who wish to [collect the bounty].");
		}
		else {
			quest::say("Go!! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
		}
	}
	elsif ($text=~/collect the bounty/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("So you wish to collect the bounty on Leatherfoot Raiders? Then go into Nektulos and hunt them down. I shall pay a reward for no fewer than four Leatherfoot Raider skullcaps.");
		}
		else {
			quest::say("Go!! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13886 - Goblin Supply Pouch
	if (plugin::takeItems(13886 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Fine work. I trust the denizens of Lavastorm were not unkind. Please take this featherweight pouch as a reward. May it keep you fleet of foot.");
			#:: Give a 17972 - Featherweight Pouch
			quest::summonitem(17972);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(270, 25);		#:: + Indigo Brotherhood
			quest::faction(326, -3);		#:: - Emerald Warriors
			quest::faction(311, -1);		#:: - Steel Warriors
			quest::faction(1522, -50);		#:: - Primordial Malice
			#:: Grant a small amount of experience based on level
			$client->AddLevelBasedExp(5,8);
		}
		else {
			quest::say("Go!! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
			#:: Return a 13886 - Goblin Supply Pouch
			quest::summonitem(13886);
		}
	}
	#:: Match four 13113 - Leatherfoot Raider Skullcap
	elsif (plugin::takeItems(13113 => 4)) {
		quest::say("I had my doubts, but you have proven them false. You are a fine warrior. You must continue to refine your talents. I reward you with the footman's voulge! Welcome into our house of warriors. Let us share skills as we shall share foes.");
		#:: Give a 12257 - Footman's Voulge
		quest::summonitem(12257);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(270, 50);		#:: + Indigo Brotherhood
		quest::faction(326, -7);		#:: - Emerald Warriors
		quest::faction(311, -2);		#:: - Steel Warriors
		quest::faction(1522, -100);		#:: - Primordial Malice
		#:: Grant a small amount of experience based on level
		$client->AddLevelBasedExp(14,3);
		#:: Give four gold pieces
		quest::givecash(0, 0, 4, 0);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
