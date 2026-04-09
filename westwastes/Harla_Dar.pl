# Shroud of the Dar Brood

sub EVENT_SAY {
  #:: Match if faction is Amiable or better
  if ($faction <= 4) {
    if ($text =~ /hail/i) {
      quest::say("I do not have time for you now, $name. My son is lost, and you can not help me.");
    }
    elsif ($text =~ /son/i) {
      quest::say("Have you seen him? I must find him, he has been gone far to long! If you have harmed him, I will slay you and all of your race! Tell me where he is!");
    }
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Amiable or better
  if ($faction <= 4) {
    #:: Match a 27260 - Frakadar's Talisman
    if (plugin::takeItems(27260 => 1)) {
      quest::say("This...this is not what I had hoped for. My whelp is lost, but I take some comfort in knowing that you helped destroy his killer. Zlandicar has been a blight upon our race since the beginning. Here is your reward, as I promised. It will protect you in more ways than are obvious. Leave me now, it is time to mourn.");

      #:: Give a 27261 - Shroud of the Dar Brood
      quest::summonitem(27261);

      #:: Grant a large amount of experience
      quest::exp(150000);

      #:: Set factions
      quest::faction(430, 10);  #:: + Claws of Veeshan
      quest::faction(436, 10);  #:: + Yelinak
      quest::faction(448, -30); #:: - Kromzek
    }
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}