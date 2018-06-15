sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("A fine day.  Quite murky and quiet, is it not? May your path be filled with fortunes. Be well.");
	}
	if ($text=~/crystal of capturing/i) {
		quest::say("Hrm? A crystal of capturing?  Aye.  I do know the secret of their making. Not that I would tell you. I will, however, create one for you. Provided you bring me some of their componenents and a large coin reserve, that is.  I require a potion of sorrow and 1000 gold coins.  A tidy sum, in return for which, I will do you the favor of not asking why you need such a... dark item.");
	}
}
