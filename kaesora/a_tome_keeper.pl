sub EVENT_SAY {
	if($text=~/hail/i){
		quest::emote("shows awareness of you, but ignores you completely.");
	}
	elsif($text=~/peace of mind/i){
		quest::emote("begins to speak to you without movement of his rotted mouth, you realize his words are pouring into your mind. 'You seek peace of mind, and may you have it. First though, your Shackle of Steel. One Shackle for one tome.'");
	}
}



sub EVENT_ITEM {
	#:: Match a 4196 - Shackle of Steel
	if(plugin::takeItems(4196 => 1)){
		quest::emote("drops a tattered tome at your feet and says nothing more. You pick it up and place it among your things.");
		my $Tome = quest::ChooseRandom(18359, 18462, 18463, 18464, 18465, 18466, 18467, 18468, 18469, 18470);
		quest::summonitem($Tome);
		#:: Give a random reward:  18359 - Dark Black Tome, 18462 - Solid Black Tome, 18463 - Light Black Tome, 18464 - Dark Grey Tome, 18465 - Greyed Tome, 18466 - Light Grey Tome, 18467 - Dim White Tome, 18468 - Pale White Tome, 18469 - Faded White Tome or a 18470 - Pure White Tome
		quest::summonitem(quest::ChooseRandom(18359, 18462, 18463, 18464, 18465, 18466, 18467, 18468, 18469, 18470));
		#:: Ding!
		quest::ding();
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}