sub EVENT_SPAWN {
	#:: Set up a timer
	quest::set_timer("sing", 1040);
}

sub EVENT_TIMER {
	#:: Catch the "sing" timer
	if ($timer eq "sing") {
		#:: Create a scalar to store a random
		my $singit = quest::ChooseRandom(1,2,3,4,5,6);
		#:: Match singit = 1
		if ($singit == 1) { 
			quest::say("Let's hear some music.");
			bard_sing();
		}
		elsif ($singit == 2) { 
			quest::say("Music!! Music!!");
			bard_sing();
		}
		elsif ($singit == 3) { 
			quest::say("Play us some music bard!!");
			bard_sing();
		}
		elsif ($singit == 4) { 
			quest::say("Let's liven this pub up!");
			bard_sing();
		}
		elsif ($singit == 5) { 
			quest::say("Try to cheer this place up, bard.");
			bard_sing();
		}
		elsif ($singit == 6) { 
			quest::say("Where is the music? I don't pay you bards to drink all the grog!!");
			bard_sing();
		}
	}
}

sub bard_sing {
	#:: Send a signal to Trolong Lightleer
	quest::signal(10141,1);
	#:: Send a signal to Branis Noolright
	quest::signal(10158,1);
	#:: Send a signal to Palana_Willin
	quest::signal(10165,1);
}
