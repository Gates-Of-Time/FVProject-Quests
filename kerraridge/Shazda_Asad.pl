sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Rrrr..I am  Asad. Shazda of the Kerran [Sejah]. It is my duty to ensure the safety of what lands have not been taken from us by the Erudites, and to train my soldiers in the fighting styles of our heritage.");
	}
	elsif ($text=~/sejah/i) {
		quest::say("The soldiers of our sejah are all trained from the time they are weaned from their matriarchs. If you wish to be honored by the sejah you must prove to us your loyalty and devotion to the defense of our lands. In Toxxulia Forest there are Erudite emissaries who constantly attempt to encroach upon our territory. Bring me the head of one such emissary."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 12319 - Emissary Head
	if (plugin::takeItems(12319 => 1)) {
		quest::say("Excellent work, young ayyar! You have proven your willingness to dispose of the enemies of our tribe, now you must face one of their most murderous sentries! Bring me the head of Sentinel Creot and I shall induct you into our sejah!");
		#:: Give a 10343 - Kejaar Totem
		quest::summonitem(10343);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(382,20);	# + Kerra Isle
		#:: Grant a moderate experience award
		quest::exp(5000);
		#:: Create a hash for storing cash - 50 to 60cp
		my %cash = plugin::RandomCash(50,60);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12438 - Sentinel Creot's Head
	elsif (plugin::takeItems(12438 => 1)) {
		quest::say("You have proven your self yet again! You are now a full member of our sejah because of this brave act! To show your status here is a bracer for you to wear.");
		#:: Give a 3147 - Sejah Ghulam Bracer
		quest::summonitem(3147);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(382,30);	# + Kerra Isle
		#:: Grant a moderate experience award
		quest::exp(6500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
