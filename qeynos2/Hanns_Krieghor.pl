sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Check for 18708 - Napkin From Crow's
	if (plugin::check_hasitem($client, 18708)) {
		$client->Message(15,"As your eyes adjust to the dark interior of the room, a sly looking man turns towards you. 'Shh! Not too loudly. I am Hanns if you are here to start your training, read the note in your inventory and hand it to me.'");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /qeynos2/Zannsin_Resdinet.pl
	if ($signal == 1) {
		quest::say("Yes, I just got some new information from Prak this evening. He says they found out the spy is working for some bandit in the Karanas named Rujahn Tahslek. You used to work out there, do you recognize the name?");
		#:: Send a signal "2" to North Qeynos >> Zannsin_Resdinet (2085) with no delay
		quest::signalwith(2085, 2, 0);
	}
	#:: Match a signal "2" from /qeynos2/Zannsin_Resdinet.pl
	elsif ($signal == 2) {
		quest::say("Hmmff.. Anyway, send someone to Prak. I want this job done quickly. Let's show these pathetic bandits that they've been nosing around in the wrong places.");
		#:: Send a signal "3" to North Qeynos >> Zannsin_Resdinet (2085) with no delay
		quest::signalwith(2085, 3, 0);
	}
	#:: Match a signal "3" from /qeynos2/Renux_Herkanor.pl
	elsif ($signal == 3) {
		quest::say("Lomarc is already back. He sent word that the guards are on to him, so he's laying low for a bit. He also said the cost for delivery just went up, because he had to pay off the owner of the Mermaid's Lure.");
		#:: Send a signal "1" to North Qeynos >> Renux_Herkanor (2033) with no delay
		quest::signalwith(2033, 1, 0);
	}
	#:: Match a signal "4" from /qeynos2/Renux_Herkanor.pl
	elsif ($signal == 4) {
		quest::say("Finally, the rat comes out of his hole! Send some men, no no, go yourself, and track him down. Then kill him. I don't care who sees you, or who gets in your way. Finish the job. And bring me whatever you find on his carcass. I'm sure he took some valuables from us when he escaped. And don't worry about Malka, she will keep until you finish Stanos, then she is yours. Shame to waste such talent, but you don't steal from the Circle and live.");
		#:: Send a signal "2" to North Qeynos >> Renux_Herkanor (2033) with no delay
		quest::signalwith(2033, 2, 0);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("My name is Hanns..  Do as I say. and we shall get along just fine.");
	}
	elsif ($text=~/carson has a mole in the highpass/i) {
		quest::say("Arrgg, that Carson can't control anything. Sometimes he's practically useless. Go tell Zannsin that [I want him to send some of his men to Prak in Highpass], to help Carson get back on track.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18708 - Napkin From Crow's
	if (plugin::takeItems(18708 => 1)) {
		quest::say("Lucky thing you weren't followed. or you'd be breathing through holes in your back right now. Go find Knargon, maybe you can help run the next [shipment]. Remember, we keep our business quiet, so watch yourself, sewer crawler.");
		#:: Give a 13501 - Second Hand Tunic*
		quest::summonitem(13501);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, 100);		#:: + Circle of Unseen Hands
		quest::faction(291, -15);		#:: - Merchants of Qeynos
		quest::faction(230, 15);		#:: + Corrupt Qeynos Guards
		quest::faction(262, -15);		#:: - Guards of Qeynos
		quest::faction(273, 10);		#:: + Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 28058 - Head of Stanos
 	elsif (plugin::takeItems(28058 => 1)) {
		quest::say("YES! The ******* is dead, finally. I would have loved to do the work myself, but this will suffice. Here, take this, you have proven yourself a true friend of the Circle!");
		#:: Give a 7501 - Fanged Skull Stiletto
		quest::summonitem(7501);
		#:: Ding!
		quest::ding();
		quest::faction(223, 200);		#:: + Circle of Unseen Hands
		quest::faction(291, -30);		#:: - Merchants of Qeynos
		quest::faction(230, 30);		#:: + Corrupt Qeynos Guards
		quest::faction(262, -30);		#:: - Guards of Qeynos
		quest::faction(273, 20);		#:: + Kane Bayle
 		#:: Grant a large amount of experience
		quest::exp(50000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
