sub EVENT_DEATH {
	quest::delglobal("Tserr");
	quest::setglobal("Tserr",2,3,"F");
};