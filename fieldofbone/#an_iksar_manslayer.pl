sub EVENT_DEATH_COMPLETE {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Spawn a The Field of Bone >> a_lesser_spirit (78211) at the current location
		quest::spawn2(78211, 0, 0, $x, $y, $z, $h);
	}
}
