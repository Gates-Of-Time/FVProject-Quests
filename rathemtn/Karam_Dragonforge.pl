sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome, $name. I have a number of platemail items, if you are interested. I am also a master [smith] of exotic materials such as dragon scales.");
	}
	elsif ($text=~/smith/i) {
		quest::say("Dragon scales make terrific armor. I can make a [white dragonscale cloak] and [red dragonscale armor]. I have not seen any other colored dragon variants around. But if you see any, be sure to let me know. I would be interested in what can be made from their scales.");
	}
	elsif ($text=~/white dragonscale cloak/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Hrmmm. A white dragonscale cloak eh? Hrmmm. Well, I will make you a deal. You can save me some footwork and I will craft your cloak. I want to propose to my [fiancee] but I have neither a [wedding ring] nor a [present] for her. So, return with a white dragon hide, a wedding ring, and a present for my fiancee, and I will fashion your cloak for you.");
		}
	}
	elsif ($text=~/fiancee/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("My fiancee...AHHHH.... The love of my life. My purpose for existing. She is a real woman. Long, golden blonde hair with a similarly colored full beard. A stout broad she is, kind and warm at heart. She knows every nook of my essence. But do not let that fool you. She is as strong as many dwarven men. Between you and me, she has even beaten me once or twice arm-wrestling over who gets the last ale and who has to go to the market.");
		}
	}
	elsif ($text=~/wedding ring/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Only the best will do. I will not propose to her with anything less than a platinum and diamond wedding ring.");
		}
	}
	elsif ($text=~/present/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Well, she is quite fond of jewelry. And a black sapphire platinum necklace would complement her eyes and beard so exquisitely.");
		}
	}
	elsif ($text=~/red dragonscale armor/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("So you have a red dragon scale, eh? Well, I am wanting very much to return to my fiancee and propose to her. If you could aid me in quickly returning to her with a bit of spare change, we could have a deal. Heck, for the armor, a vial of swirling smoke and 1000 platinum coins is a bargain!");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 14707 - Platinum Diamond Wedding Ring, a 14703 - Black Sapphire Platinum Necklace, and a 9240 - White Dragon Hide
	if (plugin::takeItems(14707 => 1, 14703 => 1, 9240 => 1)) {
  		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("My fiancee will be so excited! An exquisite ring for the wedding and a gorgeous necklace as my wedding gift to her. Well, as promised, here is your white dragonscale cloak.");
			#:: Give a 11603 - White Dragonscale Cloak
			quest::summonitem(11603);
			#:: Ding!
			quest::ding();
		}
		else {
			#:: Return a 14707 - Platinum Diamond Wedding Ring, a 14703 - Black Sapphire Platinum Necklace, and a 9240 - White Dragon Hide
  			quest::summonitem(14707);
			quest::summonitem(14703);
			quest::summonitem(9240);
		}
	}
	#:: Match a 11622 - Red Dragon Scales, a 14402 - Vial of Swirling Smoke, and 1000pp
	elsif (plugin::takeItemsCoin(0,0,0,1000, 11622 => 1, 14402 => 1)) {
	  	#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Wonderful! Now I can get back to my fiance instantly! Isn't Love grand? As for your Red Dragonscale Armor, it is all done. Farewell!");
			#:: Give a 11623 - Red Dragonscale Armor
			quest::summonitem(11623);
			#:: Ding!
			quest::ding();
		}
		else {
			#:: Return a 11622 - Red Dragon Scales, a 14402 - Vial of Swirling Smoke, and coin
			quest::summonitem(11622);
			quest::summonitem(14402);
			quest::givecash($copper, $silver, $gold, $platinum);
		}
	}
 	#:: Return unused items
	plugin::returnUnusedItems();
}
