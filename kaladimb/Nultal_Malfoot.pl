sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("May the power of Underfoot be with you. Welcome. I am here to serve the will of the king as should you. If you [need healing], then speak. Or perhaps you are here to [return skunk glands]?");
	}
	if ($text=~/need healing/i) {
		quest::say("Before the power of Underfoot can attempt to bind your wounds you must pay tribute. Three gold coins!!");
	}
	if ($text=~/return skunk glands/i) {
		quest::say("I have made an offer to all clerics of this cathedral. I shall reward one cleric scroll from our scribes for the return of four skunk scent glands. This offer is best left to our clerics.");
	}
}

sub EVENT_ITEM {
	#:: Match three gold pieces
	if (plugin::takeCoin(0, 0, 3, 0)) {
		quest::say("May your body and soul be rejuvenated.");
		#:: Cast 17 - Light Healing
		$npc->CastSpell(17,$userid);
	}
	#:: Match four 14030 - Skunk Scent Gland
	if (plugin::takeItems(14030 => 4)) {
		quest::say("I thank you for your good deed. I trust it was not a problem. Take this scroll. A cleric of this cathedral will find it useful. May the power of Underfoot be with you.");
		#:: Reward a random spell scroll:  15203 - Spell: Cure Poison, 15229 - Spell: Fear, 15560 - Spell: Furor, 15036 - Spell: Gate, 15216 - Spell: Stun
		quest::summonitem(quest::ChooseRandom(15203,15229,15560,15036,15216));
		#:: Ding!
		quest::ding();
		#:: Reward a moderate amount of experience
		quest::exp(2000);
		#:: Create a hash for storing cash - 40 to 60cp
		my %cash = plugin::RandomCash(40,60);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(227,5);		#:: + Clerics of Underfoot
		quest::faction(274,5);		#:: + Kazon Stormhammer
		quest::faction(293,5);		#:: + Miners Guild 249
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
