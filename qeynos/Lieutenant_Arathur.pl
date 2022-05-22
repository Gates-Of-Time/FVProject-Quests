sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 1);
	#:: Also, enable proximity say
	quest::enable_proximity_say();
}

sub EVENT_PROXIMITY_SAY {
	if ($text=~/gnolls/i) {
		quest::say("What was that you said? You mentioned the Sabertooths of Blackburrow? Those gnolls have caused this city trouble for too long. We have yet to force them from Qeynos Hills. I hear rumors of a few merchants who even dare to sell the outlawed Blackburrow Stout which is brewed by the gnolls. Foolish!! We call upon all citizens to assist in ridding our land of the gnolls. If you wish to join the fight, Captain Tillin is your man. Just say so.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name! Lieutenant Arathur Swelnik at your service. I take great pride in keeping Qeynos safe and proper. I also try to bring the word of [Mithaniel Marr] to the people of this fine city.");
	}
	elsif ($text=~/mithaniel marr/i) {
		quest::say("Mithaniel Marr is the Lord of Valor and my personal source of power and inspiration. You see I was orphaned as a small child and raised by the Priests of Marr in [Freeport]. I have dedicated my life to protecting the innocent. I now use the glorious powers that my faith in the Truthbringer has provided to help bring honor to the city of Qeynos.");
	}
	elsif ($text=~/freeport/i) {
		quest::say("Freeport is the city of my birth. It is not what it once was, though. Thugs and bandits patrol its streets. My comrades in the Knights of Truth have managed to protect the northern parts of the city but I fear they are outnumbered and will soon have to flee Freeport altogether. If it were not for my sworn duty here, I would join their noble [crusade].");
	}
	elsif ($text=~/crusade/i) {
		quest::say("The Knights of Truth fight a neverending battle against the corrupt and vicious Freeport Milita. If you are going to Freeport, you might want to meet up with Knight Rolius and let him know you are a [friend of Arathur]. They can always use another able body.");
	}
	elsif ($text=~/order of the three/i) {
		quest::say("The Order of Three consists of the three positive circles of the arcane known as magic, enchantment and wizardry.  This guild keeps very busy in its hall near the arena.  All in Qeynos respect their powers.");
	}
	elsif ($text=~/where.*monk guild/i) {
		quest::say("In North Qeynos sits the house of the Silent Fist Clan.  These monks are welcome in Qeynos and often assist in training the Qeynos Guard in hand to hand combat.");
	}
	elsif ($text=~/where.*bank/i) {
		quest::say("Qeynos Hold is South Qeynos is just across from the arena.  You know, over the bridge behind Firepride's.");
	}
	elsif ($text=~/where.*port/i) {
		quest::say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	}
	elsif ($text=~/where.*dock/i) {
		quest::say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	}
	elsif ($text=~/who.*kane/i) {
		quest::say("Commander Kane Bayle is the commander of all the Qeynos Guard.  He is second only to his brother, Antonius Bayle.  His post is in the guard house at the city gates.  Mind you, do not bother him, he has a bit of a temper.");
	}
	elsif ($text=~/who.*circle of unseen hands/i) {
		quest::say("The Circle of the Unseen Hand?  I have heard nothing of them.  Are they some sort of performing magic troupe?");
	}
	elsif ($text=~/(cleric|paladin) guild/i) {
		quest::say("Within Qeynos are the Knights of Thunder and the Priests of Life.  Both of these orders consist of clerics and paladins and are respected by all.  The Hall of Thunder lies in South Qeynos and the Temple of Life is in North Qeynos.");
	}
	elsif ($text=~/(ranger|druid) guild/i) {
		quest::say("I believe you shall find the Protectors of the Pine and Jaggedpine Treefolk in the hollow of Surefall Glade.");
	}
	elsif ($text=~/(necromancer|shadowknight) guild/i) {
		quest::say("What gibberish are you spouting?  There is not, nor will there ever be, such an organization as that within a hundred miles of Qeynos, not with the Qeynos Guard on patrol.  Next you will be inquiring of a rogue guild!  Really!");
	}
	elsif ($text=~/who.*jaggedpine treefolk/i) {
		quest::say("In Surefall Glade there are druids called the Jaggedpine Treefolk.  These men and women often assist our army during times of war.");
	}
	elsif ($text=~/captain linarius/i) {
		quest::say("The Qeynos Tower Guards of the hills and plains are commanded by Captain Linarius Graffe.  He often has much to report.  He is posted in a keep which spans a river.  I believe it is in the northern Plains of Karana.");
	}
	elsif ($text=~/where.*north qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*south qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*inn/i) {
		quest::say("If you need a place to rest, I highly recommend the Lion's Mane Inn and Tavern.  Poor adventurers all huddle together in one of the backrooms of Fish's.");
	}
	elsif ($text=~/where.*weapons/i) {
		quest::say("This city has been blessed with the craftsmanship of the Ironforges.  Their weapons are supreme.  Their shop can be found near the Temple of Life in North Qeynos.  You may also try the local warrior guild.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 12) {
		quest::say("Guard, stand up straight!");
		#:: Send a signal "1" to South Qeynos >> Guard_Jerith (1002) with no delay
		quest::signalwith(1002,1,0);
		#:: Send a signal "1" to South Qeynos >> Guard_Dunix (1181) with no delay
		quest::signalwith(1181,1,0);
	}
	elsif ($wp == 28) {
		quest::say("Guard, stand up straight!");
		#:: Send a signal "1" to South Qeynos >> Guard_Beren (1090) with no delay
		quest::signalwith(1090,1,0);
		#:: Send a signal "1" to South Qeynos >> Guard_Corshin (1091) with no delay
		quest::signalwith(1091,1,0);
	}
	elsif ($wp == 38) {
		quest::say("Guard, stand up straight!");
		#:: Send a signal "1" to South Qeynos >> Guard_Phaeton (1189) with no delay
		quest::signalwith(1189,1,0);
		#:: Send a signal "1" to South Qeynos >> Guard_Cyrillian (1006) with no delay
		quest::signalwith(1006,1,0);
		#:: Send a signal "1" to South Qeynos >> Guard_Forbly (1174) with no delay
		quest::signalwith(1189,1,0);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
