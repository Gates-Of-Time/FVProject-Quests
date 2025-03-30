# EPIC CLERIC

sub EVENT_DEATH {
	# he will be killed probably by Natasha Whitewater.
	# eqcastersrealm say that the player can also kill him, not important as long as he dies
	quest::signalwith(51138,599,2000);
}


sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Hail, good $name!! Be wary near the waters of Lake Rathe! The Riptide goblin king, Lord Bergurgle, has been commanding his minions to murder and rob all who come near it! I am here seeking his death but I am afraid I am no match for all of his subjects. I shall reward you greatly for the death of Lord Bergurgle. I simply ask that you bring me his crown as proof.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28044 - Lord Bergurgle's Crown
		if (plugin::takeItems(28044=>1)) {
			quest::emote("shoves the crown into a scorch marked leather satchel and cackles uncontrollably as madness twists his features and flames dance in his eyes. 'You, $name, have reduced the Riptides into chaos! Without a king to keep them in control they will ravage the settlements surrounding this lake! After the slaughter I shall return and easily burn the remainder of the villages and fishing shanties to the ground! None shall escape the fires of the Tyrant!!'");
			#:: Give a 28045 - Oil of Fennin Ro
			quest::summonitem(28045);
			#:: Ding!
			quest::ding();
			#:: Spawn a Lake Rathetear >> #Natasha_Whitewater (51138), without grid or guild war, at the given location
			quest::spawn2(51138,0,0,111,3627.3,51,192.4);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	if ($signal == 99) {
		quest::say("I'll slay you like I slaughtered your fellow missionaries! The Triumvirate can not decide the fate of a follower of the Tyrant!!");
		#:: Send a signal "199" to Lake Rathetear >> #Natasha_Whitewater (51138) with a two thousand delay
		quest::signalwith(51138,199,2000);
	}
	if ($signal == 299) {
		#:: Send a signal "399" to Lake Rathetear >> #Natasha_Whitewater (51138) with a two thousand delay
		quest::signalwith(51138,399,2000);
	}
	if ($signal == 499) {
		$natasha = $entity_list->GetMobByNpcTypeID(51138);
		if ($natasha) {
			$natasha_npc = $natasha->CastToNPC();
			$natasha_npc->AddToHateList($npc, 1);
		}
	}
}
