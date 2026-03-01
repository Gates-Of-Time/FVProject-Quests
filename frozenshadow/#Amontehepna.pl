sub EVENT_DEATH {
	#:: Spawn one and only one Tower of Frozen Shadow >> #Cara_Omica (111163), with no grid or guildwar, at the specified location
	quest::unique_spawn(111163,0,0,200.0,978.0,186.60);
	quest::delglobal("omica");
	quest::setglobal("omica",3,3,"F");
};