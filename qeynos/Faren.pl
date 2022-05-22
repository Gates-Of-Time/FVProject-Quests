sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, and enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 1);
	#:: Create a timer that loops every 300 seconds (5 min)
	quest::settimer("fishing", 300);
}

sub EVENT_TIMER {
	#:: Match timer "fishing"
	if ($timer eq "fishing") {
		quest::say("Whoo!!! I think I got a bite! Darn.. Seaweed.");
	}
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Aaaaaa! Help! Guards! Psycho on the dock!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh.. Hiya, I'm just out here fishing, since I can't find a job. I hope this [bait] I just bought catches me a big ol' fish.");
	}
	elsif ($text=~/bait/i) {
		quest::say("I use Captain Rohand's Secret Recipe Super Magic Catch-A-Lot brand bait. I bought my pole from Sneed's up by the north pond.");	
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

sub EVENT_PROXIMITY_SAY {
	if ($text=~/tacklebox/i) {
		quest::say("Oh. That mean [dwarf], Trumpy, just knocked my tacklebox into the water. Could you please get it for me? I can't swim.");	
		#:: Send a signal "1" to South Qeynos >> Trumpy_Irontoe (1042) with no delay
		quest::signalwith(1042, 1, 0);
	}
	elsif ($text=~/dwarf/i) {
		quest::say("His name is Trumpy. He is one of those [Irontoes] I think. I've seen him hanging out in the Fish's Ale. I don't know why he likes to torment me.");
	}
	elsif ($text=~/irontoes/i) {
		quest::say("Ah! The Irontoes are a rough bunch of dwarves from Kaladim. The seem to get quite drunk on a frequent basis.");
	}
	elsif ($text=~/skippy/i) {
		quest::say("My name is not Skippy.");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos/Guard_Beren.pl
	if ($signal == 1) {
		quest::say("Oh, hi, Beren. Not too good so far. That [dwarf] keeps bothering me, too.");
		#:: Send a signal "2" to South Qeynos >> Guard_Beren (1090) with no delay
		quest::signalwith(1090, 2, 0);
	}
	#:: Match signal "2" from qeynos/Trumpy_Irontoe.pl
	elsif ($signal == 2) {
		quest::say("Huh? What? My [tacklebox]!? You know I can't swim, you rotten [dwarf]!");
		#:: Send a signal "1" to South Qeynos >> Trumpy_Irontoe (1042) with no delay
		quest::signalwith(1042, 1, 0);
	}
	#:: Match signal "3" from qeynos/Trumpy_Irontoe.pl
	elsif ($signal == 3) {
		quest::say("My name is not Skippy.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13702 - Wooden Fishing Tackle
	if (plugin::takeItems(13702 => 1)) {
		quest::say("Thank you so much!  If you want some free advice, steer clear of those [Irontoes]! They are nothing but trouble. Here, It's not much but I must thank you somehow.");
		#:: Give a 13129 - Hurrieta's Tunic
		quest::summonitem(13129);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(262, 10);		#:: + Guards of Qeynos
		quest::faction(219, 1);			#:: + Antonius Bayle
		quest::faction(230, -1);		#:: - Corrupt Qeynos Guards
		quest::faction(223, -2);		#:: - Circle of Unseen Hands
		quest::faction(291, 1);			#:: + Merchants of Qeynos
		#:: Grant a small amount of experience based on level
		$client->AddLevelBasedExp(5, 1);
		#:: Create a hash for storing cash - 5 to 20cp
		my %cash = plugin::RandomCash(5,20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
