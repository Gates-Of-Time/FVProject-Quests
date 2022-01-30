sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome. Welcome!!  Time to train.  Time to fight.  Time to serve the Iksar Empire.  You will need weapons.  I have the [footman pike] for all new recruits to earn.");
	}
	elsif ($text=~/footman pike/i) {
		quest::say("A footman pike is what you need.  A footman pike is what you get. but earn it you will.  You must [slay many beasts] to prove to us that you are a true warrior.  Fail and you will be exiled to live with the Forsaken.");
	}
	elsif ($text=~/slay many beasts/i) {
		quest::say("Yes.  You will slay or you will be slain.  Take this footman's pack and fill it you will.  Fill it with [weapons of our foes].  When all are combined. the full footman's pack shall be returned to me along with your militia pike.  Do this and earn your footman pike and then we may have a true mission for you.");
   		quest::summonitem(17027);
	}
	elsif ($text=~/weapons of our foes/i) {
		quest::say("Yes.  You need to know the weapons required.  Fill the pack with javelins.  Froglok bounder and goblin hunter javelins.  Two of each.");
	}
	elsif ($text=~/footman moglok/i) {
		quest::say("My dear friend, Warlord Hikyg of the Swamp Gate has encountered some difficulty with a Trooper Moglok. He requested that I find a brave soldier to take charge of the situation. Are you willing to [assist Warlord Hikyg]?");
	}
	elsif ($text=~/assist warlord kikyg/i) {
		quest::say("Good. Take this note to Footman Moglok of the swamp garrison. He shall instruct you on your mission.");
		#:: Give a 18234 - Sealed Note
		quest::summonitem(18234);
	}
}

sub EVENT_ITEM {
	#:: Match a 12430 - Full Footman's Pack, and a 5131 - Militia's Pike
	if (plugin::takeItems(12430 => 1, 5131 => 1)) {
		quest::say("Kyg knew you could do it. You will make a fine legionnaire some day but, for now, you shall be a footman. Take the footman pike head plans. Forge the footman's pike. Do so, and then you may have an audience with the War Baron on the subject of his [Memory of Sebilis].");
		#:: Give a 12475 - Footman Head Plans
		quest::summonitem(12475);
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(444, 1);		#:: + Swift Tails
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		#:: Grant a moderate amount of experience
		quest::exp(500);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
