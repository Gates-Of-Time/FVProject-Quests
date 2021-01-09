sub EVENT_SAY {
	if ($text=~/solusek ro/i) {
		quest::say("Solusek Ro is the Master of Fire and the Keeper of Power.");
	}
	elsif ($text=~/plasmatic priest/i) {
		quest::say("You speak of things that should not be spoken! It would be in your best interest to leave this temple at once and return to lands less consumed by flame!");
	}
}

sub EVENT_ITEM {
	#:: Match a 28051 - Coral Statue of Tarew
	if (plugin::takeItems(28051 => 1)) {
		quest::emote("shakes violently as his hand closes on the coral statue and flames dance in the depths of his eyes! The statue begins to emit a reddish glow then shatters in a burst of fire and smoke! The flames in the plasmatic priest's eyes vanish with the explosion and only madness remains!");
		quest::say("The Triumvirate thinks that destroying my spirit of flame will stop me?!! I will kill you all now, the goblins will continue to war, and when my spirit is restored I will ensure that Ixiblat Fer consumes all of Norrath in his flames!!");
		#:: Spawn The Temple of Solusek Ro >> a_plasmatic_priest (80042) at the current location
		$priest = quest::spawn2(80042, 0, 0, $x, $y, $z, 0);
		$attack = $entity_list->GetMobID($priest);
		$priestattack = $attack->CastToNPC();
		$priestattack->AddToHateList($client, 1);
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
