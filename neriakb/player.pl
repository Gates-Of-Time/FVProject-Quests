#:: Forces gates to open and close at the same time

sub EVENT_CLICKDOOR {
	if ($doorid == 1) {
		if (quest::isdooropen(1)) {
			quest::forcedoorclose(2);
			quest::forcedoorclose(49);
		}
		else {
			quest::forcedooropen(2);
			quest::forcedooropen(49);
		}
	}
	elsif ($doorid == 2) {
		if (quest::isdooropen(2)) {
			quest::forcedoorclose(1);
			quest::forcedoorclose(49);
		}
		else {
			quest::forcedooropen(1);
			quest::forcedooropen(49);
		}
	}
	elsif ($doorid == 49) {
		if (quest::isdooropen(49)) {
			quest::forcedoorclose(1);
			quest::forcedoorclose(2);
		}
		else {
			quest::forcedooropen(1);
			quest::forcedooropen(2);
		}
	}
}
