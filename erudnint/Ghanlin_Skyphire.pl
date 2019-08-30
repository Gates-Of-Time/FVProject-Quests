sub EVENT_SPAWN {
	#:: Set up a 50 unit distance
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Check for 18727 - Tattered Note
	if (plugin::check_hasitem($client, 18727)) {
		$client->Message(15,"Ghanlin Skyphire, a stern and powerful looking man looks your way, 'What is this? An apprentice wizard in our ranks? If so, then read the note in your inventory and hand it to me to start your training. With my help you will start on the path to becoming a great and powerful wizard if that be your will.'");
	}
}
	
sub EVENT_ITEM {
	#:: Match turn in for 18727 -  tattered note
	if (plugin::check_handin(\%itemcount, 18727 => 1)) {
		quest::say("Greetings. I am Ghanlin Skyphire, Master Wizard of the Crimson Hands. All of us here have devoted our lives to the studies of the arcane and mystical. Let's get you started. Here's your training robe.  Now, go find Raskena. She'll help train you and give you your first lesson.");
		#:: Give item 13550 - Old Used Robe*
		quest::summonitem(13550);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(233,100);		#:: + Crimson Hands
		quest::faction(266,10);		#:: + High Council of Erudin
		quest::faction(265,-15);	#:: - Heretics
		quest::faction(267,15);		#:: + High Guard of Erudin
	}
	plugin::return_items(\%itemcount);
}
