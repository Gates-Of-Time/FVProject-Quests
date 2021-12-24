sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, friend. If fine weapons are what you seek then you shall find them here in my shop. I have traveled far and wide for the finest weapons. Still, there are a few [unusual weapons] which have eluded me.");
	}
	elsif ($text=~/unusual weapons/i) {
		quest::say("Unusual weapons? Yes. There are a few which I sought. Such an item is the [brazen brass kilij].");
	}
	elsif ($text=~/brazen brass kilij/i) {
		quest::say("The brazen brass kilij is a legendary magical weapon designed by the ancients and long lost to the winds of time. I have searched the world for it to no avail. Perhaps the [legend of Husam] will add some insight to my quest. I have some knowledge of its design and I am sure I can [craft the kilij].");
	}
	elsif ($text=~/legend of Husam/i) {
		quest::say("Legend says the kilij was forged for a great paladin for his assault on the land of the dead. He was to slay the evil siblings Dimetreas and Byzola. It is said he killed Byzola. With the kilij he was unstoppable. Dimetreas knew this and cast an [evil spell] upon the kilij.");
	}
	elsif ($text=~/evil spell/i) {
		quest::say("The enchantment would allow only rogues, warriors and the feeble minstrels to wield it. And so Dimetreas defeated the now unarmed paladin and shattered the kilij. He then found the only kilij plans and sent them to the Plane of Man to be held forever by his evil servant, Husam.. Husam of the burning sun.");
	}
	elsif ($text=~/craft the kilij/i) {
		quest::say("I can craft the kilij. All I need are the kilij plans and three enchanted gold bars. The blend of metals is not entirely brass and only an enchanter can provide the enchanted metal I need. As for the plans, perhaps during your great adventures you shall happen upon it. If so, I can make one for you.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12206 - Kilij Plans, and three 16506 - Enchanted Gold Bar
	if (plugin::takeItems(12206 => 1, 16506 => 3 )) {
		quest::say("You have succeeded in your quest for the kilij!! Wield it proudly.");
		#:: Give a 5366 - Brazen Brass Kilij
		quest::summonitem(5366);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(326, 1);			#:: + Emerald Warriors
		quest::faction(246, 1);			#:: + Faydark's Champions
		quest::faction(5001, 2);		#:: + Anti-mage
		quest::faction(276, 10);		#:: + Kelethin Merchants
		#:: Grant a moderate amount of experience
		quest::exp(1500);
	}
}
