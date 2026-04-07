sub EVENT_SPAWN {
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  #:: Create a proximity, 40 units across, 0 units tall, default proximity say mode
  quest::set_proximity($x - 20, $x + 20, $y - 20, $y + 20);
}

sub EVENT_ENTER {
  quest::say("Please, somebody help me. This bear won't let me leave.");
  quest::emote("tries to hide from Bloodmaw deeper in the cave.");
  quest::clear_proximity();
  #:: Depop without spawn timer
  quest::depop();
}

