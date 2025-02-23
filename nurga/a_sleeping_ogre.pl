sub EVENT_SPAWN {
	#:: Create a timer 'sleep' that loops every 1 second	
	quest::settimer("sleep", 1);
}

sub EVENT_TIMER {
	#:: Match timer 'sleep'
	if ($timer eq "sleep") {
		#:: Stop timer 'sleep'
		quest::stoptimer("sleep");
		#:: 0 = Stand, 1 = Sit, 2 = Duck, 3 = Feign Death, 4 = Kneel
		#:: Set appearance to Feign Death
		$npc->SetAppearance(3);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("yawns, and utters some gibberish, then falls back asleep.");
	}
}

sub EVENT_ITEM {
	
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1685 - Breath of Gwan
		if (plugin::takeItems(1685 => 1) && ($ulevel >= 46) && ($class eq "Monk")) {
		#:: Set appearance to Stand
			$npc->SetAppearance(0);
			quest::say("Your path of wanton destruction ends here. Gwan and Eejag were impatient and hot-headed. You will not defeat me, for I have the patience and perseverance of stone, unlike the children you have beaten before me. Are you sure you want to challenge me?");
			#:: Depop with spawn timer active
			quest::depop_withtimer();
			#:: Spawn one and only one Mines of Nurga >> Trunt (107161), with no grid or guildwar, at the current location
			$trunt = quest::spawn2(107161, 0, 0, $x, $y, $z, $h);
			$npcobj = $entity_list->GetMobID($trunt);
			$truntnpc = $npcobj->CastToNPC();
			$truntnpc->AddToHateList($client,1);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
