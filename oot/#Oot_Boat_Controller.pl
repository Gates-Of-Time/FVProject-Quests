# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "OOTBoatControllerId",
  timer => "oot_sirensbane_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 69001,
      zoneId => 69,
      gridId => 63,
      waitKey => "sirensbane_butcher_to_oot_wait",
      runtimes => [46, 1246]
    ),
    RouteConfig->new(
      npcId => 69001,
      zoneId => 69,
      gridId => 64,
      waitKey => "sirensbane_freeport_to_oot_wait",
      runtimes => [701, 1901]
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