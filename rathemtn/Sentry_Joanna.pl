sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Love and passion to you, my friend.  Seek you the [Gauntlets of Ro]?  If not, then I offer you the safety of this camp.");
	}
	elsif ($text=~/gauntlets of ro/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I will give you the mold, but first you will complete a task in the name of Erollisi Marr.  My fellow Sentry, Alechin, was bitten by a wolf while he journeyed to Qeynos.  He now turns into a werewolf at night, forced to kill innocent travelers.  Go toward Qeynos.  Release him from life and his curse and return his locket to me.");
		}
		else {
			quest::say("Erollisi would not approve of our alliance, not yet at least.  Go to Freeport and serve the Temple of Marr.  When you can ask Gygus Remnara if you are an [honored member] and have him answer yes, then we can join forces.");
		}
	}
}

sub EVENT_ITEM { 
	#:: Match a 12312 - Locket
	if(plugin::takeItems(12312 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Thank you my friend.  It is good to see him free at last.  I shall miss him.  Here now is the mold of gauntlets as promised. Go and speak with Thomas for information about [Lord Searfire].");
			#:: Give a 12302 - Mold of Ro Gauntlets
			quest::summonitem(12302);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(362, 20);		#:: + Priests of Marr
			quest::faction(330, -2);		#:: - Freeport Militia
			quest::faction(281, 3);			#:: + Knights of Truth
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			quest::say("Erollisi would not approve of our alliance, not yet at least.  Go to Freeport and serve the Temple of Marr.  When you can ask Gygus Remnara if you are an [honored member] and have him answer yes, then we can join forces.");
			#:: Give a 12312 - Locket
			quest::summonitem(12312);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
