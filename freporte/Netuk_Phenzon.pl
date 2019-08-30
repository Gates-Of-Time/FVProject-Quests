sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome $name. Let us fill your heart with hate. May you carry that hate unto your fellow citizens. Innoruuk has need of your services. We have A [" . quest::saylink("mission") . "] for you.");
	}
	if ($text=~/mission/i) {
		quest::say("There is a man called Groflah Steadirt. He frequents a bar here in Freeport during the early evening hours. Our sources tell us he was given a piece of parchment taken from one of our allies. Who that is, is none of your business. We only require you to recover the parchment, which he no doubt has on him. End his life and return the note to me. Do not let me see your miserable face again until you have the parchment.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18818 - Tattered Flier
	if (plugin::check_handin(\%itemcount, 18818 => 1)) {
		quest::say("It is about time you returned! Innoruuk would be proud of the red you have spread upon the land.");
		#:: Give item 15343 - Spell: Siphon Strengh
		quest::summonitem(15343);
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Give a small amount of cash copper - plat
		quest::givecash(0,12,6,0);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(271,1); 		#:: + Dismal Rage
		quest::faction(281,-5); 	#:: - Knights of Truth
		quest::faction(296,1); 		#:: + Opal Dark Briar		
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
