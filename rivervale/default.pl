sub EVENT_SPAWN {
	quest::settimer("die", 5);
}

sub EVENT_TIMER {
	if ($timer eq "die") {
		quest::say("Oh no, Inny killed me")
		plugin::SetAnim("dead");
		quest::sethp(1);
		quest::stoptimer("die");
	}
}
