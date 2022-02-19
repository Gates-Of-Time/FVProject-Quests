sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("stares at you with hollow eye sockets. As he opens his jaw to speak, you are overcome by the foul smell of a thousand rotted corpses. 'What is your desire, master?'");
	}
	elsif ($text=~/mortar and pestle/i) {
		quest::emote("moves with a mixture of creaks and clicks and produces a grotesque looking mortar and pestle set. He places the items in your hands and motions indicating you dismissal. You can feel the vile power of your god moving throughout the material that makes up the two items.");
		#:: Give a 17092 - Grotesque Mortar and Pestle
		quest::summonitem(17092);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
