sub EVENT_SAY {
#:::::::::::::::::::::::::::::: Newbie Armor quests from PoP-era 
#::	if ($text=~/hail/i) {
#::		quest::say("Ah... Welcome friend. I am Master Seta, of the Silent Fist Clan. We know that true strength lies inside your soul. Once you have found and mastered it, your fists will be deadlier than any blade.  I am also currently in charge of training our new recruits. If you are new monk of the Silent Fist I  have some [tests] for you to complete.");
#::	}
#::	elsif ($text=~/tests/i) {
#::		quest::say("I pride myself on passing some of the finest monks in all of the lands through my testing halls. I mainly attribute this fact to my training program that all young monks must undergo. When you are [ready to begin the tests] I will present you with your Silent Fist Assembly Kit and explain to you how the tests work.");
#::	}
#:: 	elsif ($text=~/ready to begin the tests/i) {
#:: 		quest::say("Be mindful of your surroundings $name, it is here in Qeynos and in the adventuring areas surround it that you will find all the necessary items for creating Armor of the Silent Fist. You will place a number of items in this kit to create infused armor materials. These magical armor materials can then be combined in a loom with a magical pattern to create different Armor of the Silent Fist pieces. When you are ready to collect the items for a specific armor piece please tell me what armor piece you want to craft. I can present you with the patterns for Silent Fist [Cap], [Bracers], [Sleeves], [Sandals], [Trousers], [Gloves] and [Robes].");
#::		#:: Give a 17270 - Silent Fist Assembly Kit
#::		quest::summonitem(17270);
#::	}
#::	elsif ($text=~/cap/i) {
#::		quest::say("To create your cap material you will need to combine 2 Woven Spider Silks, 1 Skeleton Tibia, 1 Field Rat Skull and a Cloth Cap in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Cap of the Silent Fist.");
#::		#:: Give a 22583 - Enchanted Cap Pattern
#::		quest::summonitem(22583);
#::	}
#::	elsif ($text=~/bracers/i) {
#::		quest::say("To create your bracer material you will need to combine 1 Woven Spider Silk, 2 Rat Whiskers, 1 Gnoll Jawbone and a Cloth Wristband in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Bracer of the Silent Fist.");
#::		#:: Give a 22584 - Enchanted Bracer Pattern
#::		quest::summonitem(22584);
#::	}
#::	elsif ($text=~/sleeves/i) {
#::		quest::say("To create your sleeves material you will need to combine 2 Woven Spider Silks, 2 Rabid Wolf Hides, and Cloth Sleeves in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Sleeves of the Silent Fist.");
#::		#:: Give a 22586 - Enchanted Sleeves Pattern
#::		quest::summonitem(22586);
#::	}
#::	elsif ($text=~/sandals/i) {
#::		quest::say("To create your boot material you will need to combine 3 Woven Spider Silks, 1 Severed Gnoll Foot, 1 Gnoll Backbone, 1 Bone Chip and Cloth Sandals in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Sandals of the Silent Fist.");
#::		#:: Give a 22585 - Enchanted Sandals Pattern
#::		quest::summonitem(22585);
#::	}
#::	elsif ($text=~/trousers/i) {
#::		quest::say("To create your trouser material you will need to combine 4 Woven Spider Silks, 1 Bandit Sash, 1 Matted Lion Pelt and 1 Giant Spider Egg Sack in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Trousers of the Silent Fist.");
#::		#:: Give a 22587 - Enchanted Trousers Pattern
#::		quest::summonitem(22587);
#::	}
#::	elsif ($text=~/gloves/i) {
#::		quest::say("To create your glove material you will need to combine 3 Woven Spider Silks, 1 Giant Fire Beetle Eye, 1 Chunk of Meat, 1 Ale and 1 Young Puma Skin in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Gloves of the Silent Fist.");
#::		#:: Give a 22588 - Enchanted Gloves Pattern
#::		quest::summonitem(22588);
#::	}
#::	elsif ($text=~/robe/i) {
#::		quest::say("To create your robe material you will need to combine 5 Woven Spider Silks, 1 High Quality Cat Pelt, 1 Shadow Wolf Paw, 1 Severed Gnoll Foot, 1 Matted Lion Pelt and 1 Cloth Shirt in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Robe of the Silent Fist. Please come see me after you have completed your robe. I need to see you for some help with a [problem] our clan has been having.");
#::		#:: Give a 22589 - Enchanted Robe Pattern
#::		quest::summonitem(22589);
#::	}
	if ($text=~/hail/i) {
		#:: Modified version to omit out-of-era quest text
		quest::say("Ah... Welcome friend. I am Master Seta, of the Silent Fist Clan. We know that true strength lies inside your soul. Once you have found and mastered it, your fists will be deadlier than any blade.  I am also currently in charge of training our new recruits. ");
	}
#:: 	elsif ($text=~/problem/i) {
#:: 		quest::say("There have been numerous muggings lately in Qeynos by corrupt guards. These guards are sworn to protect, server and uphold law in the city but all the do is break the law ten fold themselves. These corrupt individuals must be stopped. I have a [Silent Fist clan member] that I feel may be in trouble.");
#::	}
#::	elsif ($text=~/silent fist clan member/i) {
#::		quest::say("Konem Matse is my friend and mentor, he resides in Qeynos Hills providing security for the Sayers there. Lately though I have heard reports of guards demanding he pay them tax or else. This tax they speak of does not exist. I need you to go to the hills and help Konem. Rid the lands of these corrupt guards and bring me their heads as proof. I will also need 1 High Quality Gnoll Fur for a tailoring project I have been working on. Return to me with these items and you will be rewarded for your troubles.");
#::	}
	elsif ($text=~/tomer instogle/i) {
		if ($text=~/rescued|found/i) {
			#:: Data bucket to verify quest has been started appropriately
			$key = $client->CharacterID() . "-tomer-found";
			#:: Match if the key exists
			if (quest::get_data($key)) {
				quest::say("Great work $name, we thought that was the last we'd seen of young Tomer.");
				#:: Delete the data bucket
				$key = $client->CharacterID() . "-tomer-found";
				quest::delete_data($key);
				#:: Data bucket to verify quest has progressed appropriately
				$key = $client->CharacterID() . "-tomer-rescued";
				#:: Set a data bucket
				quest::set_data($key, 1);
				#:: Send a signal "1" to North Qeynos >> Tomer_Instogle (2030) with no delay
				quest::signalwith(2030, 1, 0);
			}
		}
		else {
			quest::say("Oh, Tomer? We haven't heard from him in days, I'm really starting to worry. . . We need to have someone go [find him].");
		}
	}
	elsif ($text=~/find him/i) {
		quest::say("One of our clan brothers has not reported back in over three days. He was sent to help defend the Qeynos Gates, and we haven't heard from him since. We need you to find him, if he is still alive. Tell him that Seta has sent you to find him, and escort him back to our guild. Good luck.");
		#:: Data bucket to verify quest has been started appropriately
		$key = $client->CharacterID() . "-tomer-find";
		#:: Set a data bucket, quest started
		quest::set_data($key, 1);
	}
}

sub EVENT_ITEM {
#::	#:: Match a 27425 - Sironans Head, a 27426 - Yalroens Head, and a 27427 - High Quality Gnoll Fur
#::   	if (plugin::takeItems(27425 => 1, 27426 => 1, 27427 => 1)) {
#::		#:: Give a 27494 - Silent Fist Clansman Hand Wraps
#::		quest::summonitem(27494);
#::		#:: Ding!
#::		quest::ding();
#::		#:: Set factions
#::		quest::faction(309, 10);		#:: + Silent Fist Clan
#::		quest::faction(262, 1);			#:: + Guards of Qeynos
#::		quest::faction(361, 1);			#:: + Ashen Order
#::		#:: Grant a small amount of experience
#::		quest::exp(300);
#::	}
#::	#:: Do all other handins first with plugin, then let it do disciplines
#::	plugin::try_tome_handins(\%itemcount, $class, 'Monk');
	#:: Return unused items
	plugin::returnUnusedItems();
}
