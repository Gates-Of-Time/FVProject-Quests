sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ah. hello there. friend!  Me an' Rebby here. we're a just couple o' regular merchants.  Though we've got nothin' to sell right now. we'd gladly take any donations.  Them's the breaks. I suppose.");
	}
} 

sub EVENT_ITEM {
	#:: Match a 18015-  Note to Janam
	if (plugin::takeItems(18015 => 1)) {
		quest::emote("scribbles out a note and says, 'Please make sure that Harkin gets this right away. If you lose it, it could mean both of our heads.'");
		#:: Give a 18016 - Note to Harkan
		quest::summonitem(18016);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
