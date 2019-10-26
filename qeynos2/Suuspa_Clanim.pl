sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Temple of Life, $name.  It is here that you may pay tribute to the Prime Healer. Does not your heart beat with the sound of life? It is He who makes it so. Do not let the hand of Bertoxxulous and his [new disease] lay upon your soul or, like so many, you shall meet your fate at the end of my sword!");
	}
	elsif ($text=~/new disease/i) {
		quest::say("The new disease I speak of is called the [Bloodsabers]. They are the loyal followers of Bertoxxulous and as such have been condemned by our temple. Do you wish to [join the fight]?");
	}
	elsif ($text=~/bloodsabers/i) {
		quest::say("If I knew where they were, there would be no reason to employ your talents. They would be extinct!");
	}
	elsif ($text=~/join the fight/i) {
		quest::say("Then seek out those who worship the Plaguebringer. End their threat!! Each member has upon them the mark of the Bloodsabers, a [rat-shaped ring]. I shall reward all those who return such rings to me.");
	}
	elsif ($text=~/rat-shaped ring/i) {
		#:: Made up
		quest::say("The rat-shaped ring is the mark of the Bloodsabers.");
	}
	elsif ($text=~/brother trintle attacked brother estle/i) {
		quest::say("Impossible!! What madness do you speak of!!? If he did he must have had a reason. Maybe Trintle had been tainted by the words of Bertoxxulous..?");
	}
}

sub EVENT_ITEM {
	#:: Match a 13301 - Rat Shaped Ring
	if (plugin::takeItems(13301 => 1)) {
		quest::say("You have cleansed Norrath of another follower of the Plaguebringer. You have done well. Take this reward and continue your search for others who wear this ring.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 5);				#:: + Priests of Life
		quest::faction(280, 1);				#:: + Knights of Thunder
		quest::faction(262, 2);				#:: + Guards of Qeynos
		quest::faction(221, -1);			#:: - Bloodsabers
		quest::faction(219, 1);				#:: + Antonius Bayle
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 150 to 200cp
		my %cash = plugin::RandomCash(150,200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 13908 - Busted Prayer Beads
	elsif (plugin::takeItems(13908 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("This is not good. Hmph. It appears they are shattered. For the first time one of our members has been swayed. I reward you for your deed. Also, if you have found anything upon Trintle, let me know.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(341, 5);			#:: + Priests of Life
			quest::faction(280, 1);			#:: + Knights of Thunder
			quest::faction(262, 2);			#:: + Guards of Qeynos
			quest::faction(221, -1);		#:: - Bloodsabers
			quest::faction(219, 1);			#:: + Antonius Bayle
			#:: Grant a moderate amount of experience
			quest::exp(1000);
			#:: Create a hash for storing cash - 1 to 20cp
			my %cash = plugin::RandomCash(1,20);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("I do not dislike you, but I cannot fully trust one who has yet to prove his service to the Prime Healer.");
			#:: Return a 13908 - Busted Prayer Beads
			quest::summonitem(13908);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
