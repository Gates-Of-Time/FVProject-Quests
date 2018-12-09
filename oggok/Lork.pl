sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You $name. We hear of you. We need help. You [" . quest::saylink("help Crakneks") . "] or you [" . quest::saylink("help self") . "]?");
	}
	if ($text=~/help crakneks/i) {
		quest::say("Ha!! We hear of great adventurer. You?!! Me no think so. You prove self to Crakneks before you help us. Go to Innoth.. Innotu.. Innooth.. Arghh!! You go to outside Oggok. Find fat alligator bit Lork brother in two. Bring brother, Nork, body back. Then me know you strong.");
	}
	if ($text=~/help self/i) {
		quest::say("You help self to leave Oggok before me bash you. We no need cowards.");
	}
	if ($text=~/uglan/i) {
		quest::say("Uglan brave warrior of Oggok. He now in Neriak. Work for dark elves. He NO LIKE dark elves!! He work because we make him. He spy for Crakneks.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13356 - Ogre Arm
	if (plugin::takeItems(13356 => 1)) {
		quest::say("Ahhh!! Boohoohoo. Nork!! That you arm. Me will take care of you now. Thank you for killing gator. You must be strong. Now you help Crakneks. We hear.. ohh, poor Nork, we hear trouble begins. Find ogre warrior [" . quest::saylink("Uglan") . "]. Give him this. It broken. He know where you from. Go. Nork.. Poor Nork.");
		#:: Give a 13357 - Cracked Stein
		quest::summonitem(13357);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(50);
		#:: Set factions
		quest::faction(57,10);		#:: + Craknek Warriors
		quest::faction(46,10);		#:: + Clurg
		quest::faction(128,-10);	#:: - Green Blood Knights
	}
	#:: Match a 18840 - Sealed Letter
	elsif (plugin::takeItems(18840 => 1)) {
		quest::say("What this!! So, dark elves think they can bash ogres. Replace with blue orcs. Dumb Zulort friend with dark elf ambassador in Oggok. We kill him. We kill Crushbone dark elf ambassador also. This slow down plan. We need a hero. Me guess you do. You go. Go bring Lork both Crushbone and Oggok dark elf hearts. Then you be hero.");
		#:: Give a 5030 - Bronze Two Handed Sword
		quest::summonitem(5030);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(57,10);		#:: + Craknek Warriors
		quest::faction(46,10);		#:: + Clurg
		quest::faction(128,-10);	#:: - Green Blood Knights
	}
	#:: Match a 13358 - Black Heart and a 13227 - Black Heart
	elsif (plugin::takeItems(13358 => 1, 13227 => 1)) {
		quest::say("That show dark elves who strongest. Me hope you kill many blue orcs. You Craknek Hero now. You take this. It mine. Hero reward. You great ogre now. Smash best.");
		#:: Give a 13359 - Gatorsmash Maul, 13355 - Crude Stein, 2136 - Large Patchwork Boots, 2135 - Large Patchwork Pants, 2132 - Large Patchwork Sleeves, 2128 - Large Patchwork Tunic
		quest::summonitem(quest::ChooseRandom(13359,13355,2136,2130,2135,2132,2128));
 		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(57,10);		#:: + Craknek Warriors
		quest::faction(46,10);		#:: + Clurg
		quest::faction(128,-10);	#:: - Green Blood Knights   
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
