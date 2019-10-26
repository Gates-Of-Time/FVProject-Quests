sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings,$Name! I am Velan Torresk of the Ashen Order. I am in charge of training the newest members of our clan, and helping them advance their skills and rank. When members perform certain tasks on behalf of the Order, they advance to a higher rank in our clan, and are awarded a special [sash].");
	}
	elsif ($text=~/orcs/i) {
		quest::say("The Deathfist Orcs are a large tribe of Orcs who live out in the desert. They are constantly sending small raiding parties and scouts to attack Freeport and its citizens.");
	}
	elsif ($text=~/sash/i) {
		quest::say("The Sashes of Order are given out by the various trainers of our clan. I give out the [white training sash] and the [yellow Sash of Order], and Reyia is in charge of the orange and red sashes.");
	}
	elsif($text=~/white training sash/i) {
		#:: Match if faction with Ashen Order is better than Amiable
		if ($faction < 4) {
		quest::say("The white training sash of the Ashen Order is awarded to our new members for completing a few simple tasks to prove their devotion to our clan. As you know, Freeport is a very hostile place, under constant attack from [orcs], wild beasts, and even the undead. To help keep this city and its citizens relatively safe, we must help the Militia protect the main gates. Bring me two Deathfist pawn scalps from those vile [Deathfist orcs], a snake fang, and some bone chips from a skeleton. Good luck, $Name, represent us well!");
		}
		else {
			#:: Match if faction with Ashen Order is equal to or worse than Amiable
			if ($faction => 5) {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
			}
			}
		}
		elsif($text=~/yellow sash of order/i) {
		#:: Match if faction with Ashen Order is better than Amiable
		if ($faction < 4) {
		quest::say("To earn the yellow sash, you must prove yourself to be very skilled in the art of fighting. The lands to the west and south of Freeport are filled with dangerous beasts that often prey upon innocent travelers. Help protect our merchant caravans and traveling citizens, while at the same time practicing your defensive skills, and eliminating these deadly creatures from the surrounding landscape. Bring me a giant snake rattle, a Deathfist slashed belt, the chitin of a desert tarantula, and turn in your white training sash, and I shall reward your noble work with our yellow Sash of Order. Good luck, $Name!");
		}
		else {
			#:: Match if faction with Ashen Order is equal to or worse than Amiable
			if ($faction => 5) {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
			}
			}
		}
}


sub EVENT_ITEM {
	#:: Turn in for 13794 Deathfist Pawn Scalp x2, 13067 Snake fang, 13073 Bone Chips
	if (plugin::takeItems(13784 => 2, 13067 => 1, 13073 => 1)) {
		#:: Match if faction with Ashen Order is better than Amiable	
		if ($faction < 4) {
			quest::say("Good work, $Name, you've worked hard and proven yourself a valuable addition to the Ashen Order. Here's your white sash, wear it with pride.");
			#:: Ding!
			quest::ding();
			#:: Give a small amount of xp
			quest::exp(500);
			#:: Give item 10130 - White Training Sash
			quest::summonitem(10130);
			#:: Set faction
			quest::faction(361,2);	 	#:: + Ashen Order
			quest::faction(281,2); 		#:: + Knights of Truth
			quest::faction(309,2); 		#:: + Silent Fist Clan
		}
		else {
			#:: Match if faction with Ashen Order is equal to or worse than Amiable
			if ($faction => 5) {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
			}
			}
	}
	#:: Turn in for 10130 White Training Sash, 13058 Giant Snake Rattle, 13916 Deathfist Slashed Belt, 20901 Desert Tarantual Chitin
	if (plugin::takeItems(10130 => 1, 13058 => 1, 13916 => 1,  20901 => 1)) {
		#:: Match if faction with Ashen Order is better than Amiable	
		if ($faction < 4) {
			quest::say("Good work, $Name, you've worked hard and proven yourself a valuable addition to the Ashen Order. Here's your yellow sash, wear it with pride.");
			#:: Ding!
			quest::ding();
			#:: Give a small amount of xp
			quest::exp(750);
			#:: Give item 10131 - Yellow Sash of Order
			quest::summonitem(10131);
			#:: Set faction
			quest::faction(361,5);	 	#:: + Ashen Order
			quest::faction(281,5); 		#:: + Knights of Truth
			quest::faction(309,5); 		#:: + Silent Fist Clan
		}
		else {
			#:: Match if faction with Ashen Order is equal to or worse than Amiable
			if ($faction => 5) {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
			}
			}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
