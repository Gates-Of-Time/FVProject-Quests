#:: Forces gates to open at the same time

sub EVENT_CLICKDOOR {
	if ($doorid == 57) {
		quest::toggledoorstate(58);
		quest::toggledoorstate(58);
	}
	elsif ($doorid == 58) {
		quest::toggledoorstate(58);
		quest::toggledoorstate(58);
	}
	elsif ($doorid == 59) {
		quest::toggledoorstate(58);
		quest::toggledoorstate(58);
	}
}
