# Freeport Route
my $boatWaypoint = BoatWaypoint->new(
  controllerName => "FreeportBoatControllerId",
  zoneId => 10,
  gridId => 29,
  waitKey => "sirensbane_freeport_to_oot_wait",
  connectingZoneId => 69,
  connectingGridId => 64,
  waypoint => 17  
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypoint = plugin::onBoatsWaypointArrive($boatWaypoint, $wp);
}