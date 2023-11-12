sub EVENT_SPAWN {
	#:: Create a scalar variable to store a random number 10 - 39
	my $freq = int(rand(30))+10;
 	#:: Create a timer 'eat' that loops at the random frequency
	quest::settimer("eat", $freq);
}

sub EVENT_TIMER {
	if ($timer eq "eat") {
 		#:: Create an array of the NPC entities in the zone
		my @npc_list = $entity_list->GetNPCList();
		#:: For each member of the list...
		foreach $npc_ent (@npc_list) {
  			#:: Match if entity is a Kedge Keep >> aqua_goblin_prisoner (64083)
			if ($npc_ent->GetNPCTypeID() == 64083) {
   				#:: Match if distance is within 100 units and line of sight is clear
				if ($npc_ent->CalculateDistance($x, $y, $z) < 100 && $npc->CheckLoS($npc_ent)) {
    					#:: Git 'em
	 				$npc->Attack($npc_ent);
				}
    			}
       		}
	}
 }
