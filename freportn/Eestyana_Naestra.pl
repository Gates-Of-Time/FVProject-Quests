sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Hall of Truth!  May the will of Mithaniel Marr guide you through life.  We are glad to see that you have an interest in our ways.  Please speak with any of my priests or knights and they shall help you find your faith.");
	}
	if ($text=~/militia/i) {
		quest::say("The Freeport Militia is nothing more than a ragtag band of mercenaries and convicts. They act as the guards of this troubled city. Be well aware that they are not the honorable guards you may think they are. They are commanded by Sir Lucan D'Lere, the self-proclaimed ruler of Freeport. We of the Hall of Truth shall set this city free from the grip of the Militia one day. It is our duty as Knights of Truth.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18822 - A Note
	if (plugin::takeItems(18822 => 1 )) {
		quest::say("You must be the young member of the Hall of Truth who was sent by Theron. I am glad to see you avoided any interference. Please take this as a reward for your service.");
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Give item 9985 - Spell: Courage*
		quest::summonitem(9985);		
		#:: Set faction
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(86,-15); 	#:: - Dismal Rage
		quest::faction(105,-15); 	#:: - Freeport Militia
		quest::faction(258,10); 	#:: + Priests of Marr
		quest::faction(311,10); 	#:: + Steel Warriors
		#:: Grant a cash reward
		quest::givecash(9,0,0,0); Copper - Plat
	}
	#:: Turn in for 18804 - A Tattered Note
	if (plugin::takeItems(18804 => 1 )) {
		quest::say("Thank you, defender of Karana! We have heard rumors of the followers of Bertoxxulous gaining knowledge of our knight who infiltrated the ranks of the [" . quest::saylink("Militia") . "]. They would have tried to sell the information to the Militia. We will inform our knight immediately. As for you, here is a donation to your journey's expenses. Stay clear of the Freeport Militia. There is no doubt they have learned of your alliance with us.");
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Give random item 6016 Rusty Morning Star or 13296 Prayer Beads
		quest::summonitem(quest::ChooseRandom(6016, 13296));		
		#:: Set faction
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(86,-15); 	#:: - Dismal Rage
		quest::faction(105,-15); 	#:: - Freeport Militia
		quest::faction(258,10); 	#:: + Priests of Marr
		quest::faction(311,10); 	#:: + Steel Warriors
		#:: Grant a cash reward
		quest::givecash(0,0,7,1); Copper - Plat
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
