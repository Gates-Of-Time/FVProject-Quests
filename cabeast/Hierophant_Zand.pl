sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("raises his hand and looks up.  'May the wistom of the ancients lead your soul to suffering and everlasting pain.  Such is the will of Cazic-Thule.  I see something in your eyes, $name.  Have you lost something... your cudgel perhaps?'");
	}
	elsif ($text=~/no/i) {
		quest::say("That is good to hear.  Continue to follow the path of pain.  Suffering awaits.");
	}
	elsif ($text=~/yes/i) {
		quest::say("That is most unfortunate for you.  Your suffering will be extended on this plane, until you find your way back to us.  Take this and read it on your way to speak with the Toilmaster.  He will guide you.  Yesssss...'  You feel as if something is peering at you from behind the speaker's soulless eyes as the last letter he speaks transforms into a sigh.");
		#:: Give a 18271 - Ragged Book
		quest::summonitem(18271);
	}
	elsif ($text=~/chosen savior/i) {
		quest::say("I am honored to meet the one who shall pledge his life to the return of the Skulls of the Ancients. However, I must see proof of our prowess as of yet. Go to the outlands and retrieve one Froglok Hexdoll, and no, they are not found on Frogloks. They are shaman dolls made by the goblin tribe.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18272 - Rites of Exoneration, and a 24770 - Filled Penance Bag
	if (plugin::takeItems(18272 => 1, 24770 => 1)) {
		quest::emote("takes the bag and tome from you and in return gives you the item that you have been thinking of all of this time. Lucky you... you have earned a second chance. Praise Cazic-Thule!'");
		#:: Give a 5140 - Iron Cudgel of the Petitioner
		quest::summonitem(5140);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 100);		#:: + Scaled Mystics
		quest::faction(441, 25);		#:: + Legion of Cabilis
	}
	#:: Match a 12734 - Froglok Hex Doll
	elsif (plugin::takeItems(12734 => 1)) {
		quest::say("Fine work! I hope for your sake, you did not purchase it from a brave adventurer. Take this note to the one for whom it is written. This lizard has knowledge of a large number of skulls.");
		#:: Give a 18054 - The Bone Garrison
		quest::summonitem(18054);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 20);		#:: + Scaled Mystics
		quest::faction(441, 5);			#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 12740 - Iksar Skull, a 12741 - Iksar Skull Helm, and a 5144 - Iron Cudgel of the Prophet
	elsif (plugin::takeItems(12740 => 1, 12741 => 1, 5144 => 1)) {
		quest::emote("closes his eyes and reopens them. They have no pupils. He speaks and you hear his voice echo. 'We are Di Nozok. You have earned the weapon of a channeler. We hope to fill your thoughts with ours some day. Go and seek out Dexl. We send you to him. Farewell $name, Channeler of Cabilis.'");
		#:: Give a 5145 - Iron Cudgel of the Channeler
		quest::summonitem(5145);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 20);		#:: + Scaled Mystics
		quest::faction(441, 5);			#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 12740 - Iksar Skull
	elsif (plugin::takeItems(12740 => 1)) {
		quest::emote("seems to black out, and then recover. He speaks with the voice of an ancient. 'We are Dai and Die and we await our skulls and your iron cudgel of the prophet. Become a channeler.'");
		#:: Give a 12740 - Iksar Skull
		quest::summonitem(12740);
	}
	#:: Match a 12741 - Iksar Skull Helm
	elsif (plugin::takeItems(12741 => 1)) {
		quest::emote("seems to black out, and then recover. He speaks with the voice of an ancient. 'We are Dai and Die and we await our skulls and your iron cudgel of the prophet. Become a channeler.'");
		#:: Give a 12741 - Iksar Skull Helm
		quest::summonitem(12741);
	}
	#:: Match a 5144 - Iron Cudgel of the Prophet
	elsif (plugin::takeItems(5144 => 1)) {
		quest::emote("seems to black out, and then recover. He speaks with the voice of an ancient. 'We are Dai and Die and we await our skulls and your iron cudgel of the prophet. Become a channeler.'");
		#:: Give a 5144 - Iron Cudgel of the Prophet
		quest::summonitem(5144);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
