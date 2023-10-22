# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "ButcherBoatControllerId",
  timer => "butcherblock_sirensbane_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 68009,
      zoneId => 68,
      gridId => 236,
      waitKey => "sirensbane_oot_to_butcher_wait",
      runtimes => [0, 1200]
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