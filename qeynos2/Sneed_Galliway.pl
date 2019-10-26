sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. I am Sneed Galliway, merchant and citizen. I run the only general store in all of Qeynos, serving the needs of the many adventurers who call Qeynos home. If only one of them would take the time to help me with my er... [problem]...");
	}
	elsif ($text=~/problem/i) {
		quest::say("Shhh.. Keep it down. It seems I have a little rodent problem in my store. A mangy rat keeps digging into my crates of rations. He looks as if he is diseased. If you help me by killing this pest, I will make it worth your while. Bring me his head as proof it is done.");
	}
	elsif ($text=~/tax collection/i) {
		#:: Data bucket to verify quest has been started appropriately
		$key = $client->CharacterID() . "-tax-collection";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Hey, $name, how the heck did Vicus convince you to do his job? He better be paying you well. Here you go.");
			#:: Give a 13172 - Galliway's Tax Payment
			quest::summonitem(13172);
			#:: Set faction
			quest::faction(291,-1);		#:: - Merchants of Qeynos
		}
	}
	elsif ($text=~/ronn castekin/i) {
		quest::say("Ronn? I saw him a few days ago. He was with someone dressed in black I didn't recognize .. I think I saw them later that day, swimming in the north pond. They really should stay away from the aqueducts. They can be quite dangerous. Full of rats, ya know.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13717 - Rat Head
	if (plugin::takeItems(13717 => 1)) {
		quest::say("HA! Good work! I knew you were the person for the job. A regular ratslayer you are. Here is your reward as promised, be sure you keep this between us.");
		#:: "Sometimes" give a reward
		#:: Create a scalar variable to store a random number 1-5
		my $randomChance = quest::ChooseRandom(1,2,3,4,5);
		#:: Match if greater than 3 (40 percent chance)
		if ($randomChance > 3) {
			#:: Give a random reward:  13100 - Fishing Pole, 13002 - Torch, 13006 - Water Flask
			quest::summonitem(quest::ChooseRandom(13100, 13002, 13006));
		}
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(291, 25);		#:: + Merchants of Qeynos
		quest::faction(223, -5);		#:: - Circle of Unseen Hands
		quest::faction(219, 3);			#:: + Antonius Bayle
		quest::faction(229, 2);			#:: + Coalition of Tradefolk
		quest::faction(262, 5);			#:: + Guards of Qeynos
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 1 to 5cp
		my %cash = plugin::RandomCash(1,5);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
