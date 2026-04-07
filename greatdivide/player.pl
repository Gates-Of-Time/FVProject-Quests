sub EVENT_ENTERZONE {
  #:: Create a timer 'spires' that triggers every 10 seconds (10 sec).
  quest::settimer("spires", 10);
  $nexus_gd = undef;
  $spire_gd = undef;
  $message_gd = undef;
}

sub EVENT_TIMER {
  if (defined $qglobals{nexus_gd} && defined $qglobals{spire_gd} && $qglobals{spire_gd} == 1 && plugin::check_hasitem($client, 19720)) {
	# Self only to avoid AE, we need to handle inventory removals
	quest::selfcast(2433);
    quest::setglobal(spire_gd, 0, 1, "F");
    quest::delglobal(message_gd);
	#:: Delete the 19720 - Spire Stone
    $client->NukeItem(19720);
   	$qglobals{nexus_gd} = undef;
    $qglobals{spire_gd} = undef;
    $qglobals{message_gd} = undef;
  }
  elsif (defined $qglobals{nexus_gd} && defined $qglobals{spire_gd} && $qglobals{spire_gd} == 1 && !defined $qglobals{message_gd} && !plugin::check_hasitem($client, 19720)) {
    $client->Message(15, "You don't have the correct component to travel to Luclin.");
    # Prevent component mssage from being spammed.
	quest::setglobal(message_gd, 1, 1, "M20");
   	$qglobals{nexus_gd} = undef;
    $qglobals{spire_gd} = undef;
    $qglobals{message_gd} = undef;
  }
  elsif (defined $qglobals{nexus_gd} && defined $qglobals{spire_gd} && $qglobals{spire_gd} == 1 && defined $qglobals{message_gd} && !plugin::check_hasitem($client, 19720)) {
    $qglobals{nexus_gd} = undef;
    $qglobals{spire_gd} = undef;
    $qglobals{message_gd} = undef;
  }
}