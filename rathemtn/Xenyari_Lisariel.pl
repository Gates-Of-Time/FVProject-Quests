sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. Oh, I wish I had a prickly pear. I just have this insatiable craving for a prickly pear. But Permafrost is just so far! <Sigh.>");
	}
	elsif ($text=~/prickly pear/i) {
		quest::say("Yes, yes! Prickly pears! Do you have any? I just love prickly pears but Permafrost is just so far away even for us druids.");
	}
}

sub EVENT_ITEM {
	#:: Match a 10195 - Prickly Pear
	if (plugin::takeItems(10195 => 1)) {
		quest::say("Prickly pears! I just love prickly pears!! Thank you so much for getting these for me. I really, really appreciate your gift and I shall not.. OWW!! I hate it when I stick myself with the needles! Oh look, I am bleeding now! <Sigh.> Can you hold this note for a moment, please? My hands are full and I must clean up.");
		#:: Give a 10196 - Bloodied Piece of Parchment
		quest::summonitem(10196);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Match a 10193 - Faceted Hyacinth Telesm
	elsif (plugin::takeItems(10193 => 1)) {
		quest::emote("bounces around with glee at the sight of your gift, smiles at you, and dons the telesm. As she clasps the telesm around her neck, she begins to writhe in agony, and slowly fades from sight leaving just the telesm, which is now pulsating with vibrant energy.");
		#:: Give a 10194 - Pulsating Hyacinth Telesm
		quest::summonitem(10194);
		#:: Ding!
		quest::ding();
		#:: Grant a large amound of experience
		quest::exp(10000);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
