sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, and may the pain of the ancients guide you. You have come to us for guidance, have you not? We are the Hierophants of Cabilis and we guide the young Scale Mystics. All petitioners shall speak with me of [temple tasks].");
	}
	elsif ($text=~/temple tasks/i) {
		quest::say("The Temple of Terror requires all young Scaled Mystics to [perform daily tasks.]. The tasks are necessary to the upkeep of our order as well as that of our brothers, the Crusaders of Greenmist.");
	}
	elsif ($text=~/daily tasks/i) {
		quest::say("We require many components for various rituals. Take this Component mortar and fill it with the following items - foraged [mud crabs], two small mosquito wings and one portion of bone chips. You must then use the pestle and combine all the components. When you have a full component mortar, you may return to me and I shall pay you your wages, but most importantly, you shall prove your devotion to the Scaled Mystics.");
		#:: Give a 17020 - Component Mortar
		quest::summonitem(17020);
	}
	elsif ($text=~/mud crabs/i) {
		quest::say("Mud crabs are tiny crustaceans which live along the mudcaked shores of the Lake of Ill Omen. You can forage for them and find a handful of them at a time.");
	}
	elsif ($text=~/lost skulls/i) {
		quest::say("You must have heard of the Trilac Brotherhoods disappearance. They are the skulls of three soon to be ancients. They were taken from this temple by a silent intruder. Crusaders are always on duty. I do not know how they got into our vault. Every petitioner is ordered to search for the three skulls and return them to me along with their petitioner cudgel and then they shall become clairvoyants.");
	}
	elsif ($text=~/iron cudgel/i) {
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-skull-quest";
		#:: Match if the key value is 1
		if (quest::get_data($key) == 1) {
			#:: Match if faction is Amiable or better
			if ($faction <= 4) {
				quest::say("If you are looking to be handed the Iron Cudgel of the Clairvoyant then you are sadly mistaken. Perhaps if you were to gather a few [lost skulls] for the temple we may find you worthy to wield one.");
			}
			else {
				quest::say("shakes his head and waves a finger in your face. If you are looking to be handed the Iron Cudgel of the Clairvoyant then you are sadly mistaken. Perhaps if you were to gather a few [lost skulls] for the temple we may find you worthy to wield one.'");
			}
		}
	}
	elsif ($text=~/larger problem/i) {
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-skull-quest";
		#:: Match if the key value is 2
		if (quest::get_data($key) == 2) {
			quest::say("Many of the ancient skulls have been cast out of our temple. A hierophant was supposed to cast a special spell which was to protect the skulls from dust and decay. He cast some unknown spell which has sent many of our skulls to their original point of death. It would be most helpful if you would [assist in collecting the ancient skulls].");
		}
	}
	elsif ($text=~/ancient skull/i) {
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-skull-quest";
		#:: Match if the key value is 2
		if (quest::get_data($key) == 2) {
			quest::emote("seems unsure of your prowess. 'Hmmm. First you shall go after the two skulls of the Cleansers of the Outlands. If you find them, bring them back unbroken and then I shall trust you. Hand me both skulls and your iron cudgel of the clairvoyant and I will know you are prepared.'");
		}
	}
	elsif ($text=~/liquid/i) {
		quest::say("The bottle contains deklium in a liquid solution. The metal of prophecy has been determined to rest in a mass of living earth. Our scholars have written of a mass of ore that fell from the heavens. This ore was used in the creation of a blade of our father, Rile. We have been filled with visions of this blade. I have seen it in the hands of our Crusaders as they march towards the new age of Greenmist! Seek out the corrupted earth that guards the interlopers. We have an alchemist near there. He will be able to use the deklium to determine which golem contains the metal. Take care to go in force. I sense that there will be a battle.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12403 - Full Component Mortar
	if (plugin::takeItems(12403 => 1)) {
		quest::say("We appreciate your service. Take a few copper for your deed as well as some of our cursed waters. They will provide you with nourishment. As for future tasks, we are searching for a few [lost skulls] and i am sure you are searching for your [iron cudgel of the clairvoyant] And i also hear that the furscales are in need of some broodlings to do some manual labor. Tell them Oxyn sent you.");
		#:: Give two 12406 - Cursed Wafers
		quest::summonitem(12406);
		quest::summonitem(12406);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 2);		#:: + Scaled Mystics
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-skull-quest";
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			quest::set_data($key, 1);
		}
	}
	#:: Match a 12721 - Morgl Skull, a 12722 - Logrin Skull, a 12723 - Waz Skull, and a 5140 - Iron Cudgel of the Petitioner
	elsif (plugin::takeItems(12721 => 1, 12722 => 1, 12723 => 1, 5140 => 1)) {
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-skull-quest";
		#:: Match if the key value is 1
		if (quest::get_data($key) == 1) {
			quest::say("Excellent! You have proved yourself worthy to wield the iron cudgel of the clairvoyant. As a clairvoyant I feel I can trust you, so I will tell you that the issue of the missing skulls is a [much larger problem] than last stated.");
			#:: Give a 5141 - Iron Cudgel of the Clairvoyant
			quest::summonitem(5141);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(445, 10);		#:: + Scaled Mystics
			quest::faction(441, 5);			#:: + Legion of Cabilis
			#:: Grant a moderate amount of experience
			quest::exp(2000);
			#:: Key up a data bucket
			$key = $client->CharacterID() . "-skull-quest";
			#:: set the key value to 2
			quest::set_data($key, 2);
		}
		else {
			#:: Missing dialogue.
			#:: Return a 12721 - Morgl Skull, a 12722 - Logrin Skull, a 12723 - Waz Skull, and a 5140 - Iron Cudgel of the Petitioner
			quest::summonitem(12721);
			quest::summonitem(12722);
			quest::summonitem(12723);
			quest::summonitem(5140);
		}
	}
	#:: Match a 12721 - Morgl Skull
	elsif (plugin::takeItems(12721 => 1)) {
		quest::say("In my hand shall be placed three skulls of the Trilac Brotherhood and an iron cudgel of the petitioner.");
		#:: Give a 12721 - Morgl Skull
		quest::summonitem(12721);
	}
	#:: Match a 12722 - Logrin Skull
	elsif (plugin::takeItems(12722 => 1)) {
		quest::say("In my hand shall be placed three skulls of the Trilac Brotherhood and an iron cudgel of the petitioner.");
		#:: Give a 12722 - Logrin Skull
		quest::summonitem(12722);
	}
	#:: Match a 12723 - Waz Skull
	elsif (plugin::takeItems(12723 => 1)) {
		quest::say("In my hand shall be placed three skulls of the Trilac Brotherhood and an iron cudgel of the petitioner.");
		#:: Give a 12723 - Waz Skull
		quest::summonitem(12723);
	}
	#:: Match a 5140 - Iron Cudgel of the Petitioner
	elsif (plugin::takeItems(5140 => 1)) {
		quest::say("In my hand shall be placed three skulls of the Trilac Brotherhood and an iron cudgel of the petitioner.");
		#:: Give a 5140 - Iron Cudgel of the Petitioner
		quest::summonitem(5140);
	}
	#:: Match a 12724 - Skull with I, a 12725 - Skull with II, and a 5141 - Iron Cudgel of the Clairvoyant
	elsif (plugin::takeItems(12724 => 1, 12725 => 1, 5141 => 1)) {
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-skull-quest";
		#:: Match if the key value is 1
		if (quest::get_data($key) == 2) {
			quest::say("We are in your debt, $name. You are truly one who shall collect all the lost ancient skulls. Take your weapon. Go to Hierophant Zand and he shall guide you further. Tell him you are [the chosen saviour].");
			#:: Give a 5142 - Iron Cudgel of the Seer
			quest::summonitem(5142);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(445, 10);		#:: + Scaled Mystics
			quest::faction(441, 5);			#:: + Legion of Cabilis
			#:: Grant a moderate amount of experience
			quest::exp(2000);
			#:: Key up a data bucket
			$key = $client->CharacterID() . "-skull-quest";
			#:: set the key value to 3
			quest::set_data($key, 3);
		}
		else {
			#:: Missing dialogue
			#:: Return a 12724 - Skull with I, a 12725 - Skull with II, and a 5141 - Iron Cudgel of the Clairvoyant
			quest::summonitem(12724);
			quest::summonitem(12725);
			quest::summonitem(5141);
		}
	}
	#:: Match a 3895 - Note to Oxyn
	elsif (plugin::takeItems(3895 => 1)) {
		quest::emote("takes the note and begins to howl into the air! 'The visions are true! The new prophecy begins today, Crusader,' the mystic growls with pleasure. He quickly turns and takes a bottle of murky liquid from one of his potion bags and hands it to you. 'Take this and keep it safe. Our visions have told of this day. We have been able to learn of the metal of prophecy. This [liquid] will help us to locate its true resting place!");
		#:: Give a 3892 - Bottle of Liquid Deklium
		quest::summonitem(3892);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 20);		#:: + Crusaders of Greenmist
		quest::faction(441, 10);		#:: + Legion of Cabilis
		#:: Grant a moderate amount of experience
		quest::exp(5000);
	}
	#:: Match a 3886 - Chunk of Tynnonium
	elsif (plugin::takeItems(3886 => 1)) {
		quest::emote("holds the ore in his hands and begins to chant. His eyes go white as he raises the chunk of ore above his head. He lowers his arms and shakes his head for a moment. His eyes return to their normal state as they focus on you. The shaman hands you the ore and says, 'Seek out the creator of Rile's blade. He is still on this plane. I have felt his torment. Take this note to Librarian Zimor. He learned a great deal from the tome and can instruct you further.'");
		#:: Give a 3893 - Note to Librarian Zimor
		quest::summonitem(3893);
		#:: Give a 3886 - Chunk of Tynnonium
		quest::summonitem(3886);
		#:: Ding!
		quest::ding();
		#:: Set factions
		#:: Set factions
		quest::faction(442, 20);		#:: + Crusaders of Greenmist
		quest::faction(441, 10);		#:: + Legion of Cabilis
		#:: Grant a moderate amount of experience
		quest::exp(5000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
