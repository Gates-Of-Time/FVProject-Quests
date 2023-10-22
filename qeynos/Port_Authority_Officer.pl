my $boatMessageShouted = 0;

sub EVENT_SPAWN {
  quest::settimer("port_authority_officer_boat_shout", 1);
}

sub EVENT_TIMER {
  if($timer eq "port_authority_officer_boat_shout") {
    my $zonetime = plugin::val('$zonetime');

    if($zonetime == 57 || $zonetime == 657 || $zonetime == 1257 || $zonetime == 1857) {
      if($boatMessageShouted == 0) {
        quest::shout("Hear ye, hear ye! The ship bound for the far island of Odus is now departing the Qeynos docks. On time and on schedule, all hail Antonius Bayle!");
        $boatMessageShouted = 1;
      }
    } elsif($zonetime == 445 || $zonetime == 1045 || $zonetime == 1645 || $zonetime == 2245) {
      if($boatMessageShouted == 0) {
        quest::shout("The boat to Odus is about to depart from the Erudin docks. It will arrive at the Qeynos docks in a matter of minutes. Remember, smuggling is a serious offense!");
        $boatMessageShouted = 1;
      }
    } else {
      $boatMessageShouted = 0;
    }
  }
}
