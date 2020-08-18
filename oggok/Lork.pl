sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You $name. We hear of you. We need help. You [help Crakneks] or you [help self]?");
	}
	elsif ($text=~/help self/i) {
		quest::say("You help self to leave Oggok before me bash you. We no need cowards.");
	}
	elsif ($text=~/help crakneks/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Ha!! We hear of great adventurer. You?!! Me no think so. You prove self to Crakneks before you help us. Go to Innoth.. Innotu.. Innooth.. Arghh!! You go to outside Oggok. Find fat alligator bit Lork brother in two. Bring brother, Nork, body back. Then me know you strong.");
		}
		else {
			quest::say("You help Crakneks more. Helps Horgus you must. Den we trusts yoo!");
		}
	}
	elsif ($text=~/uglan/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {	
			quest::say("Uglan brave warrior of Oggok. He now in Neriak. Work for dark elves. He NO LIKE dark elves!! He work because we make him. He spy for Crakneks.");
		}
		else {
			quest::say("You help Crakneks more. Helps Horgus you must. Den we trusts yoo!");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13356 - Ogre Arm
	if (plugin::takeItems(13356 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Ahhh!! Boohoohoo. Nork!! That you arm. Me will take care of you now. Thank you for killing gator. You must be strong. Now you help Crakneks. We hear.. ohh, poor Nork, we hear trouble begins. Find ogre warrior [Uglan]. Give him this. It broken. He know where you from. Go. Nork.. Poor Nork.");
			#:: Give a 13357 - Cracked Stein
			quest::summonitem(13357);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(232, 10);		#:: + Craknek Warriors
			quest::faction(228, 1);			#:: + Clurg
			quest::faction(261, -1);		#:: - Green Blood Knights
			#:: Grant a small amount of experience
			quest::exp(50);
		}
		else {
			quest::say("You help Crakneks more. Helps Horgus you must. Den we trusts yoo!");
			#:: Return a 13356 - Ogre Arm
			quest::summonitem(13356);
		}
	}
	#:: Match a 18840 - Sealed Letter
	elsif (plugin::takeItems(18840 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("What this!! So, dark elves think they can bash ogres. Replace with blue orcs. Dumb Zulort friend with dark elf ambassador in Oggok. We kill him. We kill Crushbone dark elf ambassador also. This slow down plan. We need a hero. Me guess you do. You go. Go bring Lork both Crushbone and Oggok dark elf hearts. Then you be hero.");
			#:: Give a 5030 - Bronze Two Handed Sword
			quest::summonitem(5030);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(232, 10);		#:: + Craknek Warriors
			quest::faction(228, 1);			#:: + Clurg
			quest::faction(261, -1);		#:: - Green Blood Knights
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			quest::say("You help Crakneks more. Helps Horgus you must. Den we trusts yoo!");
			#:: Return a 18840 - Sealed Letter
			quest::summonitem(18840);
		}
	}
	#:: Match a 13358 - Black Heart and a 13227 - Black Heart
	elsif (plugin::takeItems(13358 => 1, 13227 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("That show dark elves who strongest. Me hope you kill many blue orcs. You Craknek Hero now. You take this. It mine. Hero reward. You great ogre now. Smash best.");
			#:: Give a random reward:  13359 - Gatorsmash Maul, 13355 - Crude Stein, 2136 - Large Patchwork Boots, 2135 - Large Patchwork Pants, 2132 - Large Patchwork Sleeves, 2128 - Large Patchwork Tunic
			quest::summonitem(quest::ChooseRandom(13359,13355,2136,2130,2135,2132,2128));
 			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(232, 25);		#:: + Craknek Warriors
			quest::faction(228, 3);			#:: + Clurg
			quest::faction(261, -3);		#:: - Green Blood Knights
			#:: Grant a moderate amount of experience
			quest::exp(1000);
		}
		else {
			quest::say("You help Crakneks more. Helps Horgus you must. Den we trusts yoo!");
			#:: Return a 13358 - Black Heart and a 13227 - Black Heart
			quest::summonitem(13358);
			quest::summonitem(13227);
		}
	}
  	#:: Kunark turn in for 20523 - Dismembered Thumb
	#:: if (plugin::takeItems(20523 => 1)) {
	#::	quest::say("Ay danks. Take dis to Uglan.");
		#:: Give a 16547 - Stein
	#::	quest::summonitem(16547);
	#:: }
  	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
