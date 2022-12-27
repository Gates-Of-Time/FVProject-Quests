# Part of SK Epic 1.0
# items: 14384, 14383

sub EVENT_SAY {
  $faction = $client->GetCharacterFactionLevel(404); #True Spirit
  if ($faction >= 82) {
    quest::say("Alas, I cannot be the one to carry the sword back to my people as proof in fear they will kill me to possess it for their own. I think a simple trade is in order. Perhaps you have a symbol or token of Lhanrc's that I could take back to the others to ease their worries?");
  }
  else {
    quest::emote("seems to ignore you.");
  }
}

sub EVENT_ITEM {
  $faction = $client->GetCharacterFactionLevel(404); #True Spirit
  if ($faction >= 82) {
		#:: Match a 14384 - Lhranc's Token
		if (plugin::takeItems(14384 => 1)) {
      quest::say("Very good, I will go deliver this right away.");
			#:: Give a 14383 - Innoruuk's Curse
      quest::summonitem(14383);
			#:: Ding!
			quest::ding();
			#:: Depop without spawn timer
      quest::depop();
    }
  }
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
