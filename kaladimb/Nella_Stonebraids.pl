# items: 29007
sub EVENT_SAY {	
	if ($text=~/hail/i) {
		quest::emote("Nella Stonebraids glances your direction, then returns to what she was doing.");
	}
	if ($text=~/jark/i || $text=~/dinner/i) {
		quest::say("Ach! I forgot me husband's dinner. I'm so sorry. I was sendin' my wishes ta Brell for health and long life. I was just floatin' coins into the wishin' pool. Usually it's for children but things haven't been so good lately. Here, please take this to him and tell him where I was.");
		#:: Give a 29007 - Cold Plate of Beef and Bread
		quest::summonitem(29007);
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}