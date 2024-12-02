sub EVENT_SAY {
	if ($text=~/Stanos/i) {
		quest::say("Stanos? Stanos!! That dog, I WILL see him dead for what he cost me. Outcast I am, stripped of my position, my god has forsaken me, blaming ME for the loss of some tome. And you, $name, you have aided him. For that, you will die first. Please, struggle and beg, I do so enjoy watching my victims squirm, and I have little joy left in my life now. If you want my favor, perhaps if you came bearing Stanos' head I would be more forgiving. But I doubt it.");
	}
}

sub EVENT_ITEM {
	#:: Match a 28058 - Head of Stanos
	if (plugin::takeItems(28058 => 1)) {
		quest::say("Life is indeed sweet! Thank you, $name, you have done me a great service this day. Take this, Stanos was kind enough to return it to me, and I have no use for it now. Know that you have the blessing of Innoruuk for this deed! But of course, I leave it to you to leave here alive. A leader has to feed his minions, you know.");
		#:: Give item 2475 - Guise of the Coercer
		quest::summonitem(2475);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(98,20); 	#:: + Kobold
		#:: Grant a huge amount of experience
		quest::exp(500000);
		#:: Depop without spawn timer
		quest::depop();
	}
	else {
		quest::say("The only object in this wretched world that I even desire is the bruised and bloodied head of that scoundrel, Stanos! Take this back!"); #Made this up, in case someone screws up and tries to hand him other rogue epic items
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}