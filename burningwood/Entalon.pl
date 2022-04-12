sub EVENT_SAY {
  if ($text=~/hail/i) {		
		quest::emote("smiles at you with a wide grin. 'You are quite brave to approach me and speak. On any other day, I would not give you the opportunity. Fortunately for you, I am preoccupied with my master's [quest].");
  } 
	elsif ($text=~/quest/i) {		
		quest::say("I have but a small task, to find the scribblings of Jarldyn. A Fier'Dal has stolen them. The scribblings will be illegible, but they must be returned to my master who has rightfully won them in battle. If you find them, bring them to me with an emerald plume and I will grant you an audience with my master. Be forewarned, it may be a one way trip.");
  }
}

sub EVENT_ITEM {
	#:: Match a 12990 - Scribblings (Sorcerer Scribblings) and a 12755 Stoneleer Emerald Plume
	if (plugin::takeItems(12990 =>1, 12755 =>1)) {
		quest::say("Ha ha ha!! Fool! I have what I need. Now you are granted an audience with a noble sarnak lord, not my master. I am quite sure he shall do away with you. Ha ha ha!!");
		#:: Ding!
		quest::ding();
		#:: Grant a medium amount of experience
		quest::exp(5000);
		#:: Move client to Burning Woods => Atheling Plague's Tower
		quest::movepc(87, -4039, 6280, -53);		
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}