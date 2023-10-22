# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "QeynosBoatControllerId",
  timer => "qeynos_golden_maiden_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 1501,
      zoneId => 1,
      gridId => 69,
      waitKey => "golden_maiden_erudsxing_to_qeynos_wait",
      runtimes => [0, 600, 1200, 1800]
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
