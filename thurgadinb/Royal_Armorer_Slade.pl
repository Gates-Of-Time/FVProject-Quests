sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Welcome, $name. I'm Slade, Royal Armorer to the Dain and his personal guardsmen. I've heard yer name once or twice in these halls and apparently ye've earned the respect of my people. In light of that I'm willin ta offer my [services] to you if'n ye need them.");
    }

    elsif ($text =~ /services/i) {
      quest::say("If'n ye've had the fortune to earn any of the plate helms that are made by my people in the city then I can use my skills to custom fit and detail it for a $race of yer like. I can do this fer the Dark Runed Crown, the Runed Protector's Helm, the Resonant Helm, the Crown of Forbidden Rites, Crown of the Kromzek Kings, Frostreaver's Velium Crown, Cowl of Mortality, and the Champions Crown. Simply hand me one of these and I'll do the work for you.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with my skills.");
  }
}

sub EVENT_ITEM {
  my $customized = 0;

  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match a 31084 - Champions Crown
    if (plugin::takeItems(31084 => 1)) {
      #:: Give a 31519 - Custom Champions Crown
      quest::summonitem(31519);
      $customized = 1;
    }

    #:: Match a 26025 - Cowl of Mortality
    elsif (plugin::takeItems(26025 => 1)) {
      #:: Give a 2612 - Custom Cowl of Mortality
      quest::summonitem(2612);
      $customized = 1;
    }

    #:: Match a 31042 - Crown of Forbidden Rites
    elsif (plugin::takeItems(31042 => 1)) {
      #:: Give a 31518 - Custom Crown of Forbidden Rites
      quest::summonitem(31518);
      $customized = 1;
    }

    #:: Match a 25194 - Crown of the Kromzek Kings
    elsif (plugin::takeItems(25194 => 1)) {
      #:: Give a 2611 - Custom Crown of the Kromzek Kings
      quest::summonitem(2611);
      $customized = 1;
    }

    #:: Match a 31000 - Dark Runed Crown
    elsif (plugin::takeItems(31000 => 1)) {
      #:: Give a 31515 - Custom Dark Runed Crown
      quest::summonitem(31515);
      $customized = 1;
    }

    #:: Match a 30507 - Frostreaver's Velium Crown
    elsif (plugin::takeItems(30507 => 1)) {
      #:: Give a 2610 - Custom Frostreaver's Velium Crown
      quest::summonitem(2610);
      $customized = 1;
    }

    #:: Match a 31035 - Resonant Helm
    elsif (plugin::takeItems(31035 => 1)) {
      #:: Give a 31517 - Custom Resonant Helm
      quest::summonitem(31517);
      $customized = 1;
    }

    #:: Match a 31021 - Runed Protector's Helm
    elsif (plugin::takeItems(31021 => 1)) {
      #:: Give a 31516 - Custom Runed Protector's Helm
      quest::summonitem(31516);
      $customized = 1;
    }

    else {
      quest::say("I can do nothing with this item.");
    }
  }

  else {
    quest::say("I do not know you well enough to entrust you with such an item, yet.");
  }

  if ($customized) {
    quest::say("Here you are $name. Ah, a perfect fit! May it serve you well.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

