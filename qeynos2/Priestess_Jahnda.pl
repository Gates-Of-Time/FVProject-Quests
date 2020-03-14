sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Check for 18714 - Tattered Note
	if (plugin::check_hasitem($client, 18714)) {
		$client->Message(15,"As you get your bearings, a healing energy seems to sweep over you and an almost etheral voice seems to echo in your mind. 'Welcome young cleric of Rodcet. I am Priestess Jahnda. Read the note in your inventory and hand it to me to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Temple of Life, where the will of Rodcet Nife, the Prime Healer, is carried out.  I am the High Priestess Jahnda.  If you require any training in our ways, please talk to any of our priests or any of the paladins of the Temple of Life.");
	}
	elsif ($text=~/blessed oil/i) {
		quest::say("I do not distribute the blessed oil of life. Please speak with Nomsoe Jusagta. Tell Nomsoe that Brother Estle needs the blessed oil.");
	}
	elsif ($text=~/hayle mool/i) {
		#:: Removed quest text for Plains of Karana / Splitpaw clan--no response found
		quest::say("Brother Hayle Mool is one of our finest clerics. He could convert anyone to the ways of Rodcet Nife. Recently, he has been out in the Plains of Karana trying to befriend Splitpaw clan. I pray he has not become their prisoner or even worse, their dinner.");
	}
	elsif ($text=~/honored member/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Yes. The light of righteouness shines from within you.");
		}
		else {
			quest::say("Your mere presence disgusts me. Please remove yourself from my sight. Until you change yourself and your ways, you are unwelcome in the Temple of Life.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 18714 - Tattered Note
	if (plugin::takeItems(18714 => 1)) {
		quest::say("Welcome to the Temple of Life. I am Jahnda, the High Priestess of the Clerics of Nife. Wear this tunic with pride and carry out the will of Nife. Please, see Tonmerk Plorsin or Nomsoe Jusagta. They will help get you started spreading the will of The Prime Healer.");
		#:: Give a 13506 - Faded Tunic*
		quest::summonitem(13506);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 100);		#:: + Priests of Life
		quest::faction(280, 30);		#:: + Knights of Thunder
		quest::faction(262, 50);		#:: + Guards of Qeynos
		quest::faction(221, -25);		#:: - Bloodsabers
		quest::faction(219, 15);		#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 13724 - Pouch of Evidence
	elsif (plugin::takeItems(13724 => 1)) {
		quest::say("Excellent work! You are surely under the protection and guidance of the Prime Healer. This evidence will help us greatly to convince Antonious and the guild leaders of Qeynos that the Bloodsabers are here and seek to destroy all we have worked so long for.");
		#:: Give a random reward: 14003 - Potion of Disease Warding, 14007 - Potion of Light Healing, 13723 - Skullcap of Rodcet Nife, 13720 - Shield of Nife
		quest::summonitem(quest::ChooseRandom(14003, 14003, 14007, 14007, 13723, 13720));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 50);		#:: + Priests of Life
		quest::faction(280, 15);		#:: + Knights of Thunder
		quest::faction(262, 25);		#:: + Guards of Qeynos
		quest::faction(221, -12);		#:: - Bloodsabers
		quest::faction(219, 7);			#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 450 to 550cp
		my %cash = plugin::RandomCash(450,550);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 13911 - PrayerBeads
	elsif (plugin::takeItems(13911 => 1)) {
		quest::say("Oh my word!! This is terrible news. This belongs to Hayle Mool. He has been captured by the Splitpaw Clan while in Karana. You must go to his aid. We cannot do so at this time. Here. Be sure to hand him this summons. I will need to speak with him.");
		#:: Give a 18927 - Temple Summons
		quest::summonitem(18927 => 1);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 50);		#:: + Priests of Life
		quest::faction(280, 15);		#:: + Knights of Thunder
		quest::faction(262, 25);		#:: + Guards of Qeynos
		quest::faction(221, -12);		#:: - Bloodsabers
		quest::faction(219, 7);			#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(100);			
	}	
	#:: Return unused items
	plugin::returnUnusedItems();
}
