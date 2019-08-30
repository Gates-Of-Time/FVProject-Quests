sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Temple of Divine Light.  We are the Peacekeepers. followers of Quellious.  If you are a paladin of this temple. you can assist us by showing a desire to [" . quest::saylink("protect the peace") . "].");
	}
	if ($text=~/protect the peace/i) {
		quest::say("It was a fine decision.  We are in need of your services.  It seems there is a disturbance in Toxxulia Forest.  There are poachers from other nations who have sought to cause turbulence among the creatures there.  Will you help us [" . quest::saylink("catch the poachers") . "]  or are you skeptical about this mission?.");
	}
	if ($text=~/catch the poachers/i) {
		quest::say("The infidels are in Toxxulia Forest.  They have begun hunting the kobolds.  We have no love of the kobolds. but cannot allow the lands of Odus to be overrun by outsiders.  The ways of tranquility are balanced with harmony.  We will not allow chaos to take hold of our land.  Go and find these poachers.  Bring me their heads!!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13825 -  Poacher's Head
	if (plugin::check_handin(\%itemcount, 13825 => 1)) {
		quest::say("You have served us well. The harmony of the forest shall be preserved. I have word that theses infidels were all working for one man. Find me evidence pertaining to this man. Surely one of these poachers has something which could aid in finding this man. We must stop him to stop the poachers. Go in peace.");
		#:: Give item 10004 - Copper Band
		quest::summonitem(10004);
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Create a hash for storing cash - 11 to 60cp
		my %cash = plugin::RandomCash(11,60);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(298,20); 	#:: + Peace Keepers
		quest::faction(266,20); 	#:: + High Council of Erudin
		quest::faction(265,-20); 	#:: - Heretics
	}
	#:: Turn in for 13913 -  Barbaria Head (Talym's Head)
	if (plugin::check_handin(\%itemcount, 13913 => 1)) {
		quest::say("It is done! Quellious will look favorably upon our church and we will look favorably upon you. Go in peace");
		#:: Give item 15202 - Spell: Courage
		quest::summonitem(15202);
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Create a hash for storing cash - 100 to 120cp
		my %cash = plugin::RandomCash(100,120);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(298,20); 	#:: + Peace Keepers
		quest::faction(266,20); 	#:: + High Council of Erudin
		quest::faction(265,-20); 	#:: - Heretics
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
