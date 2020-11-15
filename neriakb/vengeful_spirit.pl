sub EVENT_ITEM {
	#:: Match a 18401 - Scroll of Flayed Goblin Skin
	if (plugin::takeItems(18401 => 1)) {
		quest::emote("flares brightly as you place the scroll into the blue flames of the forge. The scroll quickly catches fire and burns out in a flash of white fire. In it's place is left a hammer. As you snatch the hammer from the flames you hear the spirit begin to cackle wildly and fade away.");
		#:: Give a 6403 - Blued Two-Handed Hammer
		quest::summonitem(6403);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(127, 1);		#:: + Neriak Citizen
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2.5, 30);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
