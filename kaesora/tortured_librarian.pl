sub EVENT_SAY { 
	if ($text=~/Hail/i){
		quest::say("Bring to me that which was taken.")
	}
}

sub EVENT_ITEM { 
	#:: Match a 18069 - v and a 18068 - Before Green
	if(plugin::takeItems(18069=> 1, 18068=> 1)){
		quest::emote("fades out of existence. The air smells of death. Something has appeared in your hand.");
		#:: Give a 12889 - Large Tassel Bookmark
		quest::SummonItem(12889);
		#:: Ding!
		quest::ding();
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}