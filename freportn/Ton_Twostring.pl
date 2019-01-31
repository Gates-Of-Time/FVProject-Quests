sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail. $name - Are you [" . quest::saylink("interested") . "] in helping the League of Antonican Bards by delivering some [" . quest::saylink("mail") . "]?");
	}
	elsif ($text=~/mail/i) {
		quest::say("The League of Antonican Bards has a courier system made up of travelers and adventurers.  We pay good gold to anyone who will take messages from bards such as myself to one of our more distant offices.  Are you [" . quest::saylink("interested") . "]?");
	}
	elsif ($text=~/interested/i) {
		quest::say("I have messages that need to go to Highpass, Kelethin, and Qeynos.  Will you deliver mail to [" . quest::saylink("Kelethin") . "], [" . quest::saylink("Highpass") . "], or [" . quest::saylink("Qeynos") . "] for me?");
	}
	elsif ($text=~/Kelethin/i) {
		quest::say("Take this pouch to Idia in Kelethin.  You can find her at the bard guild hall.  I am sure she will compensate you for your troubles.");
		#:: Summon 18167 - Pouch of Mail (Kelethin)
		quest::summonitem(18167);
	}
	elsif ($text=~/Qeynos/i) {
		quest::say("Take this pouch to Eve Marsinger in Qeynos.  You can find her at the bard guild hall.  I am sure she will compensate you for your troubles.");
		#:: Summon 18165 - Pouch of Mail (Highpass)
		quest::summonitem(18165);
	}
	elsif ($text=~/Highpass/i) {
		quest::say("Take this pouch to Lislia Goldtune in Highpass.  You can find her at the entrance to HighKeep.  I am sure she will compensate you for your troubles.");
		#:: Summon 18156 - Pouch of Mail (Qeynos)
		quest::summonitem(18156);
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18164 or 18166 - both identify as Pouch of Mail (Freeport)
	if (plugin::check_handin(\%itemcount, 18164 => 1 || 18166 => 1 )) {
		quest::say("More mail - you have done us a noteworthy service!  Please take this gold for your troubles.  If you are interested in more work, just ask me.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Give item 13556 - White and Blue Tunic*
		quest::summonitem(13556);
		#:: Set faction
		quest::faction(192,10); 		#:: + League of Antonican Bards
		quest::faction(184,15); 		#:: + Knights of Truth
		quest::faction(135,-10); 		#:: + Guard of Qeynos
		quest::faction(273,-30); 		#:: - Ring of Scale
		quest::faction(207,-30); 		#:: - Mayong Mistmoore
		#:: Create a hash for storing cash - 900 to 2000cp
		my %cash = plugin::RandomCash(900,2000);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}		
