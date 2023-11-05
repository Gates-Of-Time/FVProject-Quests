# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "OasisBoatControllerId",
  timer => "oasis_barrel_barge_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 37071,
      zoneId => 37,
      gridId => 100,
      waitKey => "barrel_barge_td_to_oasis_wait",
      runtimes => [0, 400, 800, 1200, 1600, 2000]
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
