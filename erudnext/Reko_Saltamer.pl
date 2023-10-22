my $boatMessageShouted = 0;

sub EVENT_SPAWN {
  quest::settimer("reko_saltamer_boat_shout", 1);
}

sub EVENT_TIMER {
  if($timer eq "reko_saltamer_boat_shout") {
    my $zonetime = plugin::val('$zonetime');

    if($zonetime == 57 || $zonetime == 657 || $zonetime == 1257 || $zonetime == 1857) {
      if($boatMessageShouted == 0) {
        quest::shout("The ship to Antonica has departed the Qeynos Docks. Please finish up any business you may have here in Erudin and make your way towards the docks if you intend to travel to Qeynos.");
        $boatMessageShouted = 1;
      }
    } elsif($zonetime == 445 || $zonetime == 1045 || $zonetime == 1645 || $zonetime == 2245) {
      if($boatMessageShouted == 0) {
        quest::shout("The ship to Antonica is now departing the Erudin docks. It will be some time before it makes call here again, we will keep you informed.");
        $boatMessageShouted = 1;
      }
    } else {
      $boatMessageShouted = 0;
    }
  }
}
