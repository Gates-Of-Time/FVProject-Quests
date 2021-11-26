# Zone: The Northern Plains of Karana (northkarana) >> Old_Lady_Einarr (13132)

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if (quest::istaskactivityactive(273, 2)) { # Task: Help find my turkeys! 
			quest::say("Hello $name.  Is it [" . quest::saylink("wisdom") . "] you seek?");
		}
		else {
			quest::say("Hello $name.  Welcome to my home.");
		}
	}
	elsif ($text=~/wisdom/i) {
		if (quest::istaskactivityactive(273, 2)) { # Task: Help find my turkeys! 
			quest::say("Summoning wild turkey is no easy task. Our scarecrow knew the way, though. It's too bad he was kidnapped and taken South!");
			quest::updatetaskactivity(273, 2, 1); # Task: Help find my turkeys! 
		}
		else { # To Do:  Randomize a bunch of 'wise' answers for fun
			quest::say("The ones who are crazy enough to think that they can change the world, are the ones who do."); 
		}
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}

# EOF Zone: The Northern Plains of Karana (northkarana) >> Old_Lady_Einarr (13132)
