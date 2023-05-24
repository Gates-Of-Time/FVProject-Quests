sub EVENT_DEATH_COMPLETE {
	# Shmendrik will probably be killed by Natasha Whitewater without intervention
	# eqcastersrealm say that the player can also kill him, not important as long as he dies

	#:: Send a signal '599' to Lake Rathetear >> #Natasha_Whitewater (51138) with a 2 second delay
	quest::signalwith(51138, 599, 2000);
	#:: Spawn a spirit of flame at the same spot
	quest::unique_spawn(51145, 0, 0, $x, $y, $z, $h);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, good $name!! Be wary near the waters of Lake Rathe! The Riptide goblin king, Lord Bergurgle, has been commanding his minions to murder and rob all who come near it! I am here seeking his death but I am afraid I am no match for all of his subjects. I shall reward you greatly for the death of Lord Bergurgle. I simply ask that you bring me his crown as proof.");
	}
}

sub EVENT_ITEM {
	# Match a 28044 - Lord Bergurgle's Crown
	if (plugin::takeItems(28044 => 1)) {
		quest::emote("shoves the crown into a scorch marked leather satchel and cackles uncontrollably as madness twists his features and flames dance in his eyes. 'You, $name, have reduced the Riptides into chaos! Without a king to keep them in control they will ravage the settlements surrounding this lake! After the slaughter I shall return and easily burn the remainder of the villages and fishing shanties to the ground! None shall escape the fires of the Tyrant!!'");
		#:: Get a 28045 - Oil of Fennin Ro
		quest::summonitem(28045);
	
	 	#:: Spawn one and only one Lake Rathe >> Natasha Whitewater (51138) without grid or guild war, at the specified location
		my $entid=quest::unique_spawn(51138, 0, 0, 158.79, 3630.43, 54.02, 387); # Natasha Whitewater, spawns in the hut nearby (loc to be adjusted)
		my $mob=$entity_list->GetMobID($entid);
		my $mobnpc=$mob->CastToNPC();
		#:: Add Shmendrik to #Natasha_Whitewater(51138) hatelist (so she attacks him)
		$mobnpc->AddToHateList($npc, 1);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '99' from Lake Rathetear >> #Natasha_Whitewater (51138) which she sends in EVENT_SPAWN after shouting at Shmendrik
	if ($signal == 99) {
		quest::say("I'll slay you like I slaughtered your fellow missionaries! The Triumvirate can not decide the fate of a follower of the Tyrant!!");
		#:: Send signal 199 to Lake Rathetear >> #Natasha_Whitewater (51138) with a 2 second delay
		quest::signalwith(51138, 199, 2000);
	}
	if ($signal == 299) {
		$natasha = $entity_list->GetMobByNpcTypeID(51138);
		if ($natasha) {
			$getshmend = $natasha->CastToNPC();
			$getshmend->AddToHateList($npc, 1);
		}
	}
}
