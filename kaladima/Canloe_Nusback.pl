sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Step forward and speak up, young $name! Kaladim can always use another warrior. Are you [ready to serve Kaladim] or has a yellow streak appeared down your back?");
	}
	elsif ($text=~/ready to serve kaladim/i) {
		quest::say("Then serve you shall. Let your training begin on the battlefields of Faydwer. Seek out and destroy all [Crushbone Orcs]. Return their belts to me. I shall also reward you for every two orc legionnaire shoulder pads returned. A warrior great enough to slay one legionnaire shall surely have no problem with another. Go, and let the cleansing of Faydwer begin.");
	}
	elsif ($text=~/crushbone orcs/i) {
		quest::say("The army of the Crushbone orcs is deadly indeed. They are great military strategists. It was a legion of them that brought down the great [Trondle Ogrebane]. Speak with Furtog Ogrebane about the Crushbones. He has need of warriors such as you.");
	}
	elsif ($text=~/trondle ogrebane/i) {
		quest::say("Trondle Ogrebane is the legendary dwarven warrior who single-handedly exterminated the ogre clan called the [Mudtoes]. He was recently killed in battle. It took an entire legion of Crushbone orcs to bring him down. Furtog is still fuming about that.");
	}
	elsif ($text=~/mudtoes/i) {
		quest::say("The Mudtoes were a small clan of ogres. They lived somewhere in the Butcherblock Mountains. They had an insatiable appetite for dwarves. They were finally destroyed by the hand of Trondle Ogrebane.");
	}
	elsif ($text=~/irontoe/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("The Irontoe Brigade was formed by Drumpy Irontoe. It was once the finest band of warriors in Kaladim. They were the elite branch of the Stormguard. King Kazon sent them on a mission to the lands of the Crushbone orcs. At the Battle of Busted Skull they met their fate.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/bloodforge brigade/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("The Bloodforge Brigade is the elite force of the Stormguard. They took the place of the Irontoe Brigade. They are led by Byzar Bloodforge.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match four 13318 - Crushbone Belt
	if (plugin::takeItems(13318 => 4)) {
		quest::say("Good work, warrior! Now continue with your training. Only on the battlefield can one become a great warrior.");
		#:: Reward a 9009 - Small Buckler, 2113 - Small Tattered Skullcap, 2114 - Small Tattered Mask, 2115 - Small Tattered Gorget
		#:: 2116 - Small Patchwork Tunic, 2117 - Small Tattered Shoulderpads, 2118 - Small Patchwork Cloak, 2119 - Small Tattered Belt
		#:: 2120 - Small Patchwork Sleeves, 2122 - Small Tattered Gloves, 2123 - Small Patchwork Pants, 2124 - Small Patchwork Boots
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312,40);		#:: + Storm Guard
		quest::faction(274,40);		#:: + Kazon Stormhammer
		quest::faction(293,40);		#:: + Miners Guild 249
		quest::faction(290,40);		#:: + Merchants of Kaladim
		quest::faction(232,-120);	#:: - Craknek Warriors
		#:: Grant a moderate amount of experience
		quest::exp(28000);
		#:: Create a hash for storing cash - 200 to 250cp
		my %cash = plugin::RandomCash(200,250);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match three 13318 - Crushbone Belt
	elsif (plugin::takeItems(13318 => 3)) {
		quest::say("Good work, warrior! Now continue with your training. Only on the battlefield can one become a great warrior.");
		#:: Reward a 9009 - Small Buckler, 2113 - Small Tattered Skullcap, 2114 - Small Tattered Mask, 2115 - Small Tattered Gorget
		#:: 2116 - Small Patchwork Tunic, 2117 - Small Tattered Shoulderpads, 2118 - Small Patchwork Cloak, 2119 - Small Tattered Belt
		#:: 2120 - Small Patchwork Sleeves, 2122 - Small Tattered Gloves, 2123 - Small Patchwork Pants, 2124 - Small Patchwork Boots
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312,30);		#:: + Storm Guard
		quest::faction(274,30);		#:: + Kazon Stormhammer
		quest::faction(293,30);		#:: + Miners Guild 249
		quest::faction(290,30);		#:: + Merchants of Kaladim
		quest::faction(232,-90);	#:: - Craknek Warriors
		#:: Grant a moderate amount of experience
		quest::exp(21000);
		#:: Create a hash for storing cash - 140 to 190cp
		my %cash = plugin::RandomCash(140,190);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match two 13318 - Crushbone Belt
	elsif (plugin::takeItems(13318 => 2)) {
		quest::say("Good work, warrior! Now continue with your training. Only on the battlefield can one become a great warrior.");
		#:: Reward a 9009 - Small Buckler, 2113 - Small Tattered Skullcap, 2114 - Small Tattered Mask, 2115 - Small Tattered Gorget
		#:: 2116 - Small Patchwork Tunic, 2117 - Small Tattered Shoulderpads, 2118 - Small Patchwork Cloak, 2119 - Small Tattered Belt
		#:: 2120 - Small Patchwork Sleeves, 2122 - Small Tattered Gloves, 2123 - Small Patchwork Pants, 2124 - Small Patchwork Boots
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312,20);		#:: + Storm Guard
		quest::faction(274,20);		#:: + Kazon Stormhammer
		quest::faction(293,20);		#:: + Miners Guild 249
		quest::faction(290,20);		#:: + Merchants of Kaladim
		quest::faction(232,-60);	#:: - Craknek Warriors
		#:: Grant a moderate amount of experience
		quest::exp(14000);
		#:: Create a hash for storing cash - 100 to 140cp
		my %cash = plugin::RandomCash(100,140);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match one 13318 - Crushbone Belt
	elsif (plugin::takeItems(13318 => 1)) {
		quest::say("Good work, warrior! Now continue with your training. Only on the battlefield can one become a great warrior.");
		#:: Reward a 9009 - Small Buckler, 2113 - Small Tattered Skullcap, 2114 - Small Tattered Mask, 2115 - Small Tattered Gorget
		#:: 2116 - Small Patchwork Tunic, 2117 - Small Tattered Shoulderpads, 2118 - Small Patchwork Cloak, 2119 - Small Tattered Belt
		#:: 2120 - Small Patchwork Sleeves, 2122 - Small Tattered Gloves, 2123 - Small Patchwork Pants, 2124 - Small Patchwork Boots
		quest::summonitem(quest::ChooseRandom(9009,2113,2114,2115,2116,2117,2118,2119,2120,2122,2123,2124));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312,10);		#:: + Storm Guard
		quest::faction(274,10);		#:: + Kazon Stormhammer
		quest::faction(293,10);		#:: + Miners Guild 249
		quest::faction(290,10);		#:: + Merchants of Kaladim
		quest::faction(232,-30);	#:: - Craknek Warriors
		#:: Grant a moderate amount of experience
		quest::exp(7000);
		#:: Create a hash for storing cash - 50 to 90cp
		my %cash = plugin::RandomCash(50,90);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match four 13319 - Crushbone Shoulderpads
	elsif (plugin::takeItems(13319 => 4)) {
		quest::say("Aha!! You have downed a Crushbone legionnaire!! You have shown yourself to be a strong warrior. Take this. This is more becoming of a great warrior such as yourself. Let no creature stand in the way of the Stormguard!");
		#:: Reward two 10017 - Turquoise
		quest::summonitem(10017,2);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312,20);		#:: + Storm Guard
		quest::faction(274,20);		#:: + Kazon Stormhammer
		quest::faction(293,20);		#:: + Miners Guild 249
		quest::faction(290,20);		#:: + Merchants of Kaladim
		quest::faction(232,-60);	#:: - Craknek Warriors
		#:: Grant a moderate amount of experience
		quest::exp(64000);
		#:: Create a hash for storing cash - 700 to 900cp
		my %cash = plugin::RandomCash(700,900);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match two 13319 - Crushbone Shoulderpads
	elsif (plugin::takeItems(13319 => 2)) {
		quest::say("Aha!! You have downed a Crushbone legionnaire!! You have shown yourself to be a strong warrior. Take this. This is more becoming of a great warrior such as yourself. Let no creature stand in the way of the Stormguard!");
		#:: Reward a 10017 - Turquoise
		quest::summonitem(10017);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312,10);		#:: + Storm Guard
		quest::faction(274,10);		#:: + Kazon Stormhammer
		quest::faction(293,10);		#:: + Miners Guild 249
		quest::faction(290,10);		#:: + Merchants of Kaladim
		quest::faction(232,-30);	#:: - Craknek Warriors
		#:: Grant a moderate amount of experience
		quest::exp(32000);
		#:: Create a hash for storing cash - 350 to 450cp
		my %cash = plugin::RandomCash(350,450);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
