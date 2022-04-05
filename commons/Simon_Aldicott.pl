sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail and well met. I am Simon Aldicott, a cleric in the service of Mithaniel Marr. I've been sent here to prepare a funeral service for one of our lost to join Marr in his kingdom.");
	}
	elsif ($text=~/funeral service/i) {
		quest::say("Are you the brave knight whom Valeron sent to meet me here? If so please place the remains in the coffin and seal it. Then hand me the coffin so that we may bless it in the waters of this lake.");
	}
}

sub EVENT_ITEM {
	#:: Match a 6708 - Gem Encrusted Casket
	if (plugin::takeItems(6708 => 1)) {
		quest::emote("places the coffin in the water and begins to pray. 'Lord of Valor high above, take this knight, your loyal child, into thy kingdom and all that is holy! What is that thing!'");
		#:: Spawn one and only one West Commonlands >> a_Tortured_Revenant (21031) with no grid or guild war, at the specified coordinates
		quest::unique_spawn(21031, 0, 0, 2901, 259.7, -51, 50);
	}
	#:: Match a 6709 - Revenant Ash
	elsif (plugin::takeItems(6709 => 1)) {
		quest::say("Thank you, Knight. With this task accomplished, I shall reward you with this scroll. It is an ancient spell that only the holiest of knights may cast. Remember your duty!");
		#:: Give a 15693 - Spell: Divine Might
		quest::summonitem(15693);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(362, 10);	#:: + Priests of Marr
		quest::faction(330, -5);	#:: + The Freeport Militia
		quest::faction(281, 10);	#:: + Knights of Truth
		#:: Grant a moderate amount of experience
		quest::exp(2000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /commons/a_Tortured_Revenant.pl
	if ($signal == 1) {
		quest::say("Tis a sad thing. His soul was twisted to its current state somehow and he thought YOU were the foul Teir'Dal who destroyed him in the first place. But that is no matter..you have freed him to stand by Marrs side once more! Now, give me the ash so that I may finally put him to rest. In return for your valor I shall provide you with an ancient spell unknown to most Holy Knights of Marr.");
	}
}
