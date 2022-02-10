sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("shows the signs of a great mystic. You can feel the power resonating from his aura. 'Greetings and may the cursed blessings of Cazic-Thule be yours. What may I do for you this fine evening? Perhaps I can [cure disease] or [heal] you, perhaps even [purge toxins] from your system?'");
	}
	elsif ($text=~/cure disease/i) {
		quest::say("Your malady shall dissipate once you deliver to me one giant blood sac.");
	}
	elsif ($text=~/heal/i) {
		quest::say("I can call upon the power of the ancients to mend your wounds if you can deliver to me two brittle Iksar skulls.");
	}
	elsif ($text=~/purge toxins/i) {
		quest::say("The toxins shall surely be purged from your system when I have proof of your allegiance to the empire. Let that proof be one goblin watcher signal torch.");
	}
	elsif ($text=~/rok nilok/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			#:: Key a data bucket
			$key = $client->CharacterID() . "-skull-quest";
			if (quest::get_data($key) == 4) {
				quest::emote("lowers his head in sorrow let us have a moment of peace. I cannot find the words to speak of the unspeakable act of the gods which took the lives of the legendary Crusaders of Rok Nolok. You must find the answers for yourself. All I can do is wait for their return. ");
			}
		}
	}
	elsif ($text=~/galdon vok nir/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			#:: Key a data bucket
			$key = $client->CharacterID() . "-skull-quest";
			if (quest::get_data($key) == 5) {
				quest::say("He is a merchant hiding in The Overthere. He is greedy and will not give the skull up easily. Seek him out and ask him what he would [trade] for the skull.");
			}
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 12671 - Giant Blood Sac
	if (plugin::takeItems(12671 => 1)) {
		quest::emote("grabs from his beltpouch a fine dust and cakes the slimy blood sac with it. He then punctures the sac and smears the blood upon your chest. Your chest tingles. Your fill your lungs and exhale a bitter mist.");
		#:: Cast spell 213 - Cure Disease
		$npc->CastSpell(213, $userid);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(441, 1);		#:: + Legion of Cabilis
	}
	#:: Match two 12739 - Brittle Iksar Skull
	elsif (plugin::takeItems(12739 => 2)) {
		quest::emote("takes the skulls and holds them before your wounds. They shatter into a fine glowing powder and you feel your wounds being cauterized with no visible flame upon them.");
		#:: Cast spell 17 - Light Healing
		$npc->CastSpell(17, $userid);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(441, 1);		#:: + Legion of Cabilis
	}
	#:: Match a 12441 - Watcher Signal Torch
	elsif (plugin::takeItems(12441 => 1)) {
		quest::emote("chants in an unknown tongue as he takes a dagger and slits your forearm. He then takes a tiny glowing vein worm from his beltpouch and forces it into the open wound. You feel the worm explode within. The pain is unbearable, but then, a coolness courses through your body.");
		#:: Cast spell 203 - Cure Poison
		$npc->CastSpell(203, $userid);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(441, 1);		#:: + Legion of Cabilis
	}
	#:: Match if faction is Indifferent or better
	if ($faction <= 5) {
		#:: Match a 12736 - Full C.O.R.N. Chest and a 5143 - Iron Cudgel of the Mystic
		if (plugin::takeItems(12736 => 1, 5143 => 1)) {
			quest::say("I see that you have found your answers. Now I must ask you to to retrieve for the council the skulls of the Di Nozok.  The sarnak in Lake of Ill Omen hold one of the skulls, while [Galdon Vok Nir] holds the other. Once you have retrieved them, give them to Hierphant Zand.");
			#:: Give a 5144 - Iron Cudgel of the Prophet
			quest::summonitem(5144);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(445, 10);	#:: + Scaled Mystics
			quest::faction(441, 10);	#:: + Legion of Cabilis
			$key = $client->CharacterID() . "-skull-quest";
			if (quest::get_data($key) == 4) {
				quest::set_data($key, quest::get_data($key) + 1);
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
