sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, dere! Ain'tcha a sight fer me sore eyes! I knows dat we're strangers an' all, but might I ask a [boon] of ye?");
	}
	elsif ($text=~/boon/i) {
		quest::say("Well, me pickaxe is blunted awfully bad and me ale supplies are dangerously low. If'n ye would be kind enough t' get me a new pick and a couple o' bottles o' dwarven ale, I would be f'rever in yer debt.");
	}
}

sub EVENT_ITEM {
	#:: Match a 5018 - Pick, and two 13036 - Dwarven Ale
	if (plugin::takeItems(5018 => 1, 13036 => 2)) {
		quest::emote("drinks one of the ales and burps loudly then says 'By Brell's Beard! Yer a lifesaver, ya are! 'ere, take dis bone I've found 'ere in dis maze. Looks human ta me and I'm thinkin that a proper burial is in order. Freeport's the closest place dat has one o Marr's temples. I'm thinkin dis was one o' his Holy Knights by da look o' da tattered tunic I found it wrapped in. I'm thinkin Valeron might be havin an interest in it.");
		#:: Give a 6701 - Dusty Old Leg Bone
		quest::summonitem(6701);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
