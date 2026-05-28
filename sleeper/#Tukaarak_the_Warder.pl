sub EVENT_DEATH {
  #:: Match a Sleeper's Tomb >> #Nanzata_the_Warder (128090) on the entity list
  $nanzata = $entity_list->GetMobByNpcTypeID(128090);
  #:: Match a Sleeper's Tomb >> #Ventani_the_Warder (128091) on the entity list
  $ventani = $entity_list->GetMobByNpcTypeID(128091);
  #:: Match a Sleeper's Tomb >> #Hraashna_the_Warder (128093) on the entity list
  $hraashna = $entity_list->GetMobByNpcTypeID(128093);

  if (!$nanzata && !$ventani && !$hraashna) {
    #:: Send a signal "66" to Sleeper's Tomb >> #The_Sleeper (128094) with no delay
    quest::signalwith(128094, 66, 0);
    quest::shout("Warders, I have fallen. Prepare yourselves, these fools are determined to unleash doom!");
  }
  else {
    quest::shout("Warders, I have fallen. Prepare yourselves, these fools are determined to unleash doom!");
  }
}
