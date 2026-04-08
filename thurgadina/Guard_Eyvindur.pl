sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("Just because the Dain ordered us to let you offlanders into our city does not mean I have to speak with ye. Now move along.");
	}
}

