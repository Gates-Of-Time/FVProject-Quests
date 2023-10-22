# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "ErudnextBoatControllerId",
  timer => "erudnext_golden_maiden_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 24501,
      zoneId => 24,
      gridId => 22,
      waitKey => "golden_maiden_erudsxing_to_erudnext_wait",
      runtimes => [339, 939, 1539, 2139]
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
