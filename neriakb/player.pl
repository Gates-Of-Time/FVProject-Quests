#:: Forces gates to open at the same time

sub EVENT_CLICKDOOR {
	if ($doorid == 1) {
		quest::forcedooropen(2);
		quest::forcedooropen(49);
	}
	elsif ($doorid == 2) {
		quest::forcedooropen(1);
		quest::forcedooropen(49);
	}
	elsif ($doorid == 49) {
		quest::forcedooropen(1);
		quest::forcedooropen(2);
	}
}
