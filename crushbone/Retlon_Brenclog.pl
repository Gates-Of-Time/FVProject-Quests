sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Oh my word!! A rescuer!! Hurry! [" . quest::saylink("Get me out") . "] of these chains!! Go find the orc who has the keys!");
	}
	if ($text=~/Get me out/i) {
		quest::say("I am from Ak'Anon! I must return a [" . quest::saylink("spellbook") . "] to the Eldritch Collective!");
	}
	if ($text=~/spellbook/i) {
		quest::say("What?! I am stuck here and you are worried about a spellbook?! Forget that! Just get the keys to my shackles from one of the orcs! HURRY!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 20015 -  Shackle Key 15
	if (plugin::check_handin(\%itemcount, 20015 => 1)) {
		quest::say("Good work!! I shall be on my way. Farewell my friend!!");
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(91,1); 		#:: + Eldritch Collective
		quest::faction(176,1); 		#:: + King Ak'Anon
		quest::faction(115,1); 		#:: + Gem Choppers
		quest::faction(322,-2); 	#:: - The Dead
		#:: Give a small amount of cash copper - plat
		quest::givecash(0,3,7,0);	
		#:: Set Depop Timer
		quest::settimer("depop",240);
	}
	#:: Turn in for 18887 -  Sealed Letter (Note to Retlon Brenclog)
	if (plugin::check_handin(\%itemcount, 18887 => 1)) {
		quest::say("Ah! A letter from my brother! Mmm... no... no I don't have Tergon's spellbook. The orc's prophet took it and then they locked me in chains! Now why don't you go do something useful and get me key number 15!!");
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(91,1); 		#:: + Eldritch Collective
		quest::faction(176,1); 		#:: + King Ak'Anon
		quest::faction(115,1); 		#:: + Gem Choppers
		quest::faction(322,-2); 	#:: - The Dead
		#:: Give a small amount of cash copper - plat
		quest::givecash(0,3,7,0);	
	}
	plugin::return_items(\%itemcount);
	quest::say("No, no!! I do not need this!! Get me key number 15!!");
}

sub EVENT_TIMER {
	#:: Catch the "depop" timer
	if ($timer eq "depop") {
		#:: Stop the timer "depop"
		quest::stoptimer("depop");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}
