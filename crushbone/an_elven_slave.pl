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

sub EVENT_ITEM {
	#:: Create scalar variables for mob race and gender
	my $npcrace = $npc->GetRace();
	my $npcgender = $npc->GetGender();
	#:: Match copper
	if ($copper == 1) {
		if ($npcrace == 5 && $npcgender == 0) {  #:: Male High Elf Slave
			quest::say("Not that!! I need key number 20!!");
		}
		elsif ($npcrace == 8 && $npcgender == 1) {  #:: Female High Elf Slave
			quest::say("What is this!!? Get me key number 17!!");
		}
		elsif ($npcrace == 4 && $npcgender == 0) {  #:: Male Wood Elf Slave
			quest::say("Not that!! I need key number 18!!");
		}
		elsif ($npcrace == 4 && $npcgender == 1) {  #:: Female Wood Elf Slave
			quest::say("Please!! I need a key with a number 19!!");
		}
	}
	#:: Match item 20020 - Shackle Key 20
	if (plugin::check_handin(\%itemcount, 20020 => 1)) {
		if ($npcrace == 5 && $npcgender == 0) {  #:: Male High Elf Slave
			quest::say("Good work!! I shall be on my way.  Farewell my friend!!");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(170,1); 		#:: + Keepers of the Art
			quest::faction(178,1); 		#:: + King Tearis Thex
			quest::givecash(0,3,7,0);	#:: Give a small amount of cash copper - plat
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		elsif ($npcrace == 5 && $npcgender == 1) {
			quest::say("I have no need for this item $name, you can have it back.");
			quest::summonitem(20016);
		}
	}
	#:: Match item 10351 - Brass Earring
	if (plugin::check_handin(\%itemcount, 10351 =>1)) {
		if ($npcrace == 5 && $npcgender == 0) { #:: Male High Elf Slave 
			#:: Summon Item 18901 - Ragged Cloth Note (Csb 1.O.U. Hie 1)
			quest::summonitem(18901);
			quest::say("You killed the taskmaster?!  Absolutely amazing! The orcs will be fighting among themselves for power now and I can disappear in the commotion. Thanks, friend! Take this for your deeds!");
			#:: Give a small amount of xp
			quest::exp(1500);
			#:: Ding!
			quest::ding();
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		if ($npcrace == 4 && $npcgender == 0) {  #:: Male Wood Elf Slave
			#:: Summon Item 18903 - Tattered Cloth Note (Csb 1.O.U. Elf 1)
			quest::summonitem(18903);
			quest::say("You killed the taskmaster?!  Absolutely amazing! The orcs will be fighting among themselves for power now and I can disappear in the commotion. Thanks, friend! Take this for your deeds!");
			#:: Give a small amount of xp
			quest::exp(1500);
			#:: Ding!
			quest::ding();
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		if ($npcrace == 4 && $npcgender == 1) {  #:: Female Wood Elf Slave
			#:: Summon Item 18904 - Faded Wedding Cloth (Csb 1.O.U. Elf 2)
			quest::summonitem(18904);
			quest::say("You killed the taskmaster?!  Absolutely amazing! The orcs will be fighting among themselves for power now and I can disappear in the commotion. Thanks, friend! Take this for your deeds!");
			#:: Give a small amount of xp
			quest::exp(1500);
			#:: Ding!
			quest::ding();
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
	}
	#:: Match item 20021 - Shackle Key 21
	if (plugin::check_handin(\%itemcount, 20021 => 1)) {
		if ($npcrace == 5 && $npcgender == 1) {  #:: Female High Elf Slave
			quest::say("Good work!! I shall be on my way. Farewell my friend!!");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(170,1); 		#:: + Keepers of the Art
			quest::faction(178,1); 		#:: + King Tearis Thex
			quest::givecash(0,3,7,0);	#:: Give a small amount of cash copper - plat
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		elsif ($npcrace == 5 && $npcgender == 0) {
			quest::say("I have no need for this item $name, you can have it back.");
			quest::summonitem(20017);
		}
	#:: Match item 20018 - Shackle Key 18
	if (plugin::check_handin(\%itemcount, 20018 => 1)) {
		if ($npcrace == 4 && $npcgender == 0) {  #:: Male Wood Elf Slave
			quest::say("Good work!! I shall be on my way. Farewell my friend!!");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(99,1); 		#:: + Faydark's Champions
			quest::faction(174,1); 		#:: + Kelethin Merchants
			quest::faction(212,1); 		#:: + Merchants of Felwithe
			quest::givecash(0,3,7,0);	#:: Give a small amount of cash copper - plat
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		elsif ($npcrace == 4 && $npcgender == 1) {
			quest::say("I have no need for this item $name, you can have it back.");
			quest::summonitem(20017);
		}
	#:: Match item 20019 - Shackle Key 19
	if (plugin::check_handin(\%itemcount, 20019 => 1)) {
		if ($npcrace == 4 && $npcgender == 1) {  #:: Female Wood Elf Slave
			quest::say("Good work!! I shall be on my way. Farewell my friend!!");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(99,1); 		#:: + Faydark's Champions
			quest::faction(174,1); 		#:: + Kelethin Merchants
			quest::faction(212,1); 		#:: + Merchants of Felwithe
			quest::givecash(0,3,7,0);	#:: Give a small amount of cash copper - plat
			#:: Set Depop Timer
			quest::settimer("depop",30);
		}
		elsif ($npcrace == 4 && $npcgender == 0) {
			quest::say("I have no need for this item $name, you can have it back.");
			quest::summonitem(20017);
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
