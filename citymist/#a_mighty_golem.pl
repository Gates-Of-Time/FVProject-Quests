sub EVENT_DEATH_COMPLETE {
	my $random = int(rand(100));
  quest::spawn2(90190, 0, 0, $x, $y, $z, $h); ## NPC: #a_raging_golem
}