sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Welcome! Why don't you browse through my selection of fine goods and pick out some things you like $name?");
	}
}
