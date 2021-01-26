sub EVENT_SPAWN {
	my $min = 1;
	my $range = 4;
	my $randomspawn = int(rand($range)) + $min;
	plugin::RandomRoam(250, 250);
	quest::settimer("move",$randomspawn);
}

sub EVENT_TIMER {
	if ($timer eq "move") {
		plugin::RandomRoam(250, 250);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Spawn one and only one The Northern Plains of Karana >> #Regis_the_Reverent (13042), no grid or guildwar, at the specified location
	quest::unique_spawn(13042, 0, 0, -1560, 1450, 50, 125.5);
}
