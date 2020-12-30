sub EVENT_SLAY {
	quest::say("Tone deaf fool, you have no ear for rhythm, and deserve this death.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("The dance is over, for now.");
}
