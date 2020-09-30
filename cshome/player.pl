sub EVENT_POPUPRESPONSE {
	if ($popupid == 42) {
		quest::say("Okay, here is your manastone!");
		quest::summonitem(13401);
	}
	elsif ($negativeid == 42) {
		quest::say("Too bad, everyone gets a manastone!");
		quest::summonitem(13401);
	}
}
