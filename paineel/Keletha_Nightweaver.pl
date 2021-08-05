sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. Interested in the art of research? I have several tomes which may aid you in such a pursuit.");
	}
}

sub EVENT_ITEM {
	#:: Match 1774 - Envelope with dust sample
	if (plugin::takeItems(1774 => 1)) {
		quest::emote("takes the note, dumps the dust into her hand and examines it for a moment. She looks up and chuckles");
        quest::say("It's amuzing how one of our Royal Guards cannot identify this substance. Do you feel how it's slightly cooler than other metals? It's called Permafrost Iron, also known as Cold Iron to laymen. Miragul wrote of it's properties in his memoirs. There are much better metals at our disposal now, so it's use is rare except in more primitive cultures. Here is my report.");
        #:: Give a 1775 - Heretic's Report
		quest::summonitem(1775); 
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(137180);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
