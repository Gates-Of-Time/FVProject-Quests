# Zone: Eastern Plains of Karana (eastkarana) >> Master Glumr (15196)

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if (quest::istaskactivityactive(273, 0)) { #Task: Help find my turkeys! 
			quest::say("Hello $name.  Look at this broken fence!  Some of our turkeys heard a [" . quest::saylink("wild call") . "] off in the distance and went crazy--they ran off with all of our corn.");
		}
		else {
			quest::say("Hello $name.  Would you just look at this broken fence!");
		}
	}
	elsif ($text=~/wild call/i) {
		if (quest::istaskactivityactive(273, 0)) { #Task: Help find my turkeys! 
			quest::say("Last night, right after sun down, an eerie call rose up from across the plain.  I've never heard anything like it. At once, our turkeys went mad!  They smashed through the fence, grabbed all the [" . quest::saylink("corn") . "], and ran off to the North!");
		}
		else {
			quest::say("Yes, we've heard those eerie calls as well. Perhaps you should ask my father if you're interested in them.");
		}
	}
	elsif ($text=~/corn/i) {
		if (quest::istaskactivityactive(273, 0)) { #Task: Help find my turkeys! 
			quest::say("We're poor farmers--the only thing we have to trade is our turkey meat.  Without corn, our turkeys will starve.  If you can find some corn, you may be able to lure them into the open so that we can recapture them.");
			quest::updatetaskactivity(273, 0, 1); #Task: Help find my turkeys! 
		}
		else {
			quest::say("Mmm--I love me some corn.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match 148001 - Sack of Corn
	if (plugin::check_handin(\%itemcount, 148001 =>1 )) {
		if (quest::istaskactivityactive(273, 6)) {
			quest::say("It's a miracle! Thank you so much, $name.  With this food our turkeys are sure to live.");
			#:: Give a 148002 - Note to Farmer Glumr
			quest::summonitem(148002);
			quest::say("Please take this note to my father to let him know of your great deeds!");
			quest::updatetaskactivity(273, 6, 1);
			quest::ding();
			quest::exp(600000);
		}
		else {
			quest::say("Thank you so much for this corn!");
			quest::ding();
			quest::exp(60000);
		}
	}
	plugin::return_items(\%itemcount);
}

# EOF Zone: Eastern Plains of Karana (eastkarana) >> Master Glumr (15196)
