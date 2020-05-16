sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome. A brother of the Indigo you must be. Why else would one dare to roam the corridors of the Cauldron of Hate? You were most likely sent to speak with Yegek. If so, speak up and tell Yegek who [sent] you.");
	}
	elsif ($text=~/seloxia punox sent me/i) {
		quest::say("You are new blood! I shall help you to face the dangers. For now, you must listen. First we must be sure to increase your skill by combat. Take this bag to the outside and fill it with three beetle eyes and three bone shards from the undead. Combine and return it. Then we shall reward you and continue. Do not lose the short sword you had upon entering our brotherhood. We just may need it later on.");
		#:: Give a 17942 - Empty Bag
		quest::summonitem(17942);
	}
	elsif ($text=~/second test/i) {
		#:: Key a data bucket
		$key = $client->CharacterID() . "-Yegek-part-two";
		#:: Match if the data bucket exists
		if (quest::get_data($key)) {
			quest::say("You will now learn what happens to those undesirables who once called themselves Indigo. But first, you will hand me your sword which was given to you by the Indigo Brotherhood. This battle must be fought without a blade. Show us your strength!");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13887 - Bag of Eyes n Bones
	if (plugin::takeItems(13887 => 1)) {
		quest::say("Very nice work. Here are some provisions. Now are you [ready for the second test]?");
		#:: Give a random reward:  13005 - Iron Ration, 13007 - Ration
		quest::summonitem(quest::ChooseRandom(13005, 13007));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(270, 5); 		#:: + Indigo Brotherhood
		quest::faction(326, -1);		#:: - Emerald Warriors
		quest::faction(311, -1); 		#:: - Steel Warriors
		quest::faction(1522, -10);		#:: - Primordial Malice
		#:: Grant a small amount of experience
		quest::exp(500);
		#:: Create a hash for storing cash - 1 to 10cp
		my %cash = plugin::RandomCash(1,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Key a data bucket
		$key = $client->CharacterID() . "-Yegek-part-two";
		#:: Set the value to 1, forever
		quest::set_data($key, 1);
	}
	#:: Match a 9998 - Short Sword*
	elsif (plugin::takeItems(9998 => 1)) {
		#:: Key a data bucket
		$key = $client->CharacterID() . "-Yegek-part-two";
		#:: Match if the data bucket exists
		if (quest::get_data($key)) {
			quest::say("Those young warriors who dared to run from battle are now our fodder. They shall help us teach you that sometimes you must kill your own kind. In the center of the arena we have set a coward. Show me you can kill your own when required and bring me his head. Do not grant him mercy nor allow him to flee.");
			#:: Spawn one and only one Neriak - Commons >> TeirDal_coward (41098) without a path grid, without guild war, at the specified location
			quest::unique_spawn(41098, 0, 0, -1219, -25, -26, 260);
		}
		else {
			quest::say("I have no use for this item, $name.  You can have it back.");
			#:: Return a 9998 - Short Sword*
			quest::summonitem(9998);
		}
	}
	#:: Match a 13388 - Teir`Dal Head
	elsif (plugin::takeItems(13388 => 1)) {
		#:: Key a data bucket
		$key = $client->CharacterID() . "-Yegek-part-two";
		#:: Match if the data bucket exists
		if (quest::get_data($key)) {
			quest::say("You have performed greatly. A coward deserves no pity or mercy. You will be a fine addition to our house. Let us replace your weapon with this, a sullied two handed sword! The weapon of a young brother of this hall. It is a finer weapon than your first. Go and spread the hate of Innoruuk.");
			#:: Give a 10715 - Sullied Two Handed Sword
			quest::summonitem(10715);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(270, 15); 		#:: + Indigo Brotherhood
			quest::faction(326, -2);		#:: - Emerald Warriors
			quest::faction(311, -1); 		#:: - Steel Warriors
			quest::faction(1522, -30);		#:: - Primordial Malice
			#:: Grant a moderate amount of experience
			quest::exp(1000);
		}
		else {
			quest::say("I have no use for this item, $name.  You can have it back.");
			#:: Return a 13388 - Teir`Dal Head
			quest::summonitem(13388);
		}
	}
	#:: Do all other handins first with plugin, then let it do disciplines
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
