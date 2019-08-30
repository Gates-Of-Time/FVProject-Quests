sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Match a 18787 - Tattered Note
	if (plugin::check_hasitem($client, 18787)) {
		$client->Message(15,"You stand in a large room which appears to be somewhat important. Next to you is a huge Ogre, with an evil grin. 'You come for training? You join us or me will smash you! I am Guntrik. I train you! Read note in inventory and hand to me when ready to start!'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Mmmph!!  Who you?  Oh. you $name.  You supposed to be promising Craknek.  Me need you.  There bad things in swamp.  You want [" . quest::saylink("help Crakneks") . "] or you [" . quest::saylink("want Guntrik bash your face") . "]!!?");
	}
	if ($text=~/help crakneks/i) {
		quest::say("Go to swamps. Find noble hunters of humans and elves. All have house crests. Return to me and I give things. If you find special item says where hunters sleep, give to me. If meat founded then give to Clurg's cook. She make fine stew and give coins for meat.");
	}
	if ($text=~/want guntrik bash your face|want guntrik bash my face/i) {
		quest::say("OK!! Me bash!!  You hurt!!");
		#:: Attack the player who triggered the event
		quest::attack();
	}
	if ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [" . quest::saylink("second book") . "], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	if ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Match a 18787 - Tattered Note
	if (plugin::takeItems(18787 => 1)) {
		quest::say("Ahh..  good..  good..  here. take..  Now you Craknek! You bash good. Bash lizards. Bash froggies. Bash mushrooms. Remember. you no help Greenbloods. Crakneks stronger than Greenbloods. When you [want to help crakneks] you tell Guntrik. You return to me when you stronger, I teach you many things I know, including how to start working in the various [" . quest::saylink("trades") . "].");
		#:: Give a 13525 - Mud Stained Skin Tunic*
		quest::summonitem(13525);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(232, 100);	#:: + Craknek Warrior
		quest::faction(228, 15);		#:: + Clurg
		quest::faction(261, -15);	#:: - Green Blood Knights
	}
	#:: Match a 13361 - Noble's Crest
	elsif (plugin::takeItems(13361 => 1)) {
		quest::say("One less trouble. Hunhuh!! You do good work. Keep up. Remember to bring any special things to Guntrik. Here junk for good work. Go away now.");
		#:: Give a random reward: 5032 - Bronze Axe, 5029 - Bronze Bastard Sword, 5033 - Bronze Broad Sword, 5031 - Bronze Halberd, 13355 - Crude Stein
		quest::summonitem(quest::ChooseRandom(5032, 5029, 5033, 5031, 13355));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(232, 15);		#:: + Craknek Warrior
		quest::faction(228, 2);		#:: + Clurg
		quest::faction(261, -2);	#:: - Green Blood Knights
	} 
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
