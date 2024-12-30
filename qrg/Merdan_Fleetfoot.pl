sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Yes Niera! Oh. Erm. Hi. I mean, uh. How are you?");
	}
	if ($text=~/who is niera/i) {
		quest::emote("blushes. 'She is, uh.. I don't know. I haven't been able to speak with her. She has many suitors, and I'm just another poor ranger. I spend my days here pretending to fish, to carve bows, but really I'm just waiting to catch a glimpse of her. I thought about adventuring into the world to find some kind of token to give her, to show her how I feel, but I can't tear myself away from here.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 12774 - Rose of Firiona
	if (plugin::takeItems(12774 => 1)) {
		quest::emote("blinks and looks at the flower. 'This is perfect. Thank you! I'm going to go over to her now. Erm, well, maybe I'll wait a week to let the uh.. beauty of the flower.. uhm.. blossom. Yes, that sounds good. Here, you take this painting. I don't need it now. I made it myself, she wouldn't like it anyways.'");
		#:: Give a 20475 - Wood Painting
		quest::summonitem(20475);
		#:: Ding!
		quest::ding();
	}
	else {
		quest::emote("will not take this item.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}