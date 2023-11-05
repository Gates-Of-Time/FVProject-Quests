# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "TimorousBoatControllerId",
  timer => "timorous_boats_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 96401,
      zoneId => 96,
      gridId => 28,
      waitKey => "barrel_barge_oasis_to_td_wait",
      runtimes => [118, 518, 918, 1318, 1718, 2118]
    )
  ]
);

sub EVENT_SPAWN {
  $boatConfig = plugin::boatsOnEventSpawn($boatConfig);
}

sub EVENT_TIMER {
  $boatConfig = plugin::boatsOnEventTimer($boatConfig, $timer);
}

sub EVENT_SIGNAL {
  $boatConfig = plugin::boatsOnEventSignal($boatConfig, $signal);
}
