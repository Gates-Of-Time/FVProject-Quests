sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 4196 - Dull Diamond
		if (plugin::takeItems(10631 => 1)) {
			$x = $npc->GetX();
			$y = $npc->GetY();
			$z = $npc->GetZ();
			quest::say("You have no idea what it is like to be trapped in this place. Take your precious little stone and leave this place.");
			#:: Give a 10618 - Enchanted Diamond
			quest::summonitem(10618);
			#:: Ding!
			quest::ding();
			#:: Spawn Kaesora >> enraged_spectral_librarian (88087) at the current location
			$mob = quest::spawn2(88087, 0, 0, $x, $y, $z, 0);
			$mobid = $entity_list->GetMobID($mob);
			$mobattack = $mobid->CastToNPC();
			$mobattack->AddToHateList($client, 1);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
  }

	#:: Return unused items
	plugin::returnUnusedItems();
}
