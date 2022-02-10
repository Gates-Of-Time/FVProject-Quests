#:: Necromancer Epic

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("I do not wisssh to be bothered.");
	}
}

sub EVENT_ITEM {
	#:: Match a 20644 - Symbol of the Serpent
	if (plugin::takeItems(20644 => 1)) {
		quest::say("Sssso, Emkel ssssent you to retrieve the manisi herb? I do not have the herb. The ssssarnak guard the herb. Apparently it is ssssacred to them. Only memberssss of their royal family are allowed to partake of it. They live deep in Chardok. They are hoarding what little of the precious herb there is. If you have an army, perhapssss you can bring me the herb and I can prepare it for Emkel. Bring back this ssssymbol as well.");
		#:: Give a 20645 - Scaled Symbol of the Serpent
		quest::summonitem(20645);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 20645 - Scaled Symbol of the Serpent and a 20654 - Manisi Herb
	elsif (plugin::takeItems(20645 => 1, 20654 => 1)) {
		quest::emote("looks at you and bows. 'You are truly a fearsome sssshadow weaver! Or you have powerful alliessss,' he adds a moment later. Ssessthrass pulls the manisi herb apart and hands a piece to you. 'Emkel will be most pleased with us both!'");
		#:: Give a 20650 - Refined Manisi Herb
		quest::summonitem(20650);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
