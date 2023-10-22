my $boatWaypoint = BoatWaypoint->new(
  controllerName => "QeynosBoatControllerId",
  zoneId => 1,
  gridId => 69,
  waitKey => "golden_maiden_qeynos_to_erudsxing_wait",
  connectingZoneId => 98,
  connectingGridId => 63,
  waypoint => 13
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypoint = plugin::onBoatsWaypointArrive($boatWaypoint, $wp);
}
