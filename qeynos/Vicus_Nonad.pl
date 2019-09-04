sub EVENT_SAY {
    #:: Match "fight", case insensitive, if the NPC is not aggro
    if ($text=~/fight/i) {
        quest::say("I don't like to fight!")
    }
}

sub EVENT_AGGRO_SAY {
    #:: Match "fight", case insensitive, if the NPC aggro
    if ($text=~/fight/i) {
        quest::say("I am fighting!")
    }
}

sub EVENT_SPAWN {
	#:: Set a timer "cough" to repeat every 350 seconds (5 min 50 sec)
	quest::settimer("cough",350);
}

sub EVENT_TIMER {
	#:: Match the "cough" timer
	if ($timer eq "cough") {
		quest::emote("coughs and wheezes.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18009 - List of Debtors and 13181 - Full Tax Collection Box
	if (plugin::takeItems(13181 => 1, 18009 => 1)) {
		quest::say("<cough> Great! Thank you so much. Here is a small gratuity for a job well done. Thank you again. <cough> Antonius Bayle and the People of Qeynos appreciate all yo have done.");
		#:: Delete the data bucket
		$key = $client->CharacterID() . "-tax-collection";
		quest::delete_data($key);
		#:: Give a random reward: 13053 - Brass Ring, 10010 - Copper Amulet, 10018 - Hematite, 10017 - Turquoise
		quest::summonitem(quest::ChooseRandom(13053, 10010, 10018, 10017));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(219,10);		#:: + Antonius Bayle
		quest::faction(262,4);		#:: + Guards of Qeynos
		quest::faction(304,-5);		#:: - Ring of Scale
		quest::faction(273,-10);	#:: - Kane Bayle
		quest::faction(291,10);		#:: + Merchants of Qeynos
		#:: Grant a small amount of experience
		quest::exp(500);
		#:: Create a hash for storing cash - 200 to 300cp
		my %cash = plugin::RandomCash(200,300);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 13181 - Full Tax Collection Box
	elsif (plugin::takeItems(13181 => 1)) {
		quest::say("Very good <cough> work. But I need both the full tax collection box and the list of debtors. You did get the [" . quest::saylink("list") . "] from me before you left, right? <cough>");
		#:: Return a 13181 - Full Tax Collection Box
		quest::summonitem(13181);
	}
	#:: Match a 18009 - List of Debtors
	elsif (plugin::takeItems(18009 => 1)) {
		quest::say("Very good <cough> work. But I need both the full tax collection box and the list of debtors. You did get the [" . quest::saylink("list") . "] from me before you left, right? <cough>");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
