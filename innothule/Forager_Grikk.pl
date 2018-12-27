sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Grikk.. Please leave me be. I but a humble forager. My people are starving.");
	}
} 

sub EVENT_ITEM {
	#:: Turn in for 13375 - Empty Vial
	if (plugin::takeItems(13375 => 1 )) {
		quest::say("Grrrikk.. This is Groak's vial!! He must be in danger. Here. Return this liquid to him. Be quick!");
		#:: Give item 13376 - Ochre Liquid
		quest::summonitem(13376);
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(106,20);		#:: + Frogloks of Guk
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
