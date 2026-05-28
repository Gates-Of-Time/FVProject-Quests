my $ProxDist = 30;

sub EVENT_SPAWN {
	my $x = $npc->GetX();
	my $y = $npc->GetY();
	my $z = $npc->GetZ();

	#:: Create a proximity, 60 units across, 60 units tall, default proximity say mode
	quest::set_proximity($x - $ProxDist, $x + $ProxDist, $y - $ProxDist, $y + $ProxDist, $z - $ProxDist, $z + $ProxDist);
}

sub EVENT_ENTER {
	quest::emote("the archway a faint glow surrounds your body.");
}
