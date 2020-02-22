sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Time to die $name!");
	}
}

sub EVENT_AGGRO {
	#:: Create a scalar variable to store a random number
	$random = int(rand(3));
	#:: Create a scalar variable to store the plural class name
	$classplural = "${class}s";
	if ($random == 0) {
		quest::say("it's $classplural like you that insult all of Norrath!");
	}
	elsif($random == 1) {
		quest::say("$classplural like you are an affront to my senses!");
	}
	elsif($random == 1) {
		quest::say("I really hate $classplural like you!");
	}	
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
