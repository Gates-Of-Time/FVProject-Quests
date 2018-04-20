sub EVENT_SPAWN {
	#:: Set up a 50 unit distance
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Check for 18725 - Tattered Note
	if (plugin::check_hasitem($client, 18725)) {
		$client->Message(15,"Weligon Steelherder tells you, 'Greetings, A young recruit perhaps? I am Weligon Steelherder, Guild Master of the Deepwater Knights. Read the note in your inventory and then hand it to me when you are ready to begin your training. Truth awaits!'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name! This is the Deepwater Temple. Here you shall find the wisdom and courage of Prexus, the Ocean Lord. I am glad to see you have an interest. Forgive me if I cut our conversation short, but I have many [" . quest::saylink("Deepwater tasks") . "] to complete.");
	}
	if ($text=~/Deepwater tasks/i) {
		if ($faction < 4 ) {
			quest::say("We, the Deepwater Knights, know of your vile ways. You had best leave while you can.");
		}
		elsif ($faction = 5 ) {
			quest::say("There is no reason to dislike you, but we of the Deepwater Knights must see more done for our cause before we truly accept you.");
		}
		elsif ($faction > 5 ) {
			quest::say("We here at the Deepwater Temple must tend to the [" . quest::saylink("Peacekeeper battlestaff") . "] and the [" . quest::saylink("Deepwater harpoon") . "] as well as other duties such as [" . quest::saylink("") . "]. There is always something we must do.");
		}
	}
	if ($text=~/Peacekeeper battlestaff/i) {
		quest::say("Every sentinel in Erudin carries a High Guard battlestaff.  The creation of these weapons is the duty of the Deepwater Temple and the Temple of Divine Light.  Our portion of the task is to send young members to [" . quest::saylink("collect the Pearls of Odus") . "].  These are imbedded into the staff and used to store mystical power.");
	}
	if ($text=~/ocean protection/i) {
		quest::say("In the name of Prexus, we are sworn to protect all ocean creatures.  We have heard reports of a shark carrying a deadly malady.  We believe she is pregnant.  If she delivers her young to the ocean, it will endanger all other creatures.  We need to find a young paladin to [" . quest::saylink("hunt the diseased shark") . "].");
	}
	if ($text=~/hunt the diseased shark/i) {
		quest::say("Ah, yes!  Take this bag with you.  When you have collected the remains of the diseased shark and no fewer than three of her young in it, combine them in it and return it to me.  Then, you shall get your reward.");
		#:: Give item 17938 - Empty Shark Bag
		quest::summonitem(17938);
	}
	if ($text=~/collect the Pearls of Odus/i) {
		quest::say("Then venture to the harbor of Erudin. There, you shall dive into the shark-infested water and search for the Pearls of Odus. They lie upon the grounds of our waters.  Fill the bag I have given you, combine it, and return it to me.  Good luck.");
		#:: Give item 17939 - Empty  Bag
		quest::summonitem(17939);
	}
	if ($text=~/Deepwater harpoon/i) {
		quest::say("The Deepwater harpoon's distribution has been restricted by order of the High Council. The last one awarded was to an outsider, the brave and noble paladin, Sentry Xyrin. She hailed from the Temple of Marr.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13876 -  Bag of Shark remains
	if (plugin::check_handin(\%itemcount, 13876 => 1)) {
		quest::say("Very good, my dear young follower of Prexus. You will learn that swimming is a strong skill among the Deepwater Knights. Keep this up and you may wield a Deepwater harpoon soon enough. For now, you shall wear this barnacle breastplate. It is strong enough to aid a young knight in his quest for perfection.");
		#:: Give item 12194 - Barnacle Breastplate
		quest::summonitem(12194);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(79,10);	 	#:: + Deepwater Knights
		quest::faction(145,10); 	#:: + High Council of Erudin
		quest::faction(143,-15); 	#:: - Heretics
	}
	#:: Turn in for 13879 -  Full bag of pearls
	if (plugin::check_handin(\%itemcount, 13879 => 1)) {
		quest::say("Fine work, Deepwater Knight. You have proven yourself an excellent addition to our ranks. These shall be used to create more Peacekeeper staffs. Oh yes, I almost forgot your reward. Here you are. Now, go, and serve Prexus.");
		#:: Randomly choose patchwork armor piece
		quest::summonitem(quest::ChooseRandom(2104, 2106, 2108, 2111, 2112));
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(79,10);	 	#:: + Deepwater Knights
		quest::faction(145,10); 	#:: + High Council of Erudin
		quest::faction(143,-15); 	#:: - Heretics
	}
	#:: Turn in for  Bridge Quest Handin: 3 heads + sealed list
	if (plugin::check_handin(\%itemcount, 18835 => 1, 13838 => 1, 13839 => 1, 13840 => 1)) {
		quest::say("It is done!! I pray to Prexus that the knowledge of the bridge's design has departed from this world with the passing of these intelligent men. A pity they had to die. As for you, the other states may not tolerate your presence any longer, but you have proven that allegiance to Erudin is paramount among all Erudites. I am afraid the [" . quest::saylink("Deepwater harpoon") . "] is no more!! I bestow upon you Deep Six, my personal cutlass!! May you wield it in the name of Erudin.");
		#:: Give item 5377 - Deep Six Cutlass
		quest::summonitem(5377);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(79,10);	 	#:: + Deepwater Knights
		quest::faction(145,10); 	#:: + High Council of Erudin
		quest::faction(143,-15); 	#:: - Heretics
	}
	#:: Turn in for  18725 - tattered note
	if (plugin::check_handin(\%itemcount, 18725 => 1)) {
		quest::say("Greetings and welcome to the Deepwater Knights. Here is your guild tunic. Wear it with pride, and Prexus will keep a watchful eye on you. Go find sister Laoni, she will help you get started with your studies.");
		#:: Give item 13544 - Old Blue Tunic
		quest::summonitem(13544);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(79,100);	 	#:: + Deepwater Knights
		quest::faction(145,15); 	#:: + High Council of Erudin
		quest::faction(143,-15); 	#:: - Heretics
	}
	plugin::return_items(\%itemcount);
}
