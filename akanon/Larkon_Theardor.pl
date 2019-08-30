sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Greetings! Welcome to the Library of Mechanimagica. You must be a [" . quest::saylink("current member of the Library") . "] or has my [" . quest::saylink("mind begun to slip") . "]?");
	}
	if ($text=~/mind begun to slip/i) {
		quest::emote("What!!? That was but a joke. I try to make you feel comfortable with a little levity and you proclaim my mind has gone the way of Meldrath's. Well.. enough frivolity. You will do your part to help in the menial tasks of the Collective. Do you want the [" . quest::saylink("clean tasks") . "] or the [" . quest::saylink("dirty tasks") . "]?");
	}
	if ($text=~/clean tasks/i) {
		quest::emote("Clean.. Dirty.. It matters not. You have upset me with your rude remarks. You will go to the Steamfont Mountains. There you will find Fodin and tell him I have sent you. He will have a nice tidy task for you. A bath!! Be on your way!?");
	}
	if ($text=~/dirty tasks/i) {
		quest::emote("Clean.. Dirty.. It matters not. You have upset me with your rude remarks. You will go to the Steamfont Mountains. There you will find Fodin and tell him I have sent you. He will have a nice tidy task for you. A bath!! Be on your way!?");
	}
	if ($text=~/current member of the Library/i) {
		quest::emote("Good. The last thing a member of the Eldritch Collective needs is to lose his mind. Look what happened to Meldrath. Enough chitchat. I am Larkon and it is not my job to teach you. It is my job to direct you to service. We require items and such to complete our studies. We need someone of moderate skill to [" . quest::saylink("gather minotaur horns") . "] and [" . quest::saylink("collect basilisk tongues") . "]?");
	}
	if ($text=~/gather minotaur horns/i) {
		quest::emote("We magicians require the horns of minotaurs. We crush them down and use the powder in many of our tests. Go and fetch two minotaur horns. Do not return empty-handed. I await your return as does your reward.");
	}
	if ($text=~/collect basilisk tongues/i) {
		quest::emote("Very good of you. Go beyond the land of the gnomes and seek out basilisks. Return four of their tongues to me and I shall share the knowledge of the magicians of the Eldritch Collective.");
	}
	if ($text=~/Kaladim/i) {
		quest::emote("We need someone to venture to the dwarven kingdom of Kaladim and speak with Myre of Miner's Guild 628. She has a delivery of special pestles made from bozinite. If you feel up to it, go to her and tell her you are from the Eldritch Collective and desire the bozinite pestles. Return them to me.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13077 -  Minotaur Horn x2
	if (plugin::check_handin(\%itemcount, 13077 => 2)) {
		quest::say("Fine work. You have earned the respect of the Library. Here is a small token of our appreciation. We shall have this ground down as soon as we find someone to go to [" . quest::saylink("Kaladim") . "].");
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Create a hash for storing cash - 200 to 250cp
		my %cash = plugin::RandomCash(200,250);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(245,10); 		#:: + Eldritch Collective
		quest::faction(255,10); 	#:: + Gem Choppers
		quest::faction(333,10); 	#:: + King Ak'Anon
		quest::faction(238,-30); 	#:: - Dark Reflection
		quest::faction(239,-30); 	#:: - The Dead
	}
	#:: Turn in for 13071 -  Air Tight Box
	if (plugin::check_handin(\%itemcount, 13271 => 1)) {
		quest::say("Ah! See? you weren't too afraid to get your hands dirty after all. Now go take a bath!");
		#:: Give item 10017 - Turquoise
		quest::summonitem(10017);
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Create a hash for storing cash - 200 to 250cp
		my %cash = plugin::RandomCash(200,250);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(245,10); 		#:: + Eldritch Collective
		quest::faction(255,10); 	#:: + Gem Choppers
		quest::faction(333,10); 	#:: + King Ak'Anon
		quest::faction(238,-30); 	#:: - Dark Reflection
		quest::faction(239,-30); 	#:: - The Dead
	}
	#:: Turn in for 12160 -  Basilisk Tongue
	if (plugin::check_handin(\%itemcount, 12160 => 4)) {
		quest::say("Very very good! I can use these in some of our experiments. These tongues are hard to come by and more than a few of our scouts have been turned to stone because of these creatures, but I'm sure you found that out by now, eh?");
		#:: Randomly choose various mage level spells excluding pet item spells
		quest::summonitem(quest::ChooseRandom(15205,15211,15288,15310,15311,15313,15331,15050,15093,15315,15316,15058,15317,15318,15036,15094,15246,15322,15323,15325,15851,15324,15332,15400,15399,15398,15042,15613));
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Create a hash for storing cash - 1500 to 1600cp
		my %cash = plugin::RandomCash(1500,1600);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(245,10); 		#:: + Eldritch Collective
		quest::faction(255,10); 	#:: + Gem Choppers
		quest::faction(333,10); 	#:: + King Ak'Anon
		quest::faction(238,-30); 	#:: - Dark Reflection
		quest::faction(239,-30); 	#:: - The Dead
	}
	#:: Turn in for 12160 -  Bozinite Pestle
	if (plugin::check_handin(\%itemcount, 13272 => 1)) {
		quest::say("Outstanding $name!! This should be of help to you.");
		#:: Randomly choose various mage level spells excluding pet item spells
		quest::summonitem(quest::ChooseRandom(15205,15211,15288,15310,15311,15313,15331,15050,15093,15315,15316,15058,15317,15318,15036,15094,15246,15322,15323,15325,15851,15324,15332,15400,15399,15398,15042,15613));
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Create a hash for storing cash - 1500 to 1600cp
		my %cash = plugin::RandomCash(1500,1600);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(245,10); 		#:: + Eldritch Collective
		quest::faction(255,10); 	#:: + Gem Choppers
		quest::faction(333,10); 	#:: + King Ak'Anon
		quest::faction(238,-30); 	#:: - Dark Reflection
		quest::faction(239,-30); 	#:: - The Dead
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
