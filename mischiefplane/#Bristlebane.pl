my $x;
my $y;
my $z;
my $h;
my $entid1;
my $entid2;
my $entid3;
my $entid4;
my $entid5;
my $mob1;
my $mob2;
my $mob3;
my $mob4;
my $mob5;
my $mobnpc1;
my $mobnpc2;
my $mobnpc3;
my $mobnpc4;
my $mobnpc5;

sub EVENT_SPAWN {
  #:: Set the next HP event to 80 percent
  quest::setnexthpevent(80);
}

sub EVENT_HP {
  $x = $npc->GetX();
  $y = $npc->GetY();
  $z = $npc->GetZ();
  $h = $npc->GetHeading();

  #:: Match if HP event is at 80 percent
  if ($hpevent == 80) {
    #:: Set the next HP event to 50 percent
    quest::setnexthpevent(50);
    #:: Spawn a The Plane of Mischief >> Rallos Puppet (126265), without grid or guild war, at the current location
    $entid1 = quest::spawn2(126265, 0, 0, $x + 10, $y + 10, $z, $h);
    #:: Spawn a The Plane of Mischief >> Tunare Puppet (126163), without grid or guild war, at the current location
    $entid2 = quest::spawn2(126163, 0, 0, $x - 10, $y - 10, $z, $h);
    #:: Spawn a The Plane of Mischief >> Innoruuk Puppet (126153), without grid or guild war, at the current location
    $entid3 = quest::spawn2(126153, 0, 0, $x + 5, $y + 5, $z, $h);
    $mob1 = $entity_list->GetMobID($entid1);
    $mob2 = $entity_list->GetMobID($entid2);
    $mob3 = $entity_list->GetMobID($entid3);
    $mobnpc1 = $mob1->CastToNPC();
    $mobnpc2 = $mob2->CastToNPC();
    $mobnpc3 = $mob3->CastToNPC();
    $mobnpc1->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc2->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc3->AddToHateList($npc->GetHateTop(), 1);
  }

  #:: Match if HP event is at 50 percent
  if ($hpevent == 50) {
    #:: Set the next HP event to 20 percent
    quest::setnexthpevent(20);
    #:: Spawn a The Plane of Mischief >> Solusek Puppet (126249), without grid or guild war, at the current location
    $entid1 = quest::spawn2(126249, 0, 0, $x + 10, $y + 10, $z, $h);
    #:: Spawn a The Plane of Mischief >> Tunare Puppet (126163), without grid or guild war, at the current location
    $entid2 = quest::spawn2(126163, 0, 0, $x - 10, $y - 10, $z, $h);
    #:: Spawn a The Plane of Mischief >> Innoruuk Puppet (126153), without grid or guild war, at the current location
    $entid3 = quest::spawn2(126153, 0, 0, $x + 5, $y + 5, $z, $h);
    #:: Spawn a The Plane of Mischief >> Erollisi Puppet (126291), without grid or guild war, at the current location
    $entid4 = quest::spawn2(126291, 0, 0, $x - 5, $y - 5, $z, $h);
    $mob1 = $entity_list->GetMobID($entid1);
    $mob2 = $entity_list->GetMobID($entid2);
    $mob3 = $entity_list->GetMobID($entid3);
    $mob4 = $entity_list->GetMobID($entid4);
    $mobnpc1 = $mob1->CastToNPC();
    $mobnpc2 = $mob2->CastToNPC();
    $mobnpc3 = $mob3->CastToNPC();
    $mobnpc4 = $mob4->CastToNPC();
    $mobnpc1->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc2->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc3->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc4->AddToHateList($npc->GetHateTop(), 1);
  }

  #:: Match if HP event is at 20 percent
  if ($hpevent == 20) {
    #:: Spawn a The Plane of Mischief >> Rallos Puppet (126265), without grid or guild war, at the current location
    $entid1 = quest::spawn2(126265, 0, 0, $x + 10, $y + 10, $z, $h);
    #:: Spawn a The Plane of Mischief >> Tunare Puppet (126163), without grid or guild war, at the current location
    $entid2 = quest::spawn2(126163, 0, 0, $x - 10, $y - 10, $z, $h);
    #:: Spawn a The Plane of Mischief >> Innoruuk Puppet (126153), without grid or guild war, at the current location
    $entid3 = quest::spawn2(126153, 0, 0, $x + 5, $y + 5, $z, $h);
    #:: Spawn a The Plane of Mischief >> Erollisi Puppet (126291), without grid or guild war, at the current location
    $entid4 = quest::spawn2(126291, 0, 0, $x - 5, $y - 5, $z, $h);
    #:: Spawn a The Plane of Mischief >> Tribunal Puppet (126246), without grid or guild war, at the current location
    $entid5 = quest::spawn2(126246, 0, 0, $x + 15, $y - 15, $z, $h);
    $mob1 = $entity_list->GetMobID($entid1);
    $mob2 = $entity_list->GetMobID($entid2);
    $mob3 = $entity_list->GetMobID($entid3);
    $mob4 = $entity_list->GetMobID($entid4);
    $mob5 = $entity_list->GetMobID($entid5);
    $mobnpc1 = $mob1->CastToNPC();
    $mobnpc2 = $mob2->CastToNPC();
    $mobnpc3 = $mob3->CastToNPC();
    $mobnpc4 = $mob4->CastToNPC();
    $mobnpc5 = $mob5->CastToNPC();
    $mobnpc1->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc2->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc3->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc4->AddToHateList($npc->GetHateTop(), 1);
    $mobnpc5->AddToHateList($npc->GetHateTop(), 1);
  }
}
