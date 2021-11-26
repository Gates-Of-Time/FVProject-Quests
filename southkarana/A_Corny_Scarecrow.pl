# Zone: The Southern Plains of Karana (southkarana) >> A_Corny_Scarecrow (14198)

sub EVENT_SPAWN {
	quest::SetRunning(1);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if (quest::istaskactivityactive(273, 3)) { # Task: Help find my turkeys! 
			quest::say("Hello $name.  It is a good thing you found me--I was carried off by those [" . quest::saylink("wild turkeys") . "]. I am still trying to find my way home.");
		}
		else {
			quest::say("Hello $name.  I am sorry I cannot stay and chat--I have got to find my way home.");
		}
	}
	elsif ($text=~/wild turkeys/i) {
		if (quest::istaskactivityactive(273, 3)) { # Task: Help find my turkeys! [4, Finish off the wild turkey'.]
			quest::say("You seek wild turkeys?  If you give me some corn I will call them in for you--but be careful, they are a dangerous lot!");
			quest::updatetaskactivity(273, 3, 1);
		}
		else {
			quest::say("If you happen across any wild turkeys, I would run away!");
		}
	}
}

sub EVENT_ITEM {
	if (plugin::check_handin(\%itemcount, 147636 =>1 )) {
		if (quest::istaskactivityactive(273, 4)) { # Task: Help find my turkeys! 
			quest::updatetaskactivity(273, 4, 1); # Task: Help find my turkeys! 
			quest::say("Okay, $name.  Watch how quickly these wild turkeys come after this corn");
			quest::settimer(1,30);
			quest::doanim(43);
			quest::emote("lets out an eerie howl.");
		}
		else {
			quest::say("Thank you so much for this corn!");
		}
	}
	plugin::return_items(\%itemcount);
}

sub EVENT_TIMER {
	if ($timer == 1) {
		quest::stoptimer(1);
		quest::spawn2(14199,0,0,$x - 200,$y,$z,$h);
		quest::spawn2(14199,0,0,$x + 200,$y,$z,$h);
		quest::spawn2(14199,0,0,$x,$y - 200,$z,$h);
		quest::ze(1,"Off in the distance, a cold, shrill gobble permeates the solitude of the plain.");
		quest::settimer(2,30);
	}
	if ($timer == 2) {
		quest::stoptimer(2);
		quest::spawn2(14199,0,0,$x - 200,$y,$z,$h);
		quest::spawn2(14199,0,0,$x + 200,$y,$z,$h);
		quest::spawn2(14199,0,0,$x,$y - 200,$z,$h);
		quest::ze(1,"Off in the distance, another cold, shrill gobble permeates the solitude of the plain.");
	}
}

# Zone: The Southern Plains of Karana (southkarana) >> A_Corny_Scarecrow (14198)
