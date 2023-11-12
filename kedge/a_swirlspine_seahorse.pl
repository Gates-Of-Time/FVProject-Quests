sub EVENT_SPAWN {
	#:: Create a scalar variable to store a random roll
	my $roll;
	#:: Random roll 0 - 3
	$roll = int(rand(4));
	#:: Match if roll is 0 (25 percent)
	if ($roll == 0) {
		#:: Add see invis
		$npc->ModifyNPCStat("see_invis",  "1");
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Create a scalar variable to store a random roll
	my $roll;
	#:: Random roll 0 - 1
	$roll = int(rand(2));
	#:: Match if roll is 0 (50 percent)
	if ($roll == 0) {
 		my $xoff = plugin::RandomRange(5, 15);
		my $yoff = plugin::RandomRange(5, 15);
		# Spawn a Kedge Keep >> Swirlspine_Guardian (64092) at an offset from center.
		quest::spawn2(64092, 0, 0, $x - $xoff, $y - $yoff, $z, $h);
	}
}
