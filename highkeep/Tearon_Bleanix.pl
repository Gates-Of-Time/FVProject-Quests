sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Beware!!..  Beware, the Teir'Dal walk the halls of Highkeep!!");
	}
	if ($text=~/princess lenya thex/i) {
		quest::say("The Princess Lenya Thex is the daughter of His Royal Majesty, King Tearis Thex of Felwithe. She was on her way to Qeynos when we believe she was kidnapped by Carson McCabe, the governor of this vile city. I await the paladin from Felwithe.");
	}
	#:: Match if faction is better than Amiable
	if ($text=~/all is not bright above the clouds/i) {
		if ($faction < 4) {
			quest::say("Taken from this place she has been.  Seek the Highpass hussy.  Ask of her.  Only she knows where.  Find the Princess.  Give her this.  Show your allegiance.  This and her key. Then return the room key to me with the prize from the princess.  Become a hero!!");
			#:: Give item 13108 - Tearons Bracer
			quest::summonitem(13108);
			#:: Ding!
			quest::ding();	
		}
		elsif ($faction > 4 ) {
			quest::say("When you have furthered your service to the Paladins of Tunare, we shall make conversation.");
		}
	}
}

sub EVENT_ITEM {
	#:: Turn in for 12267 & 13109 -  Highkeep Royal Suite & Royal Amulet of Thex
	if (plugin::check_handin(\%itemcount, 12267 => 1, 13109 => 1)) {
		quest::say("Peace..  I can rest now.  You now hold my Silent Watch Shield.  Protect Felwithe..");
		#:: Give item 9312 - Silent Watch Shield
		quest::summonitem(9312);
		#:: Give a small amount of xp
		quest::exp(2000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(5001,10); 		#:: + Anti-Mage
		quest::faction(226,10); 		#:: + Clerics of Tunare
		quest::faction(279,10); 	#:: + King Tearis Thex
		#:: Set Depop Timer
		quest::settimer("depop",240);
	}
	plugin::return_items(\%itemcount);
}
