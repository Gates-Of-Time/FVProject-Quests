# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "ErudsxingBoatControllerId",
  timer => "erudsxing_golden_maiden_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 98501,
      zoneId => 98,
      gridId => 63,
      waitKey => "golden_maiden_qeynos_to_erudsxing_wait",
      runtimes => [109, 709, 1309, 1909]
    ),
    RouteConfig->new(
      npcId => 98501,
      zoneId => 98,
      gridId => 64,
      waitKey => "golden_maiden_erudnext_to_erudsxing_wait",
      runtimes => [458, 1058, 1658, 2258]
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
