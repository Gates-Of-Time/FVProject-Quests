sub EVENT_SPAWN {
      quest::settimer("Kerosh", 1);  
}

sub EVENT_TIMER {
      if ($timer eq "Kerosh") {
            #:: 0=Stand, 1=Sit, 2=Duck, 3=Feign Death, 4=Kneel
            $npc->SetAppearance(1);
            quest::stoptimer("Kerosh");
      }
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
