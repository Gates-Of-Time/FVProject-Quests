sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name!  Bow before the greatness of the Clerics of Underfoot!  It is good to be a paladin in such an order as ours - to fight the good fight and defend Kaladim from the evil and undead.  If you be a paladin, then I pray you find the [courage to battle the undead].");
	}
	elsif ($text=~/courage to battle the undead/i) {
		quest::say("Yes!!  To battle the undead is our greatest call.  There has been a rise in the number of dwarven skeletons seen in the Butcherblocks.  If you are a true member of this order, I shall reward you for the return of four bone chips.  We shall defend our land from evil!");
	}
	elsif ($text=~/remains of cromil/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("My brother Cromil ventured to the Plains of Karana on the continent of Antonica. He never returned. Rumor has it that his undead skeleton is now part of an undead army in the plains. To end this curse, I ask all good paladins of this temple to return his bones to me. Nothing less than a spell is my reward for such a deed.");
		}
		else {
			quest::say("The Clerics of Underfoot have yet to see your faith directed towards our wills. Perhaps you should assist me in the crusade against the undead.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match four 13073 - Bone Chips
	if (plugin::takeItems(13073 => 4)) {
		quest::say("You have done well. We thank you for your deed with this humble reward. The power behind the raising of our dead shall soon be found. You will earn more respect with more bone chips. I only wish you could assist in the return of the [remains of Cromil].");
		#:: Give a random reward: 2116 - Small Patchwork Tunic, 2122 - Small Tattered Gloves, 5013 - Rusty Short Sword, 5014 - Rusty Axe, 5016 - Rusty Broad Sword, 5023 - Rusty Two Handed Sword, 6011 - Rusty Mace, 13002 - Torch, 13003 - Small Lantern
		quest::summonitem(quest::ChooseRandom(2116,2122,5013,5014,5016,5023,6011,13002,13003));
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(2000);
		#:: Create a hash for storing cash - 15 to 20cp
		my %cash = plugin::RandomCash(15,20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(227,10);		#:: + Clerics of Underfoot
		quest::faction(274,10);		#:: + Kazon Stormhammer
		quest::faction(293,10);		#:: + Miners Guild 249
	}
	#:: Match if faction is Amiable or better and a 13332 - Dwarf Bones
	elsif (($faction <= 4) && (plugin::takeItems(13332 => 1))) {
		quest::say("Many thanks, my friend. Now my brother can rest in peace. Please take this spell. May it serve you well.");
		#:: Give a random reward: 15203 - Spell: Cure Poison, 15201 - Spell: Flash of Light, 15200 - Spell: Minor Healing, 15209 - Spell: Spook the Dead, 15205 - Spell: True North, 15210 - Spell: Yaulp, 15213 - Spell: Cure Disease, 15223 - Spell: Hammer of Wrath, 15011 - Spell: Holy Armor
		quest::summonitem(quest::ChooseRandom(15203,15201,15200,15209,15205,15210,15214,15223,15011));
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(10000);
		#:: Create a hash for storing cash - 150 to 200cp
		my %cash = plugin::RandomCash(150,200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(227,25);		#:: + Clerics of Underfoot
		quest::faction(274,25);		#:: + Kazon Stormhammer
		quest::faction(293,25);		#:: + Miners Guild 249
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
	#:: Return unused items
	plugin::returnUnusedItems();
}
