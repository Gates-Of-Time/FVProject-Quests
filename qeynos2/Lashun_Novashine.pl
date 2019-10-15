#:: Create a scalar variable to store an item count
my $ItemCount;

sub EVENT_SPAWN {
	#:: Reset item count on spawn
	$ItemCount = 0;
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Well met, $name. My name is Lashun Novashine and I am a humble priest of Rodcet Nife, the Prime Healer. I wish to spread His word to every corner of Norrath. My job gets more difficult each day with so many so willing to take lives rather than preserve them.");
	}
	elsif ($text=~/healing/i) {
		quest::say("Rodcet wills us to cure and heal all who seek it. But he asks that you pay a price in return. I can cure diseases with a small donation of 2 gold pieces. I can also heal your wounds, but as proof of your desire to rid Norrath of the evil of Bertoxxulous and as an offering to the Prime Healer, you must bring me 2 bone chips from the undead that roam these hills.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 13, or 14, or 15
	if ($wp == 13 || $wp == 14 || $wp == 15) {
		quest::shout("Cease this endless conflict and seek salvation in the Temple of Life! The glory of Rodcet Nife awaits you!");
	}
	#:: Match waypoint 57
	elsif ($wp == 57) {
		quest::say("Greetings, people of Qeynos! Are you lost? Has the chaotic life of an adventurer left you empty and alone? Seek redemption in the glorious light of the Prime Healer. Only through Rodcet Nife and the Temple of Life will you find true health and salvation.");
	}
}

sub EVENT_ITEM {
	#:: Match two 13073 - Bone Chips
	if (plugin::takeItems(13073 => 2)) {
		quest::say("Very well, young one. May the light of the Prime Healer wash away your scars.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 1);			#:: + Priests of Life
		quest::faction(280, 1);			#:: + Knights of Thunder
		quest::faction(262, 1);			#:: + Guards of Qeynos
		quest::faction(221, -1);		#:: - Bloodsabers
		quest::faction(219, 1);			#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Cast spell 17 - Light Healing
		$npc->CastSpell(17,$userid);
		#:: Reset item count
		$ItemCount = 0;
	}
	#:: Match one 13073 - Bone Chips
	elsif (plugin::takeItems(13073 => 1)) {
		if ($ItemCount == 0) {
			quest::say("Ah good, I see you seek healing. But you must offer the remains of one more minion of Bertoxxulous before Rodcet will deem you worthy.");
			#:: Increment the item count variable
			$ItemCount++;
		}
		else {
			quest::say("Very well, young one. May the light of the Prime Healer wash away your scars.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(341, 1);			#:: + Priests of Life
			quest::faction(280, 1);			#:: + Knights of Thunder
			quest::faction(262, 1);			#:: + Guards of Qeynos
			quest::faction(221, -1);		#:: - Bloodsabers
			quest::faction(219, 1);			#:: + Antonius Bayle
			#:: Grant a small amount of experience
			quest::exp(100);
			#:: Cast spell 17 - Light Healing
			$npc->CastSpell(17,$userid);
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Match two gold
	elsif (plugin::takeCoin(0, 0, 2, 0)) {
		quest::say("Thank you for the donation to the Temple of Life. May Rodcet Nife cleanse your body of all ills.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 1);			#:: + Priests of Life
		quest::faction(280, 1);			#:: + Knights of Thunder
		quest::faction(262, 1);			#:: + Guards of Qeynos
		quest::faction(221, -1);		#:: - Bloodsabers
		quest::faction(219, 1);			#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Cast spell 213 - Cure Disease
		$npc->CastSpell(213,$userid);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
} 
