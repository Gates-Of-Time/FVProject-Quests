sub EVENT_SAY {
	if ($text=~/hail/i) {
		if ($qglobals{"shadowknight_epic"} == "9") {
			quest::emote("screams out in pain as his body becomes wracked with spasms. Slowly his body seems to deteriorate into something not quite so human. 'Lhranc the all powerful cannot be defeated. You are doomed!");
			$npc->SetSpecialAbility(19, 0);
			$npc->SetSpecialAbility(20, 0);
			$npc->SetSpecialAbility(24, 0);
			$npc->SetSpecialAbility(25, 0);
			$npc->SetSpecialAbility(35, 0);
			$npc->AddToHateList($client, 1);
		}
	}
}
