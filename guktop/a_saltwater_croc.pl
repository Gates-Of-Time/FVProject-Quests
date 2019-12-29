sub EVENT_DEATH_COMPLETE {
	#:: Send a signal '1' to The City of Guk >> croc_trigger (65150) after a 1 second delay
	quest::signalwith(65150, 1, 1);
}
