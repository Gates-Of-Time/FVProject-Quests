sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings!  Allow me to introduce myself.  I am Marshal Ghobber Truppack.  Marshal of the Great Wall Patrol.  Are you [new to the squad]?");
	}
	if ($text=~/new to the squad/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("Great!!! We require more deputies in this squad. We are suffering great losses to the [new threat]. Welcome to the Great Wall Patrol where our motto is, 'United we shall defend.' It will be some time before you can earn your squad ring - first you must prove your strength in battle. Report to the squad leader. He is Deputy Budo. You can find him at the Great Wall of Serilis in the Misty Thicket. Go to him at once and tell him you are reporting for duty.");
		}
		#:: Match if faction is indifferent
		elsif ($faction == 5) {
			quest::say("You are in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("How can you expect to just waltz into Guardian Stronghold and expect to gather information?! Consider yourself lucky I don't command the Guardian of the Vale deputies to show you the sharpness of their blades!");
		}
	}
	if ($text=~/new threat/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("The new threat I refer to is the community of goblins which was found beyond the Great Wall of Serilis. They are called Clan Runnyeye. They have begun to sneak over the wall. The deputies have reported seeing them launch themselves up the wall in a matter of seconds using ornate grappling hooks. We have attempted to obtain one of these devices for further inspection, but we have yet to find one on any of the dead goblins. If you should ever find one, be sure to bring it to me immediately.");
		}
		#:: Match if faction is indifferent
		elsif ($faction == 5) {
			quest::say("You are in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("How can you expect to just waltz into Guardian Stronghold and expect to gather information?! Consider yourself lucky I don't command the Guardian of the Vale deputies to show you the sharpness of their blades!");
		}
	}
	if ($text=~/one with the wall/i) {
		#:: Match if faction is Ally
		if ($faction == 1) {
			quest::say("Yes!! Welcome, Deputy $name! You are now an elite member of the Great Wall Division. Wear this ring with pride. You may take it to Hendi Mrubble of the Clerics of Mischief for healing at any time. Wear it with pride.");
			#:: Ding
			quest::ding();
			#:: Give 13936 - Squad Ring
			quest::summonitem(13936);
			quest::faction(263,-500);  #:: - Guardians of the Vale
		}
		#:: Match if faction is indifferent
		elsif ($faction >= 2) {
			quest::say("You are in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("How can you expect to just waltz into Guardian Stronghold and expect to gather information?! Consider yourself lucky I don't command the Guardian of the Vale deputies to show you the sharpness of their blades!");
		}		
	}
}
