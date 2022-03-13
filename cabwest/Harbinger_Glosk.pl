sub EVENT_SPAWN {
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Match a 18207 - Guild Summons
	if (plugin::check_hasitem($client, 18207)) {
		$client->Message(15,"As your reptilian eyes adjust to the darkness of the room, an imposing Iksar turns towards you, addressing you with a sharp hiss. 'I am Harbinger Glosk. The time has come young one. You have chosen the path of the Necromancer. Open your inventory and read the note within. Once you are ready to begin your training, hand the note to me and we will continue.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("halts his chanting. 'You dare to interrupt me? You had best have a good reason. I care not for small talk.'");
	}
	elsif ($text=~/new revenant/i) {
		#:: Match a 4265 - Revenant Skullcap
		if (plugin::check_hasitem($client, 4265)) {
			quest::emote("ceases his chanting and gazes into your mind.  'Yes.  You are.  You shall do as I command.  Take this.  It is incomplete and must be ready for the emperor within the half season.  You must find the [four missing gems]. When you have them, you will have to quest for the [Grand Forge of Dalnir].  Within its fire, all shall combine.  Return the sceptre to me with your revenant skullcap.  Go.'");
			#:: Give a 12873 - Unfinished Sceptre
			quest::summonitem(12873);
		}
		else {
			quest::say("I thank you for your services, but I'm afraid you still do not possess the ranking to share the information you seek.");
		}
	}
	elsif ($text=~/four missing gems/i) {
		#:: Match a 4265 - Revenant Skullcap
		if (plugin::check_hasitem($client, 4265)) {
			quest::say("The missing sceptre gems are: an Eye of Rokgus, a Gem of Yet to Come, a Heart of Torsis and the Crown Jewel of Ganak.");
		}
		else {
			quest::say("I thank you for your services, but I'm afraid you still do not possess the ranking to share the information you seek.");
		}
	}
	elsif ($text=~/forge of dalnir/i) {
		#:: Match a 4265 - Revenant Skullcap
		if (plugin::check_hasitem($client, 4265)) {
			quest::emote("scratches his chin.  'I know little of it other than that it once belonged to the ancient Haggle Baron, Dalnir. From what I have read, its fires require no skill, but will melt any common forge hammer used. Dalnir was said to have called upon the ancients for a hammer which could tolerate the magickal flames.'");
		}
		else {
			quest::say("I thank you for your services, but I'm afraid you still do not possess the ranking to share the information you seek.");
		}
	}
	elsif ($text=~/gem of reflection/i) {
		#:: Match a 4267 - Necromancer Skullcap
		if (plugin::check_hasitem($client, 4267)) {
			quest::say("I have not been asked that in ages but I can recall the last person that asked me. If you are in league with that scoundrel Ixpacan, I will slay you where you stand! But if you are not, you will not mind ridding your kin of a [menace] as of late.");
		}
		else {
			quest::say("I thank you for your services, but I'm afraid you still do not possess the ranking to share the information you seek.");
		}
	}
	elsif ($text=~/menace/i) {
		#:: Match a 4267 - Necromancer Skullcap
		if (plugin::check_hasitem($client, 4267)) {
			quest::say("It seems as though a rogue marauder in a jungle near here has attacked several of our trade suppliers. If you can bring me back his head I will gladly share the information you have asked for.");
		}
		else {
			quest::say("I thank you for your services, but I'm afraid you still do not possess the ranking to share the information you seek.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 18207 - Guild Summons
	if (plugin::takeItems(18207 => 1)) {
		quest::say("Another apprentice has reached rebirth. You now have become one with the Brood of Kotiz. We study the ancient writing of Kotiz. Through his writing we have found the power of the dark circles. Listen well to the scholars within this tower and seek the [Keepers Grotto] for knowledge of our spells. This drape shall be the sign to all Iksar that you walk with the Brood. Now go speak with Xydoz.");
		#:: Give a 12407 - Drape of the Brood
		quest::summonitem(12407);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 100);		#:: + Brood of Kotiz
		quest::faction(441, 25);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 12874 - Sceptre of Emperor Vekin, and a 4265 - Revenant Skullcap
	elsif (plugin::takeItems(12874 => 1, 4265 => 1)) {
		quest::emote("presents to you a glowing skullcap. 'This is the treasured cap of the sorcerers of this tower. Let all gaze upon you in awe. You are what others aspire to be. I look forward to reading of your adventures, Sorceror $name.'");
		#:: Give a 4266 - Sorcerer Skullcap
		quest::summonitem(4266);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 20);		#:: + Faction: Brood of Kotiz
		quest::faction(441, 5);			#:: + Faction: Legion of Cabilis
		#:: Grant a large amount of experience
		quest::exp(10000);
		#:: Create a hash for storing cash - 1500 to 2500cp
		my %cash = plugin::RandomCash(1500, 2500);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 48037 - Rogue Marauder's Head
	elsif (plugin::takeItems(48037 => 1)) {
		#:: Match a 4267 - Necromancer Skullcap
		if (plugin::check_hasitem($client, 4267)) {
			quest::say("You have done well in doing what I have asked. To make a gem of reflection you will need some Mt Death mineral salts, a green goblin skin, spiroc bone dust, essence of rathe, blue slumber fungus, and a vial of pure essence. Combine all of these in this container and you will have what it is you seek.");
			#:: Give a 48039 - Glosk's Sack
			quest::summonitem(48039);
		}
		else {
			quest::say("I thank you for your services, but I'm afraid you still do not possess the ranking to share the information you seek.");
			#:: Give a 48037 - Rogue Marauder's Head
			quest::summonitem(48037);
		}
	}
	#:: Match a 14794 - Illegible Note: Boots
	elsif (plugin::takeItems(14794 => 1)) {
		quest::emote("hisses and says venomously, 'And I am disturbed yet again. I hope for your sake it is important.");
		quest::emote("The gaunt necromancer looks down at the paper in his hands and after reading a few lines gasps, then falls into a violent coughing fit. After recovering he takes a deep breath, puffs his chest out and hands the paper back to you. With his head held high, he says in a raspy voice 'Show this to Rixiz. He will test you.'");
		#:: Give a 14794 - Illegible Note: Boots
		quest::summonitem(14794);
	}
	#:: Match a 14793 - Illegible Note: Greaves
	elsif (plugin::takeItems(14793 => 1)) {
		quest::emote("snatches the note out of your hands, obviously irritated. After reading a few lines, he glances up at you, his brow furrowed, then looks down again to continue reading. When he's finished, he hands the note back to you and takes a deep breath, shuddering slightly. He then says 'Xydoz. Take this to Xydoz. He will test you.'");
		quest::emote("watches you carefully as you leave.");
		#:: Give a 14793 - Illegible Note: Greaves
		quest::summonitem(14793);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
