#:: Create scalar variables for mob race and gender
#my $npcgender = $npc->GetBaseGender();

sub EVENT_SAY {	
	#:: Quest Dialog for Slave Keys, Taskmaster Earring, and Clue to Screaming Mace quest initiation.
	if ($text=~/hail/i) {
		quest::say("Slavedrivers are just lackeys for the [" . quest::saylink("taskmaster") . "]. He is the real orc in charge.");
	}
	if ($text=~/taskmaster/i) {
		quest::say("The taskmaster?? He is that large orc who runs around with that [" . quest::saylink("bronze earring") . "] in his ear.");
	}
	if ($text=~/bronze earring/i) {
		quest::say("Yeah, a bronze earring; He wears it like a newly crowned king. If I ever had that earring I know I would stand a chance at escape.");
	}
}

#sub EVENT_ITEM {
	my $npcrace = $npc->GetRace();
	my $npcgender = $npc->GetGender();
	#:: Match copper
	if ($copper == 1) {
		if ($npcrace == 8 && $npcgender == 0) {
			quest::say("No, no!! I do not need this!! Get me key number 16!!");
		}
		if ($npcrace == 8 && $npcgender == 1) {
			quest::say("What is this!!? Get me key number 17!!");
		}
	}
	#:: Match item 20016 - Shackle Key 16
	if (plugin::check_handin(\%itemcount, 20016 => 1)){
		if ($npcrace == 8 && $npcgender == 0) {
			quest::say("Good work!! I shall be on my way.  Farewell my friend!!");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(169,1); 		#:: + Kazon Stormhammer
			quest::faction(314,1); 		#:: + Storm Guard
			quest::faction(220,1); 		#:: + Miners Guild 628
			quest::faction(215,1); 		#:: + Merchants of Kaladim
			quest::givecash(0,3,7,0);	#:: Give a small amount of cash copper - plat
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
	}
	#:: Match item 10351 - Brass Earring
	if (plugin::check_handin(\%itemcount, 10351 =>1)) {
		if ($npcrace == 8 && $npcgender == 0) {
			#:: Summon Item 18905 - Worn Rune (Csb 1.O.U. Dwf 1)
			quest::summonitem(18905);
			quest::say("You killed the taskmaster?!  Absolutely amazing! The orcs will be fighting among themselves for power now and I can disappear in the commotion. Thanks, friend! Take this for your deeds!");
			#:: Give a small amount of xp
			quest::exp(1500);
			#:: Ding!
			quest::ding();
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		if ($npcrace == 8 && $npcgender == 1) {
			#:: Summon Item 18906 - Small Wood Carving (Csb 1.O.U. Dwf 2)
			quest::summonitem(18906);
			quest::say("You killed the taskmaster?!  Absolutely amazing! The orcs will be fighting among themselves for power now and I can disappear in the commotion. Thanks, friend! Take this for your deeds!");
			#:: Give a small amount of xp
			quest::exp(1500);
			#:: Ding!
			quest::ding();
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
	}
	#:: Match item 20017 - Shackle Key 17
	if (plugin::check_handin(%\itemcount, 20017 => 1)) {
		if ($npcrace == 8 && $npcgender == 1) {
			quest::say("Good work!! I shall be on my way. Farewell my friend!!");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(169,1); 		#:: + Kazon Stormhammer
			quest::faction(314,1); 		#:: + Storm Guard
			quest::faction(220,1); 		#:: + Miners Guild 628
			quest::faction(215,1); 		#:: + Merchants of Kaladim
			quest::givecash(0,3,7,0);	#:: Give a small amount of cash copper - plat
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
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
