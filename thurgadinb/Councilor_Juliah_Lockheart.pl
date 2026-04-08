sub EVENT_SAY {
  if ($text =~ /Hail/i) {
    quest::say("Hello there, my what a nice looking $race you are, not that I've seen many of your kind mind you. I am Councilor Lockheart, representing the people of Thurgadin. Here is where we aid the Dain by presenting the peoples' will to him in the hopes that laws are made with the good interest of all our people in mind.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1464 - Ring of the Coldain Council
  if (plugin::takeItems(1464 => 1)) {
    my $x = $npc->GetX();
    my $y = $npc->GetY();
    my $z = $npc->GetZ();
    my $h = $npc->GetHeading();

    #:: Spawn a Icewell Keep >> #Councilor_Juliah_Lockheart (129063), without grid or guild war, at the current location
    quest::spawn2(129063, 0, 0, $x, $y, $z, $h);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }
  else {
    quest::say("I don't need this.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
  #:: Match if signal from thurgadinb/129097.pl is "1"
  if ($signal == 1) {
    quest::moveto(14,883,-2,232,1);
  }

  #:: Match if signal from thurgadinb/129098.pl is "2"
  elsif ($signal == 2) {
    quest::moveto(-25,542,65,0,1);
  }
}

