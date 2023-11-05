my $boatWaypoint = BoatWaypoint->new(
  controllerName => "TimorousBoatControllerId",
  zoneId => 96,
  gridId => 28,
  waitKey => "barrel_barge_td_to_oasis_wait",
  connectingZoneId => 37,
  connectingGridId => 100,
  waypoint => 30
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypoint = plugin::onBoatsWaypointArrive($boatWaypoint, $wp);
}
