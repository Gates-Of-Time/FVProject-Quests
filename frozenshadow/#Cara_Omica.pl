sub EVENT_DEATH {
	quest::delglobal("omica");
	quest::setglobal("omica",2,3,"F");
};