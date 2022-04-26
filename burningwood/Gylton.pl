sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		#:: Create a scalar variable to store a random number from 1 - 60
		my $Number = int(rand(60)) + 1;
		if(random_result <=20) {
			quest::say("You will perish!!  You are weak and should have kept to your own realm!!");
		}
		else if(random_result <=40) {
			quest::say("I really hate $class like you!");
		}
		else {
			quest::say("$class like you are an affront to my senses!");
		}
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::emote("slams to the ground with a loud THUD!!  The ground around you still trembles.  'Now.. I shall never slay my blasphemous.. brother..  Xyl..'");
}