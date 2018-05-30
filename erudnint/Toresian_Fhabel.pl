sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome. my friend! We are the Craftkeepers. We study the circle of magic called enchantment. What circle do you [" . quest::saylink("study") . "]?");
	}
	if ($text=~/study/i) {
		quest::say("Then I welcome you into our circle. It is good to see new blood. I have a favor to ask of you. Do you wish to [" . quest::saylink("assist Toresian") . "] or do you not have the time?");
		if (!$entity_list->IsMobSpawnedByNpcTypeID(23080) || !$entity_list->IsMobSpawnedByNpcTypeID(23001) {
			quest::unique_spawn(quest::ChooseRandom(23080,23001),0,0,575,683,-12.13,78);
		}
	}
	if ($text=~/assist Toresian/i) {
		if ($faction < 5) {
			quest::say("Ahhhhh $name.  Slansin used to have need of those potions, however he mysteriously disappeared long ago. The only person I know of who still wants them is a cleric of the Church of Marr in Freeport.");			
			quest::summonitem(13983);
		}
		elsif ($faction => 5) {
			quest::say("You are lucky to be standing. Leave here immediately or suffer grave consequences! You are not welcome amongst the Craftkeepers.");
		}
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
