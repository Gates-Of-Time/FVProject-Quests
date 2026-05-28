sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Welcome to the castle of King Tormax. It is quite an accomplishment for one of your kind to have lived this long in the service of our great King Tormax. You must be powerful indeed. My power is like a storm - I may rage and destroy my foes with great fury.");
    }
    elsif ($text =~ /foes/i) {
      quest::say("The dragons are the greatest threat to Kael Drakkel. For some reason they believe that this land we inhabit is holy and should not be tread upon. I cannot count the number of wurms I have beaten back from the gates of Kael Drakkel in the past. We giants will live on, though, for each year their numbers thin and ours only grow. With the help of mercenaries such as yourself we may be able to eradicate them from the face of Velious.");
    }
    elsif ($text =~ /eradicate/i) {
      quest::say("I dream of the day when the only dragons in Velious are the ones whose skins line my boots. Some day my dream will come true. Until the day I can gather a force powerful enough to assault their homes, I will slay whatever foul beasts tread near Kael Drakkel.");
    }
    elsif ($text =~ /assault/i) {
      quest::say("That is an aspiration of King Tormax. One day, it may be possible for us to do so. Encountering so many dragons at once may very well be suicide though. Enough of my banter about dragons. What is it that brings you to Dragon Death Keep? Do you seek more challenging tasks?");
    }
    elsif ($text =~ /challenging tasks/i) {
      quest::say("If you are as mighty as I believe you to be, travel out from this city and fight off the draconian menace. For the head of an elder dragon you will be handsomely rewarded.");
    }
    elsif ($text =~ /reward/i) {
      quest::emote("pats the huge axe at his side and drapes his shimmering cloak over his shoulders.");
    }
    elsif ($text =~ /axe/i) {
      quest::say("My axe is named Frostbringer. It was given to me by the great King Tormax for my service to him. Serving the king can be quite advantageous.");
    }
    elsif ($text =~ /cloak/i) {
      quest::say("The cloak of the Maelstrom allows me to rage like a great storm. It is but a simple possession - the head of an elder dragon would be worth far more to my kind.");
    }
  }
  else {
    quest::say("Your loyalty to our ideals has yet to be proven.");
  }
}

sub EVENT_ITEM {
  my $matched_turn_in = 0;

  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match a 25119 - Great Dragon's Head
    if (plugin::takeItems(25119 => 1)) {
      quest::say("The bards will sing of your greatness, $name. Rage on like the Maelstrom when you wear this cloak. You have done a great service for the city of Kael Drakkel, and we Kromzek do not soon forget great deeds.");
      #:: Give a 25023 - Cloak of the Maelstrom
      quest::summonitem(25023);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(436, -60); #:: - Yelinak
      quest::faction(405, -60); #:: - Dain Frostreaver IV

      #:: Grant a tiny amount of experience
      quest::exp(100);
    }

    #:: Match a 25118 - Greater Dragon's Head
    elsif (plugin::takeItems(25118 => 1)) {
      quest::say("We shall hang this head from the halls of Dragondeath Keep and sing your praises, $name. Take my axe as a reward for your great deeds. You are a true hero for Kael Drakkel!");
      #:: Give a 25022 - Frostbringer
      quest::summonitem(25022);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(436, -60); #:: - Yelinak
      quest::faction(405, -60); #:: - Dain Frostreaver IV

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