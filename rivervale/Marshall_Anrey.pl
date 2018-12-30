sub EVENT_SAY {
	if ($text=~/hail/i) {
				quest::say("Stand at attention!! You don't look fit enough to toe-wrestle my grandma!! You cannot be in my squad!! Are you [" . quest::saylink("petitioning") . "] or are you a [" . quest::saylink("visitor") . "]?");
	}
	if ($text=~/visitor/i) {
				quest::say("Well, why didn't you say so?! Forgive me for hollering. Allow me to introduce myself. I am Marshal Anrey Leadladle, commander of the [" . quest::saylink("Leatherfoot Raiders") . "].");
	}
	if ($text=~/petitioning/i) {
				quest::say("So you want to be a [" . quest::saylink("Leatherfoot Raider") . "]? What kind of joke is this? Look at you! You're a mess! Where are you [" . quest::saylink("from") . "]?");
	}
	if ($text=~/Leatherfoot Raider/i) {
				quest::say("You must be a visitor. The Leatherfoot Raiders are the elite force of the Guardians of the Vale. I command them. It is good to meet an outsider.");
	}
	if ($text=~/from/i) {
				quest::say("So you're from Rivervale?!! You must be some kind of freak. No halfling from Rivervale would look, smell and act anything like you. Well, freak, if you think you're stout enough to be a Leatherfoot Raider, you prove it!! You travel the lands and return to me a polar bear skin, a grizzly bear skin, a shark skin and an alligator skin. Then maybe, just maybe, I will let you wear the cap of a Leatherfoot Raider.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13749 - Alligator Skin, 13942, Polar Bear Skin, 13075 - Shark Skin, 13765 - Thick Grizzly Bear Skin
	if (plugin::takeItems(13749 => 1, 13942 => 1, 13761 => 1, 13075 => 1, 13765 => 1)) {
		quest::say("Good work, $Name. You passed the first test. If you think you are one of us, return this cap to me along with a dagger from a Dark Elf for your true reward.");
		#:: Give item 13941 - Leatherfoot Skullcap
		quest::summonitem(13941);
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Ding!
		quest::ding();
		quest::givecash(8,1,0,0);	#:: Give a small amount of cash copper - plat
	}		
	#:: Turn in for 13942 - Dragoon Dirk and 13941 = Leatherfoot Skullcap
	if (plugin::takeItems(13942 => 1, 13941 => 1)) {
		quest::say("Wonderful, $Name. You have proven yourself to the Leatherfoot Squad. Take this and wear it with honor.");
		#:: Give item 12259 - Leatherfoot Raider Skullcap
		quest::summonitem(12259);
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		quest::givecash(7,3,2,1);	#:: Give a small amount of cash copper - plat
	}		
#:: Return unused items
plugin::returnUnusedItems();
}
