sub EVENT_ATTACK {
#:: Match a The Plane of Growth >> a_thifling_sprite (127000) on the entity list
  my $tsprite_mob = $entity_list->GetMobByNpcTypeID(127000);
  #:: Match a The Plane of Growth >> #_Tunare (127001) on the entity list
  my $minitunare_mob = $entity_list->GetMobByNpcTypeID(127001);
  #:: Match a The Plane of Growth >> a_protector_of_growth (127002) on the entity list
  my $pog_mob = $entity_list->GetMobByNpcTypeID(127002);
  #:: Match a The Plane of Growth >> a_protector_of_growth (127003) on the entity list
  my $pogb_mob = $entity_list->GetMobByNpcTypeID(127003);
  #:: Match a The Plane of Growth >> a_thifling_focuser (127005) on the entity list
  my $tfocuser_mob = $entity_list->GetMobByNpcTypeID(127005);
  #:: Match a The Plane of Growth >> Guardian_of_Tunare (127007) on the entity list
  my $guardian_mob = $entity_list->GetMobByNpcTypeID(127007);
  #:: Match a The Plane of Growth >> a_spirit_flux_wolf (127008) on the entity list
  my $sfwolf_mob = $entity_list->GetMobByNpcTypeID(127008);
  #:: Match a The Plane of Growth >> a_reverent_treant (127013) on the entity list
  my $rtreant_mob = $entity_list->GetMobByNpcTypeID(127013);
  #:: Match a The Plane of Growth >> a_mosscovered_treant (127014) on the entity list
  my $mctreant_mob = $entity_list->GetMobByNpcTypeID(127014);
  #:: Match a The Plane of Growth >> Undogo_Digolo (127015) on the entity list
  my $undogo_mob = $entity_list->GetMobByNpcTypeID(127015);
  #:: Match a The Plane of Growth >> keeper_of_the_glades (127016) on the entity list
  my $keeper_mob = $entity_list->GetMobByNpcTypeID(127016);
  #:: Match a The Plane of Growth >> Sarik_the_Fang (127017) on the entity list
  my $sarik_mob = $entity_list->GetMobByNpcTypeID(127017);
  #:: Match a The Plane of Growth >> Fayl_Everstrong (127018) on the entity list
  my $fayl_mob = $entity_list->GetMobByNpcTypeID(127018);
  #:: Match a The Plane of Growth >> Rumbleroot (127019) on the entity list
  my $rroot_mob = $entity_list->GetMobByNpcTypeID(127019);
  #:: Match a The Plane of Growth >> Ail_the_Elder (127020) on the entity list
  my $ali_mob = $entity_list->GetMobByNpcTypeID(127020);
  #:: Match a The Plane of Growth >> Treah_Greenroot (127021) on the entity list
  my $treah_mob = $entity_list->GetMobByNpcTypeID(127021);
  #:: Match a The Plane of Growth >> Grahl_Strongback (127022) on the entity list
  my $grahl_mob = $entity_list->GetMobByNpcTypeID(127022);
  #:: Match a The Plane of Growth >> Galiel_Spirithoof (127023) on the entity list
  my $galiel_mob = $entity_list->GetMobByNpcTypeID(127023);
  #:: Match a The Plane of Growth >> a_serene_forest_spirit (127024) on the entity list
  my $sfspirit_mob = $entity_list->GetMobByNpcTypeID(127024);
  #:: Match a The Plane of Growth >> a_phase_puma (127029) on the entity list
  my $ppuma_mob = $entity_list->GetMobByNpcTypeID(127029);
  #:: Match a The Plane of Growth >> a_tranquil_treant (127030) on the entity list
  my $ttreant_mob = $entity_list->GetMobByNpcTypeID(127030);
  #:: Match a The Plane of Growth >> an_agitated_forest_spirit (127031) on the entity list
  my $afspirit_mob = $entity_list->GetMobByNpcTypeID(127031);
  #:: Match a The Plane of Growth >> a_gleaming_sphere_of_light (127034) on the entity list
  my $gslight_mob = $entity_list->GetMobByNpcTypeID(127034);
  #:: Match a The Plane of Growth >> Guardian_of_Takish (127035) on the entity list
  my $gtakish_mob = $entity_list->GetMobByNpcTypeID(127035);
  #:: Match a The Plane of Growth >> a_guardian_power (127037) on the entity list
  my $gpower_mob = $entity_list->GetMobByNpcTypeID(127037);
  #:: Match a The Plane of Growth >> Ordro (127040) on the entity list
  my $ordro_mob = $entity_list->GetMobByNpcTypeID(127040);
  #:: Match a The Plane of Growth >> Tunarean_Earthmelder (127042) on the entity list
  my $melder_mob = $entity_list->GetMobByNpcTypeID(127042);
  #:: Match a The Plane of Growth >> Ancient_Totem (127047) on the entity list
  my $atotem_mob = $entity_list->GetMobByNpcTypeID(127047);
  #:: Match a The Plane of Growth >> a_sylvan_protector (127054) on the entity list
  my $sprot_mob = $entity_list->GetMobByNpcTypeID(127054);
  #:: Match a The Plane of Growth >> Farstride_Unicorn (127093) on the entity list
  my $fsuni_mob = $entity_list->GetMobByNpcTypeID(127093);
  #:: Match a The Plane of Growth >> Prince_Thirneg (127096) on the entity list
  my $prince_mob = $entity_list->GetMobByNpcTypeID(127096);

  #:: Spawn a The Plane of Growth >> #Tunare (127098), without grid or guild war, at the given location
  quest::spawn2(127098, 0, 0, -247, 1609, -40, 424);
  #:: Depop with spawn timer active
  quest::depop_withtimer();

  if ($tsprite_mob) {
    my $tsprite_mobnpc = $tsprite_mob->CastToNPC();
    $tsprite_mobnpc->AddToHateList($client, 1);
  }
  if ($minitunare_mob) {
    my $minitunare_mobnpc = $minitunare_mob->CastToNPC();
    $minitunare_mobnpc->AddToHateList($client, 1);
  }
  if ($pog_mob) {
    my $pog_mobnpc = $pog_mob->CastToNPC();
    $pog_mobnpc->AddToHateList($client, 1);
  }
  if ($pogb_mob) {
    my $pog_mobnpc = $pogb_mob->CastToNPC();
    $pog_mobnpc->AddToHateList($client, 1);
  }
  if ($tfocuser_mob) {
    my $tfocuser_mobnpc = $tfocuser_mob->CastToNPC();
    $tfocuser_mobnpc->AddToHateList($client, 1);
  }
  if ($guardian_mob) {
    my $guardian_mobnpc = $guardian_mob->CastToNPC();
    $guardian_mobnpc->AddToHateList($client, 1);
  }
  if ($sfwolf_mob) {
    my $sfwolf_mobnpc = $sfwolf_mob->CastToNPC();
    $sfwolf_mobnpc->AddToHateList($client, 1);
  }
  if ($rtreant_mob) {
    my $rtreant_mobnpc = $rtreant_mob->CastToNPC();
    $rtreant_mobnpc->AddToHateList($client, 1);
  }
  if ($mctreant_mob) {
    my $mctreant_mobnpc = $mctreant_mob->CastToNPC();
    $mctreant_mobnpc->AddToHateList($client, 1);
  }
  if ($undogo_mob) {
    my $undogo_mobnpc = $undogo_mob->CastToNPC();
    $undogo_mobnpc->AddToHateList($client, 1);
  }
  if ($keeper_mob) {
    my $keeper_mobnpc = $keeper_mob->CastToNPC();
    $keeper_mobnpc->AddToHateList($client, 1);
  }
  if ($sarik_mob) {
    my $sarik_mobnpc = $sarik_mob->CastToNPC();
    $sarik_mobnpc->AddToHateList($client, 1);
  }
  if ($fayl_mob) {
    my $fayl_mobnpc = $fayl_mob->CastToNPC();
    $fayl_mobnpc->AddToHateList($client, 1);
  }
  if ($rroot_mob) {
    my $rroot_mobnpc = $rroot_mob->CastToNPC();
    $rroot_mobnpc->AddToHateList($client, 1);
  }
  if ($ali_mob) {
    my $ali_mobnpc = $ali_mob->CastToNPC();
    $ali_mobnpc->AddToHateList($client, 1);
  }
  if ($treah_mob) {
    my $treah_mobnpc = $treah_mob->CastToNPC();
    $treah_mobnpc->AddToHateList($client, 1);
  }
  if ($grahl_mob) {
    my $grahl_mobnpc = $grahl_mob->CastToNPC();
    $grahl_mobnpc->AddToHateList($client, 1);
  }
  if ($galiel_mob) {
    my $galiel_mobnpc = $galiel_mob->CastToNPC();
    $galiel_mobnpc->AddToHateList($client, 1);
  }
  if ($sfspirit_mob) {
    my $sfspirit_mobnpc = $sfspirit_mob->CastToNPC();
    $sfspirit_mobnpc->AddToHateList($client, 1);
  }
  if ($ppuma_mob) {
    my $ppuma_mobnpc = $ppuma_mob->CastToNPC();
    $ppuma_mobnpc->AddToHateList($client, 1);
  }
  if ($ttreant_mob) {
    my $ttreant_mobnpc = $ttreant_mob->CastToNPC();
    $ttreant_mobnpc->AddToHateList($client, 1);
  }
  if ($afspirit_mob) {
    my $afspirit_mobnpc = $afspirit_mob->CastToNPC();
    $afspirit_mobnpc->AddToHateList($client, 1);
  }
  if ($gslight_mob) {
    my $gslight_mobnpc = $gslight_mob->CastToNPC();
    $gslight_mobnpc->AddToHateList($client, 1);
  }
  if ($gtakish_mob) {
    my $gtakish_mobnpc = $gtakish_mob->CastToNPC();
    $gtakish_mobnpc->AddToHateList($client, 1);
  }
  if ($gpower_mob) {
    my $gpower_mobnpc = $gpower_mob->CastToNPC();
    $gpower_mobnpc->AddToHateList($client, 1);
  }
  if ($ordro_mob) {
    my $ordro_mobnpc = $ordro_mob->CastToNPC();
    $ordro_mobnpc->AddToHateList($client, 1);
  }
  if ($melder_mob) {
    my $melder_mobnpc = $melder_mob->CastToNPC();
    $melder_mobnpc->AddToHateList($client, 1);
  }
  if ($atotem_mob) {
    my $atotem_mobnpc = $atotem_mob->CastToNPC();
    $atotem_mobnpc->AddToHateList($client, 1);
  }
  if ($sprot_mob) {
    my $sprot_mobnpc = $sprot_mob->CastToNPC();
    $sprot_mobnpc->AddToHateList($client, 1);
  }
  if ($fsuni_mob) {
    my $fsuni_mobnpc = $fsuni_mob->CastToNPC();
    $fsuni_mobnpc->AddToHateList($client, 1);
  }
  if ($prince_mob) {
    my $prince_mobnpc = $prince_mob->CastToNPC();
    $prince_mobnpc->AddToHateList($client, 1);
  }
}