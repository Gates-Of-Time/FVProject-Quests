sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You are on the grounds of the Brood of Kotiz. If you do not belong, you must leave at once. There shall be no [third rank skullcap] for you.");  
	}
	elsif ($text=~/third rank skullcap/i) {
		quest::say("I offer the third rank apprentice skullcap to those who wear the second. If that is you, then you will do the [bidding of the tower].");
	}
	elsif ($text=~/i will do the bidding of the tower/i) {
		quest::say("Take this glass canopic. Within it you shall place a brain for me. The brain I seek is that of a sarnak crypt raider. Any shall do. The ones we seek should be near the Lake of Ill Omen. When you obtain the brain, you must quickly put it into the glass canopic with [embalming fluid]. When these are combined, the canopic shall seal and if you return it to me with your second rank skullcap, I shall hand you the next and final skullcap."); 
		#:: Give a 17023 - Brood Canopic
		quest::summonitem(17023);
	}
	elsif ($text=~/embalming fluid/i) {
		quest::say("Embalming fluid is created through brewing, but do not drink it!! You can learn about the process of brewing on our grounds."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 12411 - Preserved Sarnak Brain, and a 4261 - Apprentice Skullcap - 2nd Rank
	if (plugin::takeItems(12411 => 1, 4261 => 1)) {
		quest::say("You have done well. Here is your final apprentice skullcap.");
		#:: Give a 4262 - Apprentice Skullcap - 3rd Rank
		quest::summonitem(4262);
		#:: Set factions
		quest::faction(443, 10);		#:: + Brood of Kotiz
		quest::faction(441, 2);			#:: + Legion of Cabilis
    		#:: Grant a small amount of experience
		quest::exp(150);
		#:: Create a hash for storing cash - 5 to 20cp
		my %cash = plugin::RandomCash(5, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12411 - Preserved Sarnak Brain
	elsif (plugin::takeItems(12411 => 1)) {
		quest::say("You shall get no skullcap until I have the preserved raider brain and your second circle apprentice skullcap.");
		#:: Give a 12411 - Preserved Sarnak Brain
		quest::summonitem(12411);
	}
	#:: Match a 4261 - Apprentice Skullcap - 2nd Rank
	elsif (plugin::takeItems(4261 => 1)) {
		quest::say("You shall get no skullcap until I have the preserved raider brain and your second circle apprentice skullcap.");
		#:: Give a 4261 - Apprentice Skullcap - 2nd Rank
		quest::summonitem(4261);
	}
	#:: Match a 14794 - Illegible Note: Boots
	elsif (plugin::takeItems(14794 => 1 )) {
		quest::emote("takes the note and after reading a few lines opens his eyes wide in astonishment. He looks up at you and stares at you a while before he says, 'You spoke to the Brothers? A common soldier such as yourself interested in silly stories to frighten broodlings? Fine, then. You shall know confidence, if you live. If you have the strength to stride into a lair, go before the owner, and kill that thing in its own home, you will acquire a small part of the virtue we as necromancers must master to ply our art. In the Frontier Mountains lives a unit of the troublesome burynai. Invade their home and destroy their leader. Bring me proof and two fire emeralds.'");
	}
	#:: Match a 14810 - Snaorf's Medallion, and two 10033 - Fire Emerald
	elsif (plugin::takeItems(14810 => 1, 10033 => 2 )) {
		quest::say("Ahhh, you have done it!  Did you feel the surge of energy as you achieved your goals regardless of another being's wishes?  That is power, $name!  That is confidence!  Remember that feeling if you wish to live out youf life for much longer.  Here is your reference for the Arcut");
		#:: Give a 14813 - Glosk's Reference: Boots
		quest::summonitem(14813);
		#:: Ding!
		quest::ding();
		#:: No FEC
	}
	#:: Match a 14810 - Snaorf's Medallion
	elsif (plugin::takeItems(14810 => 1)) {
		quest::say("I will not be bothered unless you bring me everything!");
		#:: Give a 14810 - Snaorf's Medallion
		quest::summonitem(14810);
	}
	#:: Match two 10033 - Fire Emerald
	elsif (plugin::takeItems(10033 => 2)) {
		quest::say("I will not be bothered unless you bring me everything!");
		#:: Give two 10033 - Fire Emerald
		quest::summonitem(10033);
		quest::summonitem(10033);
	}
	#:: Match one 10033 - Fire Emerald
	elsif (plugin::takeItems(10033 => 1)) {
		quest::say("I will not be bothered unless you bring me everything!");
		#:: Give two 10033 - Fire Emerald
		quest::summonitem(10033);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
