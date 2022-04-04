sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Hello there, $name! I hope you are enjoying your visit to the outpost. I know I sure am.");
  }
}

sub EVENT_ITEM {
	#:: Match a 6067 - Bound Research Notes
	if (plugin::takeItems(6067 => 1)) {
    quest::say("Oh no! I have been tracked down. Can't I have a moment's peace? I'm sorry you went through all the trouble to get this to me, but I'm not delivering mail right now. I'm trying to take a vacation. You'll have to deliver it to Lanivon Baxer in the Toxxulia Forest yourself. Here, take it back. I have packaged it up nicely for the journey.");
    #:: Give a 6069 - Packaged Research Notes
		quest::summonitem(6069);
		#:: Ding!
		quest::ding();
  }
  
	#:: Return unused items
	plugin::returnUnusedItems();
}
