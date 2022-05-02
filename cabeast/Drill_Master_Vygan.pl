#:: Data bucket to verify quest has been started appropriately
$key = $client->CharacterID() . "-warrior-pike-6";

sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18203 - Guild Summons
	if (plugin::check_hasitem($client, 18203)) { 
		$client->Message(15,"Your nostrils flare from the smoke of a nearby torch. A harsh looking Iksar covered with scars turns to greet you. 'You have entered Fortess Talishan in East Cabilis. If you are here to learn the ways of the warrior, read the note in your inventory and then hand it to me when you are ready to start your training.'");
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		#:: Match a 5131 - Militia's Pike
		if (plugin::check_hasitem($client, 5131)) { 
			quest::say("Welcome. Welcome!! Time to train. Time to fight. Time to serve the Iksar Empire. You will need weapons. I have the [footman pike] for all new recruits to earn.");
		} else {
			quest::say("I am a Drill Master of the Legion of Cabilis.  I have no time for idle chitchat.  Be off if you were not summoned to this fortress!  Find that guild which was chosen for you as an egg.");
		}
	}
	#:: Match if faction is amiable or better
	if ($faction <= 4) {
		if ($text=~/militia pike/i) {
			quest::say("The pike is the prime weapon of Cabilis warriors. It can be upgraded, too, such as from the partisan pike to the militia pike and beyond. All these pikes may be slung on one's back when your hands are needed for other pursuits. To upgrade a pike is something that is learned, but it can never be performed without a [geozite tool]. Do you [desire to upgrade the partisan pike]?");
		}
		elsif ($text=~/upgrade the partisan pike/i) {
			quest::say("It seems as though a traitor is among our people. Someone has smuggled shackle keys to the slaves. The froglok slaves have been escaping into the swamplands and there we can hear the whistle of their contact who escorts them to freedom. We must put a stop to this! I desire three things. Your partisan pike, the head of the Iksar traitor and the whistle of the escort. Bring these to me and I shall give you the militia pike.");
		}
		elsif ($text=~/what geozite tool/i) {
			quest::say("The Geozite Tool is used to sharpen the pikes of the Legion of Cabilis. Only it can produce the serrated edges necessary for these deadly weapons. They are not handed out to just any broodling. The tool is only given to warriors who serve the legion. Do you [want a geozite tool]?");
		}
		elsif ($text=~/want a geozite tool/i) {
			quest::say("Then take this satchel and go to the outer walls of Cabilis and seek out large scorpions. When you can fill and combine the satchel with scorpion pincers, then you shall prove to me that you are truly a warrior and I shall send you off on your true test.");
			#:: Give a 17993 - Pincer Satchel
			quest::summonitem(17993);
		}
		elsif ($text=~/footman pike/i) {
			#:: Match a 5131 - Militia's Pike
			if (plugin::check_hasitem($client, 5131)) { 
				quest::say("A footman pike is what you need. A footman pike is what you get, but earn it you will. You must [slay many beasts] to prove to us that you are a true warrior. Fail and you will be exiled to live with the Forsaken.");
			}
		}
		elsif ($text=~/slay many beasts/i) {
			#:: Match a 5131 - Militia's Pike
			if (plugin::check_hasitem($client, 5131)) { 
				quest::say("Yes. You will slay or you will be slain. Take this footman's pack and fill it you will. Fill it with [weapons of our foes]. When all are combined, the full footman's pack shall be returned to me along with your militia pike. Do this and earn your footman pike and then we may have a true mission for you.");
			}
		}
		elsif ($text=~/weapons of our foes/i) {
			#:: Match a 5131 - Militia's Pike
			if (plugin::check_hasitem($client, 5131)) { 
				quest::say("Yes. You need to know the weapons required. Fill the pack with javelins. Froglok bounder and goblin hunter javelins. Two of each.");
				#:: Give a 17027 - Footmans Pack
				quest::summonitem(17027);
			}
		}
		elsif ($text=~/true warrior of the legion/i) {
			#:: Match a 5135 - Legionnaire's Mancatcher
			if (plugin::check_hasitem($client, 5135)) { 
				quest::say("If you are you will have proof; else you will have the wrath of the Legion upon you for such a claim.");
			}
		}
		elsif ($text=~/done/i) {
			#:: Match if the key value is 1
			if (quest::get_data($key) == 1) { 
				quest::say("It seems as though there is an uprising starting to brew and the War Baron would like a [legionnaire] to handle the situation.");
			}
		}
		elsif ($text=~/legionnaire/i) {
			#:: Match if the key value is 1
			if (quest::get_data($key) == 1) { 
				quest::say("Yes you are. I see you are willing to possibly sacrifice yourself for the cause. That is good. Take this container and hunt down their messengers. They are the ones that relay battle plans to the different tribes. Their combined messages will reveal the master plan. Go now and do not return until you have them all.");
				#:: Give a 48002 - Book of Bindings
				quest::summonitem(48002);
			}
		}
		elsif ($text=~/before this issue is over/i) {
			#:: Match if the key value is 2
			if (quest::get_data($key) == 2) { 
				quest::say("Do not concern yourself for now. Rejoice instead and seek out Weaponsmith Grugl to guide you in forging your new weapon. I must speak to War Baron Eator regarding the welfare of Cabilis now.");
			}
		}
	}
	else {
		quest::say("No Iksar resident will have anything to do with you!");
	}
}

sub EVENT_ITEM {
	#:: Match a 18203 - Guild Summons
	if (plugin::takeItems(18203 => 1)) {
		quest::say("I see they have begun to draft younger broodlings? Hmmph!! No matter. We Drill Masters shall make a warrior of you. Here is your partisan's pike and some coin as your wages. Be sure that you begin your training in blacksmithing and report to the other Drill Masters for any tasks they may have for you. Let them know you are [a partisan of Cabilis]. Perhaps soon you shall be rewarded the [militia pike].");
		#:: Give a 5130 - Partisan's Pike
		quest::summonitem(5130);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 100);	#:: + Legion of Cabilis
		quest::faction(440, 25);	#:: + Cabilis Residents
		quest::faction(445, 25);	#:: + Scaled Mystics
		quest::faction(442, 25);	#:: + Crusader of Greenmist
		quest::faction(444, 25);	#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 12675 - Froglok Escort Fife, a 12677 - Iksar Head, and a 5130 - Partisan's Pike
	elsif (plugin::takeItems(12675 => 1, 12677 => 1, 5130 => 1)) {
		quest::say("You have perfomed just as expected. I bestow upon you the rank of militiaman. Here is your new pike. Past this, you shall require the [geozite tool] to upgrade your future pikes and mancatchers. We see much promise in you, militiaman. Go forth to serve the realm.");
		#:: Give a 5131 - Militia's Pike
		quest::summonitem(5131);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 10); 	#:: + Legion of Cabilis
		quest::faction(440, 2);		#:: + Cabilis Residents
		quest::faction(445, 2);		#:: + Scaled Mystics
		quest::faction(442, 2);		#:: + Crusaders of Greenmist
		quest::faction(444, 2); 	#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Match a 12430 - Full Footman's Pack and a 5131 - Militia's Pike
	elsif (plugin::takeItems(12430  => 1, 5131 => 1)) {
		quest::say("Kyg knew you could do it. You will make a fine legionnaire some day but, for now, you shall be a footman. Take the footman pike head plans. Forge the footman's pike. Do so, and then you may have an audience with the War Baron on the subject of his [Memory of Sebilis].");
		#:: Give a 12475 - Footman Head Plans
		quest::summonitem(12475);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 10); 	#:: + Legion of Cabilis
		quest::faction(440, 2);		#:: + Cabilis Residents
		quest::faction(445, 2);		#:: + Scaled Mystics
		quest::faction(442, 2);		#:: + Crusaders of Greenmist
		quest::faction(444, 2); 	#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(300);
	}
	#:: Match a 12658 - Full Pincer Satchel
	elsif (plugin::takeItems(12658 =>1)) {
		quest::say("You are a true warrior of Cabilis. You obviously are aware that in order to upgrade your pike you shall need a [geozite tool]. Take this note to the Lord of the outer gates. He desires a young warrior for a small task. Do this and he is instructed to reward you with the tool.");
		#:: Give a random reward:  18213 - Note to Iksar Lord, 18211 - Note to Iksar Lord, 18210 - Note to Iksar Lord
		quest::summonitem(quest::ChooseRandom(18213, 18211, 18210));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 5); 	#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1); 	#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 100 to 200cp
		my %cash = plugin::RandomCash(100, 200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 5135 - Legionnaire's Mancatcher
	elsif (plugin::takeItems(5135 => 1)) {
		quest::say("Ah, I have heard much of your deeds as of late $name, but there is still much to be [done].");
		#:: Ding!
		quest::ding();
			#:: Set a data bucket to a value of "1"
		quest::set_data($key, 1);
	}
	#:: Match a 48006 - Illegible Message (A message that somehow seems important)
	elsif (plugin::takeItems(48006 => 1)) {
		if(quest::get_data($key) == 1) {
			quest::say("Hmm. . . even if the writing wasn't as smudged as it is, I still would not be able to decipher the hidden message. You must now take this and find someone with the ability to read it. I hear there is such a person on patrol but I cannot recall where.");
			#:: Give a 48006 - Illegible Message (A message that somehow seems important)
			quest::summonitem(48006);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Match a 48008 - Sealed Message
	elsif (plugin::takeItems(48008 => 1)) {
		quest::say("I see you have returned in one piece. That is good. You have shown that you are a true warrior of the Legion indeed! Take this, and show that you are more than a legionnaire. I fear we may need just that [before this issue is over].");
		#:: Give a 48009 - Champion Crown Plans
		quest::summonitem(48009);
		#:: Ding!
		quest::ding();
			#:: Set a data bucket to a value of "2"
		quest::set_data($key, quest::get_data($key) + 1);
	}
	
	#::	plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
