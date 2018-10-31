sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Welcome to Everhot Forge! I supply weapon molds for skilled blacksmiths. Care to view my wares?");
	}
}
