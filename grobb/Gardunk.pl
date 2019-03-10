sub EVENT_SPAWN {
	#:: Get current location
	$x = $npc->GetX();
	$y = $npc->GetY();
	$z = $npc->GetZ();
	#:: Create a proximity, 50 units across, 50 units tall, without proximity say
	quest::set_proximity($x - 25, $x + 25, $y - 25, $y + 25, $z - 25, $z + 25, 0);
}

sub EVENT_ENTER {
	#:: Match a 18845 - Tattered Note
	if (plugin::check_hasitem($client, 18845)) {
		$client->Message(15,"As your eyes adjust to the darkness, a large troll covered in scars turns towards you. 'I be Gardunk. You read note in inventory and hand to me to start training. Me make you strong like animal!'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18845 - Tattered Note
	if (plugin::takeItems(18845 => 1)) {
		quest::say("You fight like alligator and tear enemy limb from limb!  Wear tunic that smell of swamp an devour enemy wit brodder Dark Ones!  You go see Gargh now, he got work for you!");
		#:: Give a 13576 - Molding Tunic*
		quest::summonitem(13576);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(70, 15);		#:: + Dark Ones
		quest::faction(292, 3);		#:: + Shadowknights of Night Keep
		quest::faction(106, -2);	#:: - Frogloks of Guk
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
