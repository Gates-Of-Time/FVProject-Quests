sub EVENT_SAY {
  #:: Match if faction is Amiable or better
  if ($faction <= 4) {
    if ($text =~ /hail/i) {
      quest::emote("sighs as he looks down at you. 'I grow tired of this city. I so long for the tundra and lands of the wild.'");
    }
    elsif ($text =~ /lands of the wild/i) {
      quest::say("I enjoy training these animals, don't get me wrong, but the open wastes, where the great animals and dragons roam free are what I crave. Before I came to serve King Tormax, I wandered those wastes, hunting young dragons and elder wurms. The whistle of an arrow from my bow was like sweet music - each slash of my sword a sweet song.");
    }
    elsif ($text =~ /young dragons/i) {
      quest::say("Yes, I hunted true dragons. The younger ones, at least. With my bow I could shoot them from such a distance they would never see what was coming.");
    }
    elsif ($text =~ /bow/i) {
      quest::emote("unslings an intricately carved bow from his back and shows it to you. 'I crafted this bow myself. It was to be a great slayer of wurms and dragons and it was, for a time. Now it goes to waste in the city, far from the beasts I long to slay. Far from the hunt and the excitement.'");
    }
    elsif ($text =~ /waste/i) {
      quest::say("It is such a shame, this bow deserves to be used. If only there were someone who would use it to hunt the beasts - someone to slay them and skin them like they should be.");
    }
    elsif ($text =~ /hunt the beasts/i) {
      quest::say("You will, little one? One such as yourself is a hunter? I did not know your kind had any skill in such things. In fact, I do not believe your kind could hunt a wurm, not without my wonderful bow. I will not simply hand it to a foolish $race. Hunt down some big game before you bother talking to me again. Perhaps if you bring me the tail of the elusive Vluudeen.");
    }
  }
  else {
    quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Amiable or better
  if ($faction <= 4) {
    #:: Match a 25137 - Vluudeen's Tail
    if (plugin::takeItems(25137 => 1)) {
      quest::say("My, you do have a hunters spirit! If you could track down Vluudeen and slay him without the aid of my bow, you must be worthy. Take the bow, huntsman. Use it to slay others of Vluudeen's kind.");
      #:: Give a 25033 - Bow of the Huntsman
      quest::summonitem(25033);
      #:: Grant a medium amount of experience
      quest::exp(35000);
      #:: Set factions
      quest::faction(419, 10);  #:: + Kromrif
      quest::faction(448, 10);  #:: + Kromzek
      quest::faction(430, -30); #:: - Claws of Veeshan
      quest::faction(406, -30); #:: - Coldain
    }
    else {
      quest::say("I have no use for this, $name.");
    }
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

