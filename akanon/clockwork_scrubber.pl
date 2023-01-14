my $miner628 = "false";

sub EVENT_SPAWN {
	#:: 1 in 20 will be 628
	my $random = int(rand(100));
	if ($random <= 5) {
		$miner628 = "true";
	}
	#:: Create a timer 'vacuum' that triggers every second
	quest::settimer("vacuum", 1);
}

sub EVENT_SAY {
	#:: 1 in 20 will respond to 628
	if ($text=~/628/i && $miner628 eq "true") {
		quest::emote(".wizz.click.628.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12164 - Scrubber Key (Rogue Scrubber Key)
	if (plugin::takeItems(12164 => 1) && $miner628 eq "true") {
		quest::emote(".wizz.click.628.");
		#:: Choose a random 12162 - Gnome Take (Good Take For Rogues), 12167 - Gnome Take (Bad Take For Rogues)
		quest::summonitem(quest::ChooseRandom(12162, 12167));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(695, -5);		#:: - Clockwork Gnome
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Pull a list of clients from the entity list
	my @ClientList = $entity_list->GetClientList();
	#:: Match if the ClientList array is empty
	if (scalar @ClientList != 0) {
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
