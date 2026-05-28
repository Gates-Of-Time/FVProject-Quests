my $check = 0;

sub EVENT_SPAWN {
  $check = 0;
  #:: Create a timer 'vulak' that triggers every 60 seconds (1 min 0 sec)
  quest::settimer("vulak", 60);
  #:: Depop all The Temple of Veeshan >> NAMESCRIPT (124021)
  quest::depopall(124021);
  #:: Depop all The Temple of Veeshan >> NAMESCRIPT (124080)
  quest::depopall(124080);
  #:: Depop all The Temple of Veeshan >> NAMESCRIPT (124157)
  quest::depopall(124157);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124021), without grid or guild war, at the given location
  quest::spawn2(124021, 0, 0, -796, 564, 129, 102);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124021), without grid or guild war, at the given location
  quest::spawn2(124021, 0, 0, -800, 510, 129, 66);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124021), without grid or guild war, at the given location
  quest::spawn2(124021, 0, 0, -796, 463, 129, 33);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124080), without grid or guild war, at the given location
  quest::spawn2(124080, 0, 0, -680, 509, 129, 190);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124080), without grid or guild war, at the given location
  quest::spawn2(124080, 0, 0, -687, 562, 129, 160);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124080), without grid or guild war, at the given location
  quest::spawn2(124080, 0, 0, -680, 461, 129, 224);
}

sub EVENT_TIMER {
  my $variance = int(rand(720));
  my $spawntime = 4320 + $variance;
  $check = 0;

  if ($timer eq "vulak") {
    #:: Match a The Temple of Veeshan >> #Lady_Mirenilla (124077) on the entity list
    my $check_boss = $entity_list->GetMobByNpcTypeID(124077);
    if ($check_boss) {
      $check = 1;
    }

    #:: Match a The Temple of Veeshan >> NAMESCRIPT (124076) on the entity list
    $check_boss = $entity_list->GetMobByNpcTypeID(124076);
    if ($check_boss) {
      $check = 1;
    }

    #:: Match a The Temple of Veeshan >> #Lord_Feshlak (124008) on the entity list
    $check_boss = $entity_list->GetMobByNpcTypeID(124008);
    if ($check_boss) {
      $check = 1;
    }

    #:: Match a The Temple of Veeshan >> NAMESCRIPT (124103) on the entity list
    $check_boss = $entity_list->GetMobByNpcTypeID(124103);
    if ($check_boss) {
      $check = 1;
    }

    #:: Match a The Temple of Veeshan >> #Lord_Kreizenn (124074) on the entity list
    $check_boss = $entity_list->GetMobByNpcTypeID(124074);
    if ($check_boss) {
      $check = 1;
    }

    #:: Match a The Temple of Veeshan >> #Lord_Vyemm (124017) on the entity list
    $check_boss = $entity_list->GetMobByNpcTypeID(124017);
    if ($check_boss) {
      $check = 1;
    }

    if ($check == 1) {
    }

    #:: Match a The Temple of Veeshan >> #Vulak-Aerr (124155) on the entity list
    if ($check == 0 && $entity_list->GetMobByNpcTypeID(124155)) {
    }
    elsif ($check == 0 && !defined $qglobals{vulak}) {
      #:: Spawn a The Temple of Veeshan >> #Vulak-Aerr (124155), without grid or guild war, at the given location
      quest::spawn2(124155, 0, 0, -739.4, 517.2, 121, 255);
      #:: Depop with spawn timer active
      quest::depop_withtimer();
      quest::setglobal("vulak", 1, 2, "M$spawntime");
    }
  }
}
