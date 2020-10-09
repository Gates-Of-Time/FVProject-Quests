sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Welcome to Everhot Forge! I supply weapon molds for skilled blacksmiths. Care to view my wares?");
	}
	elsif ($text=~/mold/i) {
		quest::say("The various molds that I have for sale are used in the smithing of weapons. Simply use the necessary molds with a sheet of metal, a forge, and a water flask. Weapons with hilts and pommels will also need molds for those pieces and weapons such as pole-arms and axes require an oak shaft.");
	}
	elsif ($text=~/weapon/i) {
		quest::say("The various molds that I have for sale are used in the smithing of weapons. Simply use the necessary molds with a sheet of metal, a forge, and a water flask. Weapons with hilts and pommels will also need molds for those pieces and weapons such as pole-arms and axes require an oak shaft.");
	}
	elsif ($text=~/where mines/i) {
		quest::say("The mines of Kaladim can be entered in North Kaladim.  The opening is adjacent to the Ratsbone Treasury.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
