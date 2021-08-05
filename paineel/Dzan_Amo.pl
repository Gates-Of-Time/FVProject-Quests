sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Tabernacle of Terror. Perhaps you can control your fear long enough to be of [service] to us.");
	}
	elsif ($text=~/service/i) {
		quest::say("I need some things fetched from the creatures just outside our city for some ritual experimentation. Bring me two tufts of bat fur and two fire beetle legs and I will school you in the ways of terror.");
	}
}

sub EVENT_ITEM {
	#:: Match two 13069 - Bat Fur, and two 13250 - Fire Beetle Leg
	if (plugin::takeItems(13069 => 2, 13250 => 2)) {
		quest::say("Very good young one. Here is something to assist in your studies of the principles of terror.");
		#:: Choose a random reward:  15203 - Spell: Cure Poison, 15207 - Spell: Divine Aura, 15201 - Spell: Flash of Light, 15208 - Spell: Lull, 15209 - Spell: Spook the Dead, 15014 - Spell: Strike, 15210 - Spell: Yaulp
		quest::summonitem(quest::ChooseRandom(15203, 15207, 15201, 15208, 15209, 15014, 15210));
		#:: Ding!
		quest::ding();
		#:: Set factions (confirmed)
		quest::faction(265, 5);		#:: + Heretics
		quest::faction(242, -5);	#:: - Deepwater Knights
		quest::faction(254, -5);	#:: - Gate Callers
		quest::faction(231, -5);	#:: - Craftkeepers
		quest::faction(233, -5);	#:: - Crimson Hands
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
