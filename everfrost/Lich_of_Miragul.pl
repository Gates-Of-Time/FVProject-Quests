sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Areeeeewwwww");
		}
	}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 19072 => 1)) { # handin phlactery
	    quest::spawn2(30094, 0, 0,$x,$y,$z,$h); # Spawn Miragul MobID 55334, Grid 0, Guildwar 0, X, Y, Z, Heading
		quest::depop_withtimer(30094) # Miragul will de-spawn and start the spawn timer.
		}

		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 
# END of FILE Zone:everfrost  ID:3233 -- Lich_of_Miragul
