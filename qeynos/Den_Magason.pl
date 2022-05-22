sub EVENT_WAYPOINT_ARRIVE {
	#:: Match if waypoint is 16, 43 or 70
	if (($wp == 16) || ($wp == 43) || ($wp == 70)) {
		quest::say("Psst.. Hey, you there.. Yeah, you.. You need some [blank scroll sheets].. I just got a special shipment of things in.. Come on, it's just what you're looking for.. I know you.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh, hey there.. How ya doing? My name's Den. I work for ol' [Rohand] here, unloading the [shipments] that come in from overseas.");
	}
	elsif ($text=~/rohand/i) {
		quest::say("Ol' Captain Rohand is the owner of the Mermaid's Lure. He trades goods with sailors and sea [merchants]. I think that old man was even born at sea.. And he's got more stories than fish have scales.");	
	}
	elsif (($text=~/shipments/i) || ($text=~/merchants/i)) {
		quest::say("Yeah.. We get merchants and traders with goods from here to [Odus].");
	}
	elsif ($text=~/blank scroll sheets/i) {
		quest::say("Blank scroll sheets, huh? You know, there seems to be a shortage of these around here lately. But, hey friend, ol' Denny-boy here would never steer you wrong. I'll sell you some for 2 gold. I know, I'm too kind.");
	}
	elsif ($text=~/odus/i) {
		quest::say("Odus? I've never been there, but I hear it's a long journey.");
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

sub EVENT_ITEM {
	#:: Match two gold
	if (plugin::takeCoin(0, 0, 2, 0)) {
		quest::say("Yeah, well, these are pretty hard to come by. In fact, these came all the way from Odus. Enjoy, and tell your buddies.");
		#:: Ding!
		quest::ding();
		#:: Give a 18006 - Blank Scroll Sheets
		quest::summonitem(18006);
		#:: Set factions
		quest::faction(223, 1);		#:: + Circle Of Unseen Hands
		quest::faction(291, -1);	#:: - Merchants of Qeynos
		quest::faction(230, 1);		#:: + Corrupt Qeynos Guards
		quest::faction(262, -1);	#:: - Guards of Qeynos
		quest::faction(273, 1);		#:: + Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Match 13784 - Package for Den
	elsif (plugin::takeItems(13784 => 1)) {
		quest::say("All right, I'll make sure this gets put on the next boat to Erudin. But now, I need a favor of you. Since I'm stuck here working the docks all day, I need someone to run out to Qeynos Hills and bring me back various pelts and skins. I got a customer in Odus who is trying to get a new shop started, and he needs some samples. Bring me back some snake scales, a high quality bear skin, a high quality wolf skin, and some bat fur. Make sure the quality is good, I can't send him rags.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, 10);	#:: + Circle Of Unseen Hands
		quest::faction(291, -1);	#:: - Merchants of Qeynos
		quest::faction(230, 1);		#:: + Corrupt Qeynos Guards
		quest::faction(262, -1);	#:: - Guards of Qeynos
		quest::faction(273, 1);		#:: + Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Match 13069 - Bat Fur, 13755 - High Quality Wolf Skin, 13752 - High Quality Bear Skin, 13070 - Snake Scales
	elsif (plugin::takeItems(13069 => 1, 13755 => 1, 13752 => 1, 13070 => 1)) {
		quest::say("Great... Hopefully he will like these samples, and order a lot more from me. Here's some gold for your efforts. Also, could you pass this note on to Ghil next time you talk to him? Thanks again.");
		#:: Ding!
		quest::ding();
		#:: Give a 18796 - Note for Ghil
		quest::summonitem(18796);
		#:: Set factions
		quest::faction(223, 20);	#:: + Circle Of Unseen Hands
		quest::faction(291, -3);	#:: - Merchants of Qeynos
		quest::faction(230, 3);		#:: + Corrupt Qeynos Guards
		quest::faction(262, -3);	#:: - Guards of Qeynos
		quest::faction(273, 2);		#:: + Kane Bayle
		#:: Grant a moderate amount of experience
		quest::exp(2000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
