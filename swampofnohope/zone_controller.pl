@berserkerSpawnLocationIds = (19286, 19303, 19304, 19374, 19375, 19379, 19380, 19381, 19382, 19418);    
@impalerSpawnLocationIds = ();    
my %berserkerSpawnLocationIdsHash = map { $_ => 1 } @berserkerSpawnLocationIds;
my %impalerSpawnLocationIdsHash = map { $_ => 1 } @impalerSpawnLocationIds;

sub EVENT_SIGNAL {
	#:: Match a signal <Bererker cycle spawn location id>
	if (exists($berserkerSpawnLocationIdsHash{$signal})) {
		quest::disable_spawn2($signal);
		
		my $nextSpawnLocationId = $berserkerSpawnLocationIds[rand(@berserkerSpawnLocationIds)];
  	quest::enable_spawn2($nextSpawnLocationId);
	}  
	#:: Match a signal <Impaler cycle spawn location id>
	elsif (exists($impalerSpawnLocationIdsHash{$signal})) {
		quest::disable_spawn2($signal);
		
		my $nextSpawnLocationId = $impalerSpawnLocationIds[rand(@impalerSpawnLocationIds)];
  	quest::enable_spawn2($nextSpawnLocationId);
	}  
}

# https://stackoverflow.com/questions/2860226/how-can-i-check-if-a-perl-array-contains-a-particular-value