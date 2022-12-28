sub EVENT_ITEM {
	#:: Match a 1681 - Engraved Ring
	if (plugin::takeItems(1681 => 1)) {
		quest::say("Nothing is left to hide now. You shall have the truth. But truth is not won easily and if you cannot defeat me, you have not the ability to see that vengeance is served. Brace yourself!");
		#:: Ding!
		quest::ding();
		#:: Depop without spawn timer
		quest::depop();
		#:: Set factions
		quest::faction(404, 50);		#:: + Truespirit
		#:: Spawn a City of Mist >> #Neh`Ashiir_  (90181), without grid or guild war, at the current location
		quest::spawn2(90181, 0, 0, $x, $y,- $z, 0);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}