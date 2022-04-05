# items: 62075, 62074, 62193
sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Pungub is happy to be free from the mines. Pungub wants some gobbys to die will you kill gobbys for Pungub?");
  }
  elsif ($text=~/kill gobbys/i) {
    quest::say("Good Pungub is happier! Go kill the gobbys called taskmasters and bring back three Nurgan Taskmaster Whips. Pungub also wants the Dagger of the Sneak that Thabis has. If you bring to Pungub, Pungub will give good reward.");
  }
}

sub EVENT_ITEM {
  #:: Match a 62075 - Dagger of the Sneak and a 62074 - Nurgan Taskmaster Whip
	if (plugin::takeItems(62075 => 1, 62074 => 3)) {
    quest::say("Me thanks you for helping kill da gobbys.  Here yous go.");
    #:: Give a 62193 - Dingy Pauldron of Brawling
		quest::summonitem(62193);
		#:: Ding!
		quest::ding();		
  }

	#:: Return unused items
	plugin::returnUnusedItems();
}