# Oasis Route
my $boatWaypoint = BoatWaypoint->new(
  controllerName => "OasisBoatControllerId",
  zoneId => 37,
  gridId => 100,
  waitKey => "barrel_barge_oasis_to_td_wait",
  connectingZoneId => 96,
  connectingGridId => 28,
  waypoint => 11
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypoint = plugin::onBoatsWaypointArrive($boatWaypoint, $wp);
}
