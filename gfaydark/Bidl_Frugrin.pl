sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Greetings $name. Do not you find the wine of Kelethin as sweet as their women?");
	}
	if ($text=~/lens/i) {
		quest::say("Oh my!! I forgot I had that. Here you are. You better take it back.  I need to go elsewhere, bye now.");
		#:: Give a 13276 - Telescope Lens
		quest::summonitem(13276);
	}
}
