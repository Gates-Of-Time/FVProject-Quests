sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name! My name is Roesager Thusten, Paladin of Life. I am a loyal servant of the Prime Healer and I seek to destroy all who wish to bring death and disease to the land of Norrath.");
	}
	elsif (($text=~/disease/i) || ($text=~/plaguebringers/i)) {
		quest::say("The Plaguebringers are followers of the disease lord, Bertoxxulous. We believe a sect of them now operates in Qeynos, but we need proof before we can act.");
	}
	elsif ($text=~/bertoxxulous/i) {
		quest::say("Bertoxxulous is a vile creature who rules the Plane of Disease. His filthy followers are spreading their stain across all of Norrath. We fear they are already here in Qeynos.");
	}
	elsif ($text=~/proof/i) {
		quest::say("Someone reported seeing a Plaguebringer roaming about in the hills near Qeynos. We have long suspected that their dark influence was spreading. I am searching for proof that they are now here in Qeynos. If you find anything, please bring it to me at the Temple of Life.");
	}
	#:: It is completely unclear what prompts you to ask this--I could find no history whatsoever
	elsif ($text=~/niclaus/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Niclaus Ressinn? Have you seen him? He is one of our paladins who was sent out to investigate the undead sightings in Qeynos Hills. I have a message from Jahnda for him, but I must continue my own search here in Qeynos. Could you take this to Niclaus? Your help would be appreciated.");
			#:: Give a 18970 - Note to Niclaus
			quest::summonitem(18970);
		}
		else {
			quest::say("The Temple of Life smiles upon you, friend... but such a delicate matter can only be entrusted to our most loyal members.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 18802 - Sealed Letter
	if (plugin::takeItems(18802 => 1)) {
		quest::say("Rodcet be praised!! This is what we have been searching for! On behalf of the Temple of Life, let me thank you and offer you this small reward for your aid in our war against the Plaguebringer.");
		#:: Give a 14007 - Potion of Light Healing
		quest::summonitem(14007);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 50);		#:: + Priests of Life
		quest::faction(280, 15);		#:: + Knights of Thunder
		quest::faction(262, 25);		#:: + Guards of Qeynos
		quest::faction(221, -12);		#:: - Bloodsabers
		quest::faction(219, 7);			#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(800);
		#:: Create a hash for storing cash - 25 to 50cp
		my %cash = plugin::RandomCash(25,50);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
