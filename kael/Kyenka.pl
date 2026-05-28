sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("My, it is the great $name who stands before me! Rumors of your greatness have spread even to the court of King Tormax. I am Kyenka, Duke of Kael Drakkel. I advise King Tormax on matters concerning the nefarious dragons.");
    }
    elsif ($text =~ /dragons/i) {
      quest::say("The living dragons of this realm are the bane of Kael Drakkel and its people. Eventually they will be gone and only we Kromzek will remain. We will purge this land of their menace.");
    }
    elsif ($text =~ /purge/i) {
      quest::say("The beasts must be slain. They only bring strife to this world. You are a powerful mercenary, and are sympathetic to my cause, I would assume. You could become rich beyond your wildest dreams by assisting King Tormax and me.");
    }
    elsif ($text =~ /assist/i) {
      quest::say("Rally together a band of adventurers and track down and slay the elder dragons of this continent. For each head you return to me I will impart a gift to you.");
    }
  }
  else {
    quest::say("Your loyalty to our ideals has yet to be proven.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match a 25119 - Great Dragon's Head
    if (plugin::takeItems(25119 => 1)) {
      quest::say("This beast must have taken quite a force to slay. These boots have been crafted to reward your kind for such great efforts. Take them and wear them with pride. They will be a warning to other dragons that you are a great slayer of their kind.");
      #:: Give a 25029 - Barbed Dragonscale Boots
      quest::summonitem(25029);
      #:: Set factions
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(419, 20);  #:: + Kromrif
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(430, -60); #:: - Claws of Veeshan
      #:: Grant a tiny amount of experience
      quest::exp(100);
    }

    #:: Match a 25118 - Greater Dragon's Head
    elsif (plugin::takeItems(25118 => 1)) {
      quest::say("You serve the crown well, $name. This is one less beast to ruin our lands. Take these pauldrons which I have fashioned from the first dragon scales brought to King Tormax's court.");
      #:: Give a 25028 - Barbed Dragonscale Pauldrons
      quest::summonitem(25028);
      #:: Set factions
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(419, 20);  #:: + Kromrif
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(430, -60); #:: - Claws of Veeshan
      #:: Grant a tiny amount of experience
      quest::exp(100);
    }

    else {
      quest::say("I have no use for this, $name.");
    }
  }
  else {
    quest::say("I will do nothing to aid the likes of you.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}