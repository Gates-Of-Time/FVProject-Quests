sub EVENT_SPAWN {
	quest::delglobal("Tserr");
	quest::setglobal("Tserr",2,3,"F");
	quest::delglobal("omica");
	quest::setglobal("omica",2,3,"F");
}