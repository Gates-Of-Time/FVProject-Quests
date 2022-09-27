sub EVENT_SAY {
	if ($text=~/hail/i) {  
		quest::say("And who do you think you are? To step into the Cauldron of Hate one should have the black soul of a warrior. For one to speak with Trizam he should have good reason. Perhaps you return with tales of [deathfist] agendas. If so, then you're a year too late.");
	}
	elsif ($text=~/deathfist/i) {
		quest::say("Have you been spending day and night at the Maiden's Fancy?!! The Deathfist Orcs in the Commonlands are up to something. As the inept humans in Freeport hunt down the warrior orcs, the pawns run about on some secret mission. I have been appointed by King Nathox to attend to this matter and hire young warriors who wish to [collect] pawn kills.");
	}
	elsif ($text=~/collect/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Yes, You will. You need not know the reason why. I command you by order of King Naythox Thex to venture forth to the Commonlands and slay all the orc pawns you see. Return with four pawn picks and maybe I shall even reward you. Leave at once or you shall find yourself hanging from the Hooks of Innoruuk!");
		}
		else {
			quest::say("Go!! Return when you have done more to serve the Indigo Brotherhood of Neriak.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match four 13885 - Orc Pawn Pick
	if (plugin::takeItems(13885 => 4)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("As instructed, I shaw reward your good deed. But I choose to reward you with provisions from the pantries of Neriak. They shall keep you strong.");
			#:: Give two items as a random reward:  13021 - Neriak Nectar or 13022 - Rotgrub Rye
			quest::summonitem(quest::ChooseRandom(13021, 13022), 2);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(270, 10);		#:: + Indigo Brotherhood
			quest::faction(326, -1);		#:: - Emerald Warriors
			quest::faction(311, -1);		#:: - Steel Warriors
			quest::faction(1522 , -20);		#:: - Primordial Malice
			#:: Grant a small amount of experience
			quest::exp(25);
			#:: Create a hash for storing cash - 150 to 200cp
			my %cash = plugin::RandomCash(150,200);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("Go!! Return when you have done more to serve the Indigo Brotherhood of Neriak.");
			#:: Return four 13885 - Orc Pawn Pick
			quest::summonitem(13885);
			quest::summonitem(13885);
			quest::summonitem(13885);
			quest::summonitem(13885);
		}
	}
	#:: do all other handins first with plugin, then let it do disciplines
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
