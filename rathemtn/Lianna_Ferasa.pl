sub EVENT_SAY {
	if ($text=~/regis/i) {
		quest::say("Regis was my one true love, but he was [killed] and his soul enslaved by [Zahal the Vile].");
	}
	elsif ($text=~/killed/i) {
		quest::say("He was killed in the northern tree line to the east in North Karana. If you kill Zahal, Regis' body will rise from the place where he died. If my flute is on the body, please bring it to me.");
	}
	elsif ($text=~/zahal the vile/i) {
		quest::say("Zahal roams the plains of North Karana. Kill him and you will free my beloved's soul.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13899 - Lianna's Flute
	if (plugin::takeItems(13899 => 1)) {
		quest::say("Thank you for setting his spirit free. Keep his memory alive with this.");
		#:: Give a 19010 - Icon of the Reverent
		quest::summonitem(19010);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
