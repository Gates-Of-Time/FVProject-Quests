sub EVENT_SPAWN {
	#:: Create a timer 'vacuum' that triggers every second
	quest::settimer("vacuum", 1);
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Pull a list of clients from the entity list
	my @ClientList = $entity_list->GetClientList();
	#:: Match if the ClientList array is empty
	if (scalar @ClientList == 0) {
		#:: Pull a list of objects from the entity list
		my @objects = $entity_list->GetObjectList();
		#:: Loop through each
		foreach $thing (@objects) {
			#:: Create a scalar variable to store each item by ID
			my $item = $thing->GetItemID();
			#:: Create a scalar variable to store ground spawn status
			my $ground = $thing->IsGroundSpawn();
			#:: Match if the item was dropped and was not a ground spawn
			if ($item != 0 && $ground == 0) {
				my $mobX = $thing->GetX();	
				my $mobY = $thing->GetY();	
				my $mobZ = $thing->GetZ();	
				#:: Calculate the distance from the NPC to the object
				my $cdist = $npc->CalculateDistance($mobX, $mobY, $mobZ);
				#:: Match if the item is near the NPC
				if ($cdist <= 20) {
					quest::emote("Clockwork Scrubber clicks as a plate slides to the side revealing a hose that extends and sucks up an item off the ground.");
					#:: Remove the item from the ground
					$thing->Depop();
					#:: Add the item to the NPC loot table
					$npc->AddItem($item);
				}
			}
		}
	}
}
