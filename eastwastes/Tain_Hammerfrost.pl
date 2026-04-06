my $flag = 0;

sub EVENT_SPAWN {
  $flag = 0;
  #:: Create a timer '1' that triggers every 60 seconds (1 min 0 sec).
  quest::settimer(1, 60);
}

sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("The bloody Kromrif ambushed me! I escaped, but I am near death. They'll be tracking me down to finish me off at any moment. Without [help], I'm as good as dead.");
  }
  elsif ($text =~ /help/i && $flag == 0) {
    $flag = 1;
    #:: Create a timer '3' that triggers every 600 seconds (10 min 0 sec).
    quest::settimer(3, 600);
    quest::say("Thank Brell! I hear them approaching from just over that hill! Slay the leader, Ghrek, and give me his elixir.");
    #:: Spawn a Eastern Wastes >> Ghrek_Squatnot (116560), without grid or guild war, at the given location.
    my $mobid1 = quest::spawn2(116560, 0, 0, -2991, -4837, 229, 65);
    #:: Spawn a Eastern Wastes >> a_frost_giant (116030), without grid or guild war, at the given location.
    my $mobid2 = quest::spawn2(116030, 0, 0, -2991, -4815, 229, 65);
    my $mobid3 = quest::spawn2(116030, 0, 0, -2991, -4793, 229, 65);
    my $mobid4 = quest::spawn2(116030, 0, 0, -2991, -4859, 229, 65);
    my $mobid5 = quest::spawn2(116030, 0, 0, -2991, -4881, 229, 65);

    #:: Get mob Eastern Wastes >> Ghrek_Squatnot (116560).
    my $mob1 = $entity_list->GetMobID($mobid1);
    #:: Get mob Eastern Wastes >> a_frost_giant (116030).
    my $mob2 = $entity_list->GetMobID($mobid2);
    my $mob3 = $entity_list->GetMobID($mobid3);
    my $mob4 = $entity_list->GetMobID($mobid4);
    my $mob5 = $entity_list->GetMobID($mobid5);

    my $mobnpc1 = $mob1->CastToNPC();
    my $mobnpc2 = $mob2->CastToNPC();
    my $mobnpc3 = $mob3->CastToNPC();
    my $mobnpc4 = $mob4->CastToNPC();
    my $mobnpc5 = $mob5->CastToNPC();

    $mobnpc1->SaveGuardSpot(0);
    $mobnpc2->SaveGuardSpot(0);
    $mobnpc3->SaveGuardSpot(0);
    $mobnpc4->SaveGuardSpot(0);
    $mobnpc5->SaveGuardSpot(0);

    $mobnpc1->MoveTo(-2681, -4944, 150);
    $mobnpc2->MoveTo(-2703, -4920, 150);
    $mobnpc3->MoveTo(-2697, -4890, 150);
    $mobnpc4->MoveTo(-2707, -4950, 150);
    $mobnpc5->MoveTo(-2710, -4979, 150);

  }
}

sub EVENT_ITEM {
  #:: Match a 30139 - Note to Tain.
  if (plugin::takeItems( 30139 => 1)) {
    #:: Set appearance to Feign Death
    $npc->SetAppearance(3);
  }
  #:: Match a 30138 - Frozen Elixir.
  elsif (plugin::takeItems( 30138 => 1)) {
    #:: Stop the timer '1'.
    quest::stoptimer(1);
    #:: Set appearance to Stand
    $npc->SetAppearance(0);
    quest::say("I will report your selfless actions when I return to Thurgadin. Take this for your troubles, friend. I hope you find it useful. Fare thee well.");
    #:: Give a 30140 - Coldain Smithing Hammer.
    quest::summonitem(30140);
    #:: Create a timer '2' that triggers every 15 seconds (15 sec).
    quest::settimer(2, 15);
    #:: Set factions
	quest::faction(406, 30);   #:: + Coldain
	quest::faction(405, 30);   #:: + Dain Frostreaver IV
	quest::faction(419, -30);  #:: - Kromrif
	quest::faction(448, -30);  #:: - Kromzek
    #:: Grant a medium amount of experience.
    quest::exp(80000);
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

sub EVENT_TIMER {
  if ($timer == 1) {
    #:: Set appearance to Feign Death
    $npc->SetAppearance(3);
    quest::say("Ohhhh, someone... help, please...");
  }
  elsif ($timer == 2) {
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }
  elsif ($timer == 3) {
    $flag = 0;
  }
}

sub EVENT_ATTACK {
  #:: Set appearance to Stand
  $npc->SetAppearance(0);
}
