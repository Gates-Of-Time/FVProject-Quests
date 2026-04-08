sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("Busy, busy, busy. Must get all these tools sharpened before the miners get cranky.");
	}
	elsif ($text =~ /stonetooth sent me/i) {
		quest::say("You spoke with old Stonetooth? Eeegads man! No one talks to 'im. Legend says he spent so much time down there that he eats nothin' but rocks now and drinks melted velium. Well I guess I should sharpen his axe, but I'll need some velium ore to repair it some. Bring me a chunk o' Velium Ore along with his axe and I'll get to work.");
	}
}

sub EVENT_ITEM {
	#:: Match a 1690 - Normon's axe and a 22569 - Small Piece of Velium.
	if (plugin::takeItems(1690 => 1, 22569 => 1)) {
		quest::say("Excellent! I'll get ta work now. Hakon whistles an unfamiliar tune as he repairs and sharpens the pick axe. Here ye are, $name. Watch that old Stonetooth, he's a few steins short of a keg, if ye know what I mean.");
		#:: Set factions
		quest::faction(406,5);   #:: + Coldain
		quest::faction(405,5);   #:: + Dain Frostreaver IV
		quest::faction(419,-10); #:: - Kromzek
		quest::faction(448,-10); #:: - Kromrif
		#:: Grant a small amount of experience.
		quest::exp(1000);
		#:: Give a 1691 - Normon's axe.
		quest::summonitem(1691);
	}

	#:: Return unused items.
	plugin::returnUnusedItems();
}

