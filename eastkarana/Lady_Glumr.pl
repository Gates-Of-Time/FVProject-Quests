# Zone: Eastern Plains of Karana (eastkarana) >> Lady Glumr (15197)

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if (quest::istaskactivityactive(273, 1)) { #Task: Help find my turkeys! 
			quest::say("Hello $name.  I come from up North--perhaps you can find some corn at my family's farm...if they have avoided the wild turkey.");
		}
		else {
			quest::say("Hello $name.  Welcome to my home.");
		}
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}

# EOF Zone: Eastern Plains of Karana (eastkarana) >> Lady Glumr (15197)
