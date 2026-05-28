sub EVENT_DEATH {
  #:: Match a Sleeper's Tomb >> #Nanzata_the_Warder (128090) on the entity list
  $nanzata = $entity_list->GetMobByNpcTypeID(128090);
  #:: Match a Sleeper's Tomb >> #Ventani_the_Warder (128091) on the entity list
  $ventani = $entity_list->GetMobByNpcTypeID(128091);
  #:: Match a Sleeper's Tomb >> #Tukaarak_the_Warder (128092) on the entity list
  $tukaarak = $entity_list->GetMobByNpcTypeID(128092);

  if (!$nanzata && !$ventani && !$tukaarak) {
    #:: Send a signal "66" to Sleeper's Tomb >> #The_Sleeper (128094) with no delay
    quest::signalwith(128094, 66, 0);
    quest::shout("Warders, I have fallen. Prepare yourselves, these fools are determined to unleash doom!");
  }
  else {
    quest::shout("Warders, I have fallen. Prepare yourselves, these fools are determined to unleash doom!");
  }
}
