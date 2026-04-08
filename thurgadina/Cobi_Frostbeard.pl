sub EVENT_SAY {
	#:: Match if faction is Kindly or better
	if ($faction <= 3) {
		if ($text =~ /hail/i) {
			quest::say("Greetings to you. I seek one who calls himself a druid. What do you call yourself, manling?");
		}
		elsif ($text =~ /druid/i) {
			quest::say("Good. I had hoped you were one. As nature's guardian, you fight the never-ending struggle against those who seek to defile it. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings, and boots.");
		}
		elsif ($text =~ /tunic/i) {
			quest::say("If you find an eroded leather tunic and three pieces of black marble bring them to me and I shall attempt to create an enchanted tunic that will serve you well.");
		}
		elsif ($text =~ /cap/i) {
			quest::say("Those who are as wise as we are know that protection of the head is most important. I may be able to forge you something most interesting if you were to bring me three pieces of crushed onyx sapphire and an eroded leather cap.");
		}
		elsif ($text =~ /sleeves/i) {
			quest::say("Three jaundice gems and a set of eroded leather sleeves might be an interesting combination. The powers of the gems may be harvested to imbue the sleeves.");
		}
		elsif ($text =~ /gloves/i) {
			quest::say("Strong protection for one's hands is important. I may be able to craft you a set of powerful leather gloves if you find a set of eroded leather gloves and three crushed lava rubies.");
		}
		elsif ($text =~ /bracers/i) {
			quest::say("Bracers are quite easy to imbue. Simply find three crushed opals and an eroded leather bracer and I will complete the ritual to enchant them.");
		}
		elsif ($text =~ /leggings/i) {
			quest::say("Leggings are a bit trickier to imbue. Three chipped onyx sapphires will allow me to channel the correct energies into a pair of eroded leather leggings. However, those chipped onyx sapphires are somewhat rare. Return to me if you find such things in your journeys.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("Simply bring me a set of three crushed flame emeralds and a pair of eroded leather boots and I will imbue them. I bid you good luck in finding such things.");
		}
	}
	else {
		quest::say("I do not know you well enough to entrust you with such a quest, yet.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Kindly or better
	if ($faction <= 3) {
		#:: Match three 25805 - Black Marble and a 24942 - Eroded Leather Tunic.
		if (plugin::takeItems(25805 => 3, 24942 => 1)) {
			#:: Give a 31050 - Rowyl's Chestguard of Nature.
			quest::summonitem(31050);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		#:: Match three 25815 - Crushed Onyx Sapphire and a 24944 - Eroded Leather Sleeves.
		elsif (plugin::takeItems(25815 => 3, 24944 => 1)) {
			#:: Give a 31051 - Rowyl's Vambraces of Nature.
			quest::summonitem(31051);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		#:: Match three 25827 - Crushed Lava Ruby and a 24943 - Eroded Leather Leggings.
		elsif (plugin::takeItems(25827 => 3, 24943 => 1)) {
			#:: Give a 31054 - Rowyl's Greaves of Nature.
			quest::summonitem(31054);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		#:: Match three 25840 - Crushed Sapphire and a 24948 - Eroded Leather Gloves.
		elsif (plugin::takeItems(25840 => 3, 24948 => 1)) {
			#:: Give a 31053 - Rowyl's Gauntlets of Nature.
			quest::summonitem(31053);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		#:: Match three 25841 - Crushed Amethyst and a 24947 - Eroded Leather Cap.
		elsif (plugin::takeItems(25841 => 3, 24947 => 1)) {
			#:: Give a 31049 - Rowyl's Circlet of Nature.
			quest::summonitem(31049);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		#:: Match three 25836 - Crushed Emerald and a 24946 - Eroded Leather Bracelet.
		elsif (plugin::takeItems(25836 => 3, 24946 => 1)) {
			#:: Give a 31052 - Rowyl's Bracer of Nature.
			quest::summonitem(31052);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		#:: Match three 25838 - Crushed Fire Opal and a 24945 - Eroded Leather Boots.
		elsif (plugin::takeItems(25838 => 3, 24945 => 1)) {
			#:: Give a 31055 - Rowyl's Boots of Nature.
			quest::summonitem(31055);
			#:: Grant a large amount of experience.
			quest::exp(100000);
			#:: Set factions
			quest::faction(406, 20);   #:: + Coldain
			quest::faction(405, 20);   #:: + Dain Frostreaver IV
			quest::faction(419, -60);  #:: - Kromrif
			quest::faction(448, -60);  #:: - Kromzek
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("You have done well.");
		}
		else {
			quest::say("These are not the pieces I need.");
		}
	}
	else {
		quest::say("I do not know you well enough to entrust you with such an item, yet.");
	}

	#:: Return unused items.
	plugin::returnUnusedItems();
}