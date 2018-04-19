sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Peace and tranquility be with you. $name.  Are you a [" . quest::saylink("new acolyte of peace") . "] or are you [" . quest::saylink("here to pay homage") . "] to the child of tranquility?");
	}
	if ($text=~/new acolyte of peace/i) {
		quest::say("Then you shall learn the ways of Quellious and learn to do as you are told by higher ranking members. It is time for you to do the lesser duties of a young priest. Which will it be? [" . quest::saylink("Retrieve the Peacekeeper staffs") . "] or [" . quest::saylink("battle the undead") . "]?");
	}
	if ($text=~/Retrieve the Peacekeeper staffs/i) {
		quest::say("Then take this note to the woodworker in Toxxulia Forest. His name is Emil Parsini. He shall have the staff to be returned to the temple.");
		#:: Give item 18833 - A Sealed Letter for Emil Parsini
		quest::summonitem(18833);
	}
	if ($text=~/battle the undead/i) {
		quest::say("Then you shall venture to Toxxulia Forest. There has been an increase in skeleton sightings lately. I do not know their origin, but I believe that your efforts will reduce their numbers! Take this box. Return it to me when you have filled it with the bones of these undead creatures and combined it. May Quellious' light guide you.");
		#:: Give item 17941 - Box for Bones
		quest::summonitem(17941);
	}
	if ($text=~/track down the staff/i) {
		quest::say("'In the mountain keep called High Hold, we have heard there is a person hiring mercenaries for an attempt to obtain a High Guard battle staff. We are missing one of our staffs and believe this person has it. Go to Highpass Hold and find this person. Return the High Guard battle staff to me!");
	}
	if ($text=~/important missions/i) {
		if ($faction <= 4 ) {
			quest::say("We have need of skilled priests. We have learned that a High Guard battle staff has been stolen. We require a priest to [" . quest::saylink("track down the staff") . "].");
		}
		elsif ($faction > 4 ) {
			quest::say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
		}
	}
	if ($text=~/here to pay homage/i) {
		if ($faction <= 4 ) {
			quest::say("Then respect our temple and keep your prayers silent.");
		}
		elsif ($faction > 4 ) {
			quest::say("You have not done much to upset the Peacekeepers of this temple, but we must ask you to prove yourself to us before we may discuss things such as this.");
		}
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13882 -  Box of Bones
	if (plugin::check_handin(\%itemcount, 13882 => 1)) {
		quest::say("This is fabulous work, my friend! You have served your people well. Take this as a gift. I hope it can be of use to you. We need proof of these skeletons' origins. Continue the eradication of the undead and find out who creates them. Once you know, bring their head to me.");
		#:: Give a small amount of xp
		quest::exp(200);
		#:: Ding!
		quest::ding();
		#:: Randomly choose a backpack, belt pouch, hematite, raw-hide armor pieces,rusty weapons, and various spells
		quest::summonitem(quest::ChooseRandom(17005,17002,10018,2144,2145,2146,6011,6016,15203,15207,15201,15208,15209,15014,15205,15210,6012));
		#:: Set faction
		quest::faction(247,10);	 	#:: + Peace Keepers
		quest::faction(145,5); 		#:: + High Council of Erudin
		quest::faction(143,-10); 	#:: - Heretics
		quest::givecash(0,12,3,0);	#:: Give a small amount of cash copper - plat
	}
	#:: Turn in for 13816 Peacekeeper staff
	if (plugin::check_handin(\%itemcount, 13816 => 1)) {
		quest::say("You have done well, neophyte. Let me add the touch of harmony to finish the job.. Here, then. Take these supplies. I am sure you'll need them. Soon you may be able to assist us in [" . quest::saylink("important missions") . "]");
		#:: Give a small amount of xp
		quest::exp(600);
		#:: Ding!
		quest::ding();
		#:: Randomly choose a backpack, belt pouch, hematite, raw-hide armor pieces,rusty weapons
		quest::summonitem(quest::ChooseRandom(17005,17002,10018,2144,2145,2146,6011,6016,6012));
		#:: Set faction
		quest::faction(247,10);	 	#:: + Peace Keepers
		quest::faction(145,5); 		#:: + High Council of Erudin
		quest::faction(143,-10); 	#:: - Heretics
		quest::givecash(12,11,0,0);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
