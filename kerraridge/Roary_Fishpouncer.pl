sub EVENT_SAY {
        if ($text=~/hail/i) {
                quest::say("Rrrr.. catching and prrreparing fish is my specialty. Perrrhaps you could fetch for me some [rrrare fish] so that I may demonstrate my skill? Rrrr.");
        }
        elsif ($text=~/rrrare fish/i) {
                quest::say("Rrrr.. my most delectable dish is prrreparrred frrrom rrraw darkwater piranha. Unforrrtunately. the pirrranha only surrrvives in the murrrky waterrrs of the wicked Nektulos forrrest. I will rrreward any brrrave fisherman who can brrring me some rrraw darkwater pirranha.");
        }
}

sub EVENT_ITEM {
        #:: Match a 12318 - Raw Darkwater Piranha
        if (plugin::takeItems(12318 => 1)) {
                quest::say("Rrrrr... you found the rrrraw fish.  I can now make my favorrrrrite dish.  Herrrrre is a special spearrrrr that will help you to catch morrrrrre of these."); #need proper text
                #:: Give a 7027 - Kerran Fishing Spear
                quest::summonitem(7027);
                #:: Ding!
                quest::ding();
                #:: Grant a small amount of experience
                quest::exp(500);
        }
 	#:: Return unused items
	plugin::returnUnusedItems();
}
