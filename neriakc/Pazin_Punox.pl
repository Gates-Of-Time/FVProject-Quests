sub EVENT_SAY { 
	if ($text=~/hail/i){
		quest::say("Welcome to the Hall of the Ebon Mask. You had best be a rogue or you have no business here. We have nothing to say to outsiders. We deal only with [new recruits] and loyal members.");
	}
	elsif ($text=~/new recruit/i) {
		quest::say("I can see. You have the look of an inexperienced rogue. I do not see why we accept such scrubs. I have good mind to test your skills. Then again, I cannot see you being capable of harming that [honey man].");
	}
	elsif ($text=~/honey man/i) {
		quest::say("Actually it is a woman. In the Misty Thicket within the walls of the halflings, there is a honeycomb collector named Lil Honeybugger. She is the one who creates the special life giving Honey Jum for the halflings. The King has called upon us to contract an assassin to [teach Lil a lesson].");
	}
	elsif ($text=~/teach lil a lesson/i) {
		quest::say("I suppose you shall do. The King has commanded me to pay the you a great reward upon completion. All you need to do is find your way to the Misty Thicket and into the halfling territory beyond the Great Wall. Then seek out Lil Honeybugger. She lives with her brother in a mound far from the other little people. Return her head to me and the King's reward is yours.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13890 - Halfling Head
	if (plugin::takeItems(13890 => 1)) {
		quest::say("Foolish young elf. This was no contract from King Naythox. I wanted Lil Honeybugger killed before she gave birth to my child. Only a naive dark elf would set foot in Halfling territory. Here's your great reward, garbage from other guild exploits.");
		#:: Give a 13411 - Case of Jumjum Juice
		quest::summonitem(13411);
		#:: Give a 13009 - Bandages
		quest::summonitem(13009);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(244, 10);		#:: + Ebon Mask
		quest::faction(329, -2);		#:: - Carson McCabe
		quest::faction(263, -1);		#:: - Guardians of the Vale
		quest::faction(262, -1);		#:: - Guards of Qeynos
		quest::faction(320, -2);		#:: - Wolves of the North
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
  	#:: Return unused items
	plugin::returnUnusedItems();
}
