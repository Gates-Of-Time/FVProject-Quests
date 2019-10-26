sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ahhhgggg.. Those mangy [dogs] put up a tough fight.. If I don't make it back to the [Clan House] soon, it'll all be over for me.");
	}
	elsif (($text=~/dogs/i) || ($text=~/mutts/i)) {
		quest::say("It's those Darkpaws.. They've beat me pretty badly.. but they'll get theirs soon enough!");
	}
	elsif ($text=~/clan house/i) {
		quest::say("I am a new member of the Silent Fist Clan.. I need someone from my guild to help me find my way back.");
	}
	elsif ($text=~/seta sent me to find you/i) {
		#:: Data bucket to verify quest has been started appropriately
		$key = $client->CharacterID() . "-tomer-find";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Oh.. Thank goodness you found me.. I'm lost and weak, those [mutts] are a vicious lot.. Can you carry my [backpack] for me?");
			#:: Delete the data bucket
			$key = $client->CharacterID() . "-tomer-find";
			quest::delete_data($key);
			#:: Data bucket to verify quest has progressed appropriately
			$key = $client->CharacterID() . "-tomer-found";
			#:: Set a data bucket to a value of "1"
			quest::set_data($key, 1);
		}
	}
	elsif ($text=~/backpack/i) {
		#:: Data bucket to verify quest has progressed appropriately
		$key = $client->CharacterID() . "-tomer-found";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			#:: Data bucket to verify quest has progressed appropriately
			$key = $client->CharacterID() . "-tomer-backpack";
			#:: Match if the key exists
			if (quest::get_data($key)) {
				quest::say("Thank you, friend.. Now, can you [lead me back to Master Seta] of the Silent Fist Clan? ");
			}
			else {
				quest::say("Thank you, friend.. Now, can you [lead me back to Master Seta] of the Silent Fist Clan? ");
				#:: Give a 20459 - Bag of Provisions
				quest::summonitem(20459);
				#:: Data bucket to verify quest has progressed appropriately
				$key = $client->CharacterID() . "-tomer-backpack";
				#:: Set a data bucket to a value of "1"
				quest::set_data($key, 1);
			}
		}
	}
	elsif (($text=~/lead you back to master seta/i) || ($text=~/lead me back to master seta/i)) {
		#:: Data bucket to verify quest has progressed appropriately
		$key = $client->CharacterID() . "-tomer-found";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Lead the way, and I shall follow. When we make it back, please inform Seta that you have rescued me.");
			#:: Follow the player who triggered this event
			quest::follow($userid);
		}
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from qeynos2/Seta_Bakindo.pl
	if ($signal == 1) {
		quest::say("I am now accepting quests.");
		quest::say("Yes, he saved my life.. I owe him much thanks. Please return my pack to me now, good friend.");
	}
}

sub EVENT_ITEM {
	#:: Match a 20459 - Bag of Provisions
	if (plugin::takeItems(20459 => 1)) {
		#:: Data bucket to verify quest has progressed appropriately
		$key = $client->CharacterID() . "-tomer-rescued";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Oh, you have the makings of a true hero.. The Silent Fist Clan is proud to have you as ally. May your soul guide and protect you through these chaotic times.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(309, 35);		#:: + Silent Fist Clan
			quest::faction(262, 5);			#:: + Guards of Qeynos
			quest::faction(361, 1);			#:: + Ashen Order
			#:: Grant a small amount of experience
			quest::exp(100);
			#:: Delete the data bucket
			$key = $client->CharacterID() . "-tomer-backpack";
			quest::delete_data($key);
			#:: Delete the data bucket
			$key = $client->CharacterID() . "-tomer-rescued";
			quest::delete_data($key);
			#:: Stop following the player who triggered this event
			quest::sfollow();
		}
		else {
			#:: Made up based on prior response
			quest::say("I am not accepting quests.");
			#:: Return a 20459 - Bag of Provisions
			quest::summonitem(20459);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH {
	quest::say("Aaarrrgggg... I have failed... the Silent Fists... forgive... me... Lu'Sun...");
}
