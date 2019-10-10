sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello.  Please feel free to browse.  We make the finest boots in all of Antonica.");
	}
	elsif ($text=~/treant wood/i) {
		quest::say("Looking for Treant material? I do not work with such material. Ask Rodgar. I believe he is upstairs.");
	}
}
