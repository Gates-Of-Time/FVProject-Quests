sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}
sub EVENT_ENTER {
  #:: Check for 18726 - tattered note (guild summons)
  if(plugin::check_hasitem($client, 18726)) { 
		$client->Message(15,"An important looking Erudite turns to greet you as you enter the room. 'Greetings. A young recruit perhaps? I am Depnar Bulrious, your new Guild Master. Read the note in your inventory and then hand it to me when you are ready to begin your training. Truth awaits!'");
  }
}  
sub EVENT_SAY {	
	if ($text=~/Hail/i) {
		quest::say("Hail. $name! I am the master of the paladins among the Peacekeepers. Have you [" . quest::saylink("joined") . "] the harmony of the Peacekeepers or are you merely a visitor?");
	}
	if ($text=~/joined/i) {
		quest::say("Then go and speak with the other Peacekeepers. Do your part to promote the words of Quellious.");
	}
}
sub EVENT_ITEM {
	#:: Turn in for 18726 -  tattered note
	if (plugin::check_handin(\%itemcount, 18726 => 1)) {
		quest::say("Welcome to the Temple of Divine Light. I am Master Bulrious. Here. we study and spread the will of Quellious. Here is your guild tunic. Go find Jras Solsier. he will get you started with your first lesson.");
		#:: Give item 13546 - Faded silver Tunic*
		quest::summonitem(13546);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(247,100); 	#:: + Peace Keepers
		quest::faction(145,25); 	#:: + High Council of Erudin
		quest::faction(143,-25); 	#:: - Heretics
		}
		plugin::return_items(\%itemcount);
}
