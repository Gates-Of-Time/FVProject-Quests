# OOT Routes
my $boatWaypointToFreeport = BoatWaypoint->new(
  controllerName => "OOTBoatControllerId",
  zoneId => 69,
  gridId => 63,
  waitKey => "sirensbane_oot_to_freeport_wait",
  connectingZoneId => 10,
  connectingGridId => 29,
  waypoint => 50  
);

my $boatWaypointToButcher = BoatWaypoint->new(
  controllerName => "OOTBoatControllerId",
  zoneId => 69,
  gridId => 64,
  waitKey => "sirensbane_oot_to_butcher_wait",
  connectingZoneId => 68,
  connectingGridId => 236,
  waypoint => 49  
);

sub EVENT_WAYPOINT_ARRIVE
{
  $boatWaypointToFreeport = plugin::onBoatsWaypointArrive($boatWaypointToFreeport, $wp);
  $boatWaypointToButcher = plugin::onBoatsWaypointArrive($boatWaypointToButcher, $wp);
}
