#:: Forces gates to open at the same time

sub EVENT_CLICKDOOR {
	if ($doorid == 57) {
		quest::forcedooropen(58);
		quest::forcedooropen(59);
	}
	elsif ($doorid == 58) {
		quest::forcedooropen(57);
		quest::forcedooropen(59);
	}
	elsif ($doorid == 59) {
		quest::forcedooropen(57);
		quest::forcedooropen(58);
	}
}
