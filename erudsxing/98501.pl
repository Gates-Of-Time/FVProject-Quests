my $boatWaypointToErudnext = BoatWaypoint->new(
  controllerName => "ErudsxingBoatControllerId",
  zoneId => 98,
  gridId => 63,
  waitKey => "golden_maiden_erudsxing_to_erudnext_wait",
  connectingZoneId => 24,
  connectingGridId => 22,
  waypoint => 20
);

my $boatWaypointToQeynos = BoatWaypoint->new(
  controllerName => "ErudsxingBoatControllerId",
  zoneId => 98,
  gridId => 64,
  waitKey => "golden_maiden_erudsxing_to_qeynos_wait",
  connectingZoneId => 1,
  connectingGridId => 69,
  waypoint => 3
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypointToQeynos = plugin::onBoatsWaypointArrive($boatWaypointToQeynos, $wp);
  $boatWaypointToErudnext = plugin::onBoatsWaypointArrive($boatWaypointToErudnext, $wp);
}
