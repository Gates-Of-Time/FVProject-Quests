sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, and enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 1);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What do you want? Are you friends with that lousy [dwarf]?! You had better not be unless you want to spend the rest of the week bleeding!");
	}
	elsif ($text=~/dwarf/i) {
		quest::say("That dwarf, Trumpy, who Corshin here thinks is a friend of Commander Bayle's, keeps pestering my poor brother Faren. I have had just about enough of him and [his kind].");
	}
	elsif ($text=~/his kind/i) {
		quest::say("You know... thieves, drunks and murderers. Decent folk just don't have a chance anymore.");
	}
	elsif ($text=~/faren/i) {
		quest::say("My brother Faren is a fine fisherman just like our father was. He fishes out there on the East Dock just about every day.");
	}
	elsif ($text=~/order of the three/i) {
		quest::say("The Order of Three consists of the three positive circles of the arcane known as magic, enchantment and wizardry.  This guild keeps very busy in its hall near the arena.  All in Qeynos respect their powers.");
	}
	elsif ($text=~/where is the monk guild/i) {
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
	elsif ($text=~/circle of unseen hands/i) {
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
	elsif ($text=~/where is north qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where is south qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*inn/i) {
		quest::say("If you need a place to rest, I highly recommend the Lion's Mane Inn and Tavern.  Poor adventurers all huddle together in one of the backrooms of Fish's.");
	}
	elsif ($text=~/where.*weapons/i) {
		quest::say("This city has been blessed with the craftsmanship of the Ironforges.  Their weapons are supreme.  Their shop can be found near the Temple of Life in North Qeynos.  You may also try the local warrior guild.");
	}
}

sub EVENT_PROXIMITY_SAY {
	if ($text=~/brother/i) {
		quest::say("My brother Faren is a fine fisherman just like our father was. He fishes out there on the East Dock just about every day.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match when NPC arrives at waypoint 5
	if ($wp == 5) {
		quest::say("How are they biting, little brother?");
		#:: Send a signal "1" to South Qeynos >> Faren (1159) with no delay
		quest::signalwith(1159,1,0);
	}
}

sub EVENT_SIGNAL {
	#:: Match signal 1 from qeynos/Lieutenant_Arathur.pl
	if (($signal == 1) && ($x == -145 && $y == -247)) {
		quest::say("Yes, sir!");
	}
	#:: Match signal 2 from qeynos/Faren.pl
	elsif ($signal == 2) {
		quest::say("Don't you worry about him! I will take care of Trumpy Irontoe once and for all!");
	}
	#:: Match signal 3 from qeynos/Trumpy_Irontoe.pl
	elsif (($signal == 3) && ($x == -145 && $y == -247)) {
		quest::say("Curse you, Trumpy!!!");
		#:: Send a signal "2" to South Qeynos >> Guard_Corshin (1091) with no delay
		quest::signalwith(1091,2,0);
	}
	#:: Match signal 4 from qeynos/Trumpy_Irontoe.pl
	elsif (($signal == 4) && ($x == -145 && $y == -247)) {
		quest::say("If you ever talk that way about my [brother] again, I will throw your butt into the dungeon. I don't care who you know!");
		#:: Send a signal "2" to South Qeynos >> Trumpy_Irontoe (1042) with no delay
		quest::signalwith(1042,2,0);
		#:: Send a signal "2" to South Qeynos >> Guard_Corshin (1091) with 5 second delay
		quest::signalwith(1091,2,5);
	}
	#:: Match signal from qeynos/Guard_Corshin.pl
	elsif (($signal == 5) && ($x == -145 && $y == -247)) {
		quest::say("Heh, Speak for yourself, Corshin. That one looks like a troublemaker to me.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
