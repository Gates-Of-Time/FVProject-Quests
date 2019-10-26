sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Greetings $name. It is my duty to teach young Fier`Dal the arts of defense and fighting so that they may become skilled members of the Emerald Warriors. There are many [threats] facing our forests and our home Kelethin, thus we warriors must be prepared both physically and mentally to defend our people. It is wise for all young Emerald Warriors to acquire a suit of armor to protect them from the weapons of our enemies.");
	}
	if ($text=~/threats/i) {
		quest::say("The threats that face Tunares children here in the Faydarks are many, some more obvious than others. The orcish Clan Crushbone has a citadel to the north and is perpetually invading the Faydarks in order to pillage supplies and expand their territory. The foolish pixies that inhabit the forests often cause harm to the trees and animals with their mischievous pranks, and recently the [Arboreans] have returned from centuries of slumber.");
	}
	if ($text=~/arboreans/i) {
		quest::say("The Arboreans are an ancient species of sentient plant-folk. Their sentience however does not manifest as intelligence or wisdom. They are little more than mobile weeds, multiplying quickly and draining the nutrients from the soil and flora they come into contact with. Old legends from when our people first migrated to Faydwere from the Eldarr Forest of Tunaria tell of a great famine caused by the Arboreans. The Heartwood Master and his most blessed of druids wove powerful magics that destroyed the Arboreans, but some of their seeds endured, buried in the soil for centuries, and recently they have sprouted and are once again destroying our beloved forests.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
