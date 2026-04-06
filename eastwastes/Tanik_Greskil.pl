sub EVENT_SPAWN {
  #:: Set appearance to Feign Death
  $npc->SetAppearance(3);
  #:: Create a timer 'moveloc' that triggers every 300 seconds (5 min 0 sec).
  quest::settimer("moveloc", 300);
}

sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Outlander! Thank Brell you've found me! I am the last surviving member of my unit. Our mission was somehow compromised, the bloody Kromrif knew just where to find us... I can't imagine how they knew. I was barely able to escape with my life and wandered into a trap here. I am badly hurt and need your help.");
  }
  elsif ($text =~ /help/i) {
    quest::say("Quickly, give me a vial of Velium Vapors so I can return home, I am in desperate need of some attention from our clerics.");
  }
  elsif ($text =~ /velium vapors/i) {
    quest::say("Drat! Are you telling me you don't have one with you? Run back to Thurgadin at once and speak with Frundle, she can make you one. I will do what I can to stay alive. I may need to move about a bit to keep from being discovered. Hurry now outlander, you're my only hope.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1553 - Vial of Velium Vapors.
  if (plugin::takeItems( 1553 => 1)) {
    quest::say("Thank you, $name. I shall be eternally grateful to you. Should you ever require my assistance I pledge to you my aid. Please deliver this to Borannin, it is imperative that he deliver this to the Dain at once. Farewell for now outlander....");
    #:: Give a 1560 - Tanik's note.
    quest::summonitem(1560);
    #:: Stop the timer 'moveloc'.
    quest::stoptimer("moveloc");
    #:: Depop without spawn timer
    quest::depop();
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

sub EVENT_TIMER {
  if ($timer eq "moveloc") {
    #:: Stop the timer 'moveloc'.
    quest::stoptimer("moveloc");
    #:: Depop without spawn timer
    quest::depop();
  }
}

sub EVENT_AGGRO {
  #:: Set appearance to Stand
  $npc->SetAppearance(0);
}

sub EVENT_DEATH {
  #:: Stop the timer 'moveloc'.
  quest::stoptimer("moveloc");
}
