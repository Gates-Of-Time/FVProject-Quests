sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What do you want? Leave me be! Can't a man drown his sorrows in peace!?");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13863 - A Locked Book
	if (plugin::takeItems(13863 => 1 )) {
		if ($class eq "Paladin" || "Magician" || "Necromancer" || "Wizard") {
			quest::say("Peh! He thinks this old skull he found is a legendary skull of Wun Toque. It is said, a wizard who possesses one is granted power and intelligence far beyond those of his peers. Yiz was searching for the skulls missing ruby eyes. It seems he found the location of the first eye. Hmm.. Lynuga.. Lynuga.. I think I have heard that name before.. Yeah! Now I remember. I met her in the Foreign Quarter of Neria.. um.. Highpass Hold. She was trying to hawk some stolen gems! I think she mumbled something about going home to Grobb. I sure don't have time to track her down.");
			#:: Ding!
			quest::ding();
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Set faction
			quest::faction(346,3); 			#:: + Commons Residents
			quest::faction(362,3); 			#:: + Priests of Marr
			quest::faction(330,3); 			#:: + Freeport Militia
			quest::faction(281,3); 			#:: + Knights of Truth
		}
		else {
			quest::say("I have no use for this item, $name.  You can have it back.");
			#:: Return a 13863 - A Locked Book
			quest::summonitem(13863);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
