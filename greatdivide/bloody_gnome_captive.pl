sub EVENT_SPAWN {
  #:: Create a timer 'despawn' that triggers every 60 seconds (1 min 0 sec).
  quest::settimer("despawn", 60);
}

sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Uh, hi. Hey, that was great work and all. I couldn't believe that. Knowing that bear, I was sure my time was up. I'm heading back to Ak'Anon. I've had enough of pirates, mountains, snow, and bears ten times my size. If you want a map to get back you can have it.");
  }
  elsif ($text =~ /map/i) {
    #:: Give a 30045 - Third part of an Iceclad Map.
    quest::summonitem(30045);
    #:: Grant a tiny amount of experience.
    quest::exp(100);
    #:: Stop the timer 'despawn'.
    quest::stoptimer("despawn");
    #:: Depop without spawn timer
    quest::depop();
  }
}

sub EVENT_TIMER {
  #:: Stop the timer 'despawn'.
  quest::stoptimer("despawn");
  #:: Depop without spawn timer
  quest::depop();
}
