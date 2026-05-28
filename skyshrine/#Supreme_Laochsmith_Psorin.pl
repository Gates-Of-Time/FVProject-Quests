sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("It is most unfortunate that you do not have scales to defend your fragile mortal shell, $race, I can only hope that the armor we in the Shrine can provide you with will extend your life another fraction of a century. In addition to that you also might want a [special helm] to cover up that scaleless face of yours. I understand that the Mother could not grace you with all our blessings, but at least we can try to make you look half-way decent.");
	}
	elsif ($text =~ /special helm/i) {
		quest::say("Using my obviously superior skills I can customize a plate helm from the Shrine to suit a $race such as yourself. Give me your Blood Lord's Crown, Scaled Knight's Helm, Helm of Twilight, Akkirus' Crown of the Risen, Cowl of Mortality, Frostreaver's Velium Crown, Crown of the Kromzek Kings, or Crown of the Myrmidon and I shall make you a new helm that will better hide and protect your unscaled features.");
	}
}

sub EVENT_ITEM {
	#:: Match a 31140 - Akkirus' Crown of the Risen
	if (plugin::takeItems(31140 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 31528 - Akkirus' Custom Crown of the Risen
		quest::summonitem(31528);
	}
	#:: Match a 31119 - Scaled Knight's Helm
	elsif (plugin::takeItems(31119 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 31526 - Custom Scaled Knight's Helm
		quest::summonitem(31526);
	}
	#:: Match a 31133 - Helm of Twilight
	elsif (plugin::takeItems(31133 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 31527 - Custom Helm of Twilight
		quest::summonitem(31527);
	}
	#:: Match a 31098 - Blood Lord's Crown
	elsif (plugin::takeItems(31098 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 31525 - Custom Blood Lord's Crown
		quest::summonitem(31525);
	}
	#:: Match a 31182 - Crown of the Myrmidon
	elsif (plugin::takeItems(31182 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 31529 - Custom Crown of the Myrmidon
		quest::summonitem(31529);
	}
	#:: Match a 26025 - Cowl of Mortality
	elsif (plugin::takeItems(26025 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 2612 - Custom Cowl of Mortality
		quest::summonitem(2612);
	}
	#:: Match a 25194 - Crown of the Kromzek Kings
	elsif (plugin::takeItems(25194 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 2611 - Custom Crown of the Kromzek Kings
		quest::summonitem(2611);
	}
	#:: Match a 30507 - Frostreaver's Velium Crown
	elsif (plugin::takeItems(30507 => 1)) {
		quest::say("Thank you, $name. Please accept this Helm as a token of our gratitude for your service to the Shrine.");
		#:: Give a 2610 - Custom Frostreaver's Velium Crown
		quest::summonitem(2610);
	}
	else {
		quest::say("This item is not worthy of my talents.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
