sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail!  What brings you here?");
	}
	elsif ($text=~/icon of the reliant/i) {
		quest::say("Where did you hear... I don't know what you are talking about.  Begone!  Back to Kithicor with you!");
	}
}

sub EVENT_ITEM {
	#:: Match a 18145 - Turgan's Note
	if (plugin::takeItems(18145 => 1)) {
		quest::say("I am that Turgan, but I am no longer worthy of this title.  Take this in hopes that you become a better steward than I was.");
		#:: Give a 19002 - Icon of the Reliant
		quest::summonitem(19002);
	}	
	#:: Return unused items
	plugin::returnUnusedItems();
}
