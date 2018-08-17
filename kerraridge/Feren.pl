sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Rarr.  Me is Feren.  Me is fisher.  That means Feren catches [" . quest::saylink("fish") . "].");
	}
	if ($text=~/fish/i) {
		quest::say("All kinds of fish.  Tasty fish.  All day Feren catches the fishes so all Kerran can eat.  I do for good of all Kerran.  Rrrrr.  One thing bother Feren always though.  Is bad fish.  [" . quest::saylink("Razortooth") . "].");
	}
	if ($text=~/razortooth/i) {
		quest::say("Rrrrrr!  Razortooth mean fish.  Razortooth eat fish off Feren's line.  Razortooth gnaw Feren's boat.  Razortooth smart and dangerous.  Feren never able to catch Razortooth.  This haunt Feren for months.  If you was able to catch Razortooth. Feren be forever grateful. Maybe even give you possessions.");
	}
}

sub EVENT_ITEM {
	#:: Match a 6348 - Razor Tooth
	if (plugin::check_handin(\%itemcount, 6348 => 1)) {
		quest::say("Rarr, Feren not haunted by Razortooth no more. Feren grateful and give you this possession.");
		#:: Give a 1062 - Kerran Fishingpole
		quest::summonitem(1062);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 1900 to 2100cp
		my %cash = plugin::RandomCash(1900,2100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(175,10); 	# + Kerra Isle
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
