# BB Route
my $boatWaypoint = BoatWaypoint->new(
  controllerName => "ButcherBoatControllerId",
  zoneId => 68,
  gridId => 236,
  waitKey => "sirensbane_butcher_to_oot_wait",
  connectingZoneId => 69,
  connectingGridId => 63,
  waypoint => 11
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypoint = plugin::onBoatsWaypointArrive($boatWaypoint, $wp);
}