sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Greetings, $name.  I am Gretta Mottle's assistant, Buggle.  I tend to the bakery for her during the night.  I can only make one thing though..  Meat Pie.  Poor Gretta is in desperate need of help right now so I'm trying to learn how to make muffins for her."); 
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
