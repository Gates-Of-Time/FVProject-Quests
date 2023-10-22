# Config for boats of this controller
my $boatConfig = BoatConfig->new(
  controllerId => "FreeportBoatControllerId",
  timer => "freeport_sirensbane_timer",
  routeConfig => [
    RouteConfig->new(
      npcId => 10137,
      zoneId => 10,
      gridId => 29,
      waitKey => "sirensbane_oot_to_freeport_wait",
      runtimes => [609, 1809]
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
