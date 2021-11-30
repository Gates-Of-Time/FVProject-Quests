# Zone: The Plane of Knowledge (poknowledge) >> Farmer_Glumr (22208)

sub EVENT_SPAWN {
	quest::settimer(1,600);
}

sub EVENT_TIMER {
	if ($timer == 1) {
		quest::say("Here turkey turkey turkey!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if (quest::istaskactivityactive(273,0)) { # Task: Help find my turkeys! 
			quest::say("Hello $name. Do you have any news on my turkeys?");
		}
		else {
			quest::say("Hello $name. I have prayed to Karana that a great $class like you would arrive to assist me--my turkeys have gone wild and all flown the coop!  Can you [" . quest::saylink("help") . "] me?");
		}
	}
	elsif ($text=~/help/i) {
		if (quest::istaskactivityactive(273,0)) { # Task: Help find my turkeys! 
			quest::say("So you do not have any news on my turkeys?");
		}
		else {
			quest::say("You must find them for me--head to my farm and speak with my son...he can tell you more.  Good luck, $name!");
			quest::assigntask(273, 0); # Task: Help find my turkeys! 
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 148002 - Note to Farmer Glumr
	if (plugin::takeItems(148002 =>1 )) {
		if (quest::istaskactivityactive(273, 7)) { # Task: Help find my turkeys! 
			quest::updatetaskactivity(273, 7, 1); # Task: Help find my turkeys! 
			quest::say("Thank you so much, $name!  Please, take some turkey meat for your troubles!");
			quest::summonitem(56051);  # Endless Turkeys (56051)
			quest::ding();
			quest::exp(600000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

# EOF Zone: The Plane of Knowledge (poknowledge) >> Farmer_Glumr (22208)
