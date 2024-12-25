sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Greetings, would you care for some tea?");
	}
	if($text=~/tea/i) {
		quest::say("The fairies should be bringing me some tea soon.");
	}
}
sub EVENT_ITEM {
	#:: Match a 18087 - Tome of Instruction
	if(plugin::takeItems(18087 => 1) {
		quest::emote("screams as he touches the book. His body shimmers as he shrinks smaller and smaller until it's no larger than an insect. The book shimmers, shifting into the shape of a small, black box. Gkzzallk holds on to the opening of the box as he is sucked backward into it. The tiny screams are finally silenced as the box top closes.");
		#:: Give a 20652 - Gkzzallk in a Box
		quest::summonitem(20652);
		#:: Ding!
		quest::ding();
		#:: Depop without spawn timer
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}