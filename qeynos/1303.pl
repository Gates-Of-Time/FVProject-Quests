sub EVENT_SIGNAL {
	#:: Match a signal "1" from qeynos/Grahan_Rothkar.pl
	if ($signal == 1) {
		quest::depop();
	}
}

sub EVENT_DEATH_COMPLETE {
		#:: Data bucket to verify quest has been started appropriately
		$key = killer_id() . "-steel-warriors-final-test";
		#:: Set a data bucket, quest started
		quest::set_data($key, 1);
}
