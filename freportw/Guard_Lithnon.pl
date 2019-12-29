sub EVENT_SIGNAL { 
	#:: Receive Signal 1 from Krazen Loosh
	if ($signal == 1) {
		#:: Attack Guard Alayle
		quest::attacknpctype(9141); 
	}
}
