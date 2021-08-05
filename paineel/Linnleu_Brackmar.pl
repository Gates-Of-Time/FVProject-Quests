sub EVENT_SAY {
	if ($text=~/hail/i) {
	    quest::say("Greetings. $name.  My wares are few but valuable. including books of research into the less widely known arts of necromancy.  Perhaps you should have a look.");
    }
}