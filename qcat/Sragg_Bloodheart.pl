sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18706 - Stained Cloth Note
	if(plugin::check_hasitem($client, 18706)) { 
		$client->Message(15,"As you orient yourself amongst the filth and decay of the catacombs, a menacing figure turns to address you. 'I am Sragg Bloodheart. Should you wish to dedicate your pathetic life to the way of Bertoxxulous and learn the ways of the Shadowknight, read the note in your inventory and hand it to me to begin your training.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18706 - Stained Cloth Note
	if(plugin::takeItems(18706  => 1)) {
		quest::say("Ah, another would-be soldier for the army of the Plaguebringer. Unmuz has just lost a few of his men, he'll have plenty of work for you. I'm sure. Begone!");
		#:: Give a 13598 - Ruined Training Tunic*
		quest::summonitem(13598);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(221, 100);		#:: + Bloodsabers
		quest::faction(262, -15);		#:: - Guards of Qeynos
		quest::faction(296, 10);		#:: + Opal Darkbriar
		quest::faction(341, -25);		#:: - Priest of Life
		quest::faction(230, 5);			#:: + Corrupt Qeynos Guards
		#:: Grant a small amount of experience
		quest::exp(100);	
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
