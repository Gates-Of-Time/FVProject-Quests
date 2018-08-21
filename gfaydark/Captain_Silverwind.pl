sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Greetings. $name.  I protect these lands in the name of the Royal Order of Koada'Vie. defenders of Felwithe.");
	}
}
