sub EVENT_SAY {
  #:: Match if faction is better than Indifferent
  if ($faction < 5) {
    if ($text =~ /hail/i) {
      quest::say("Greetings, $race. You know who I am, but I only vaguely know of you. My purpose is simple, I will rule these lands like my father, and my grandfather before him. All tasks but two are inconsequential to me.");
    }
    elsif ($text =~ /tasks/i) {
      quest::say("The tasks are simple, $race. I wish the death of the other 'powers' of this frozen waste land. If you are able to destroy either of my mortal foes, bring me proof of your exploits and you will be known as the hero of Kael Drakkel.");
    }
    elsif ($text =~ /powers/i) {
      quest::emote("laughs deeply. 'I speak of the foolish old dragon Yelinak and that pitiful Dain Frostreaver.'");
    }
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Ally
  if ($faction == 1) {
    #:: Match a 30501 - Dain Frostreaver's Head
    if (plugin::takeItems(30501 => 1)) {
      quest::emote("laughs deeply as he takes the bloody head then gives you your reward.");
      #:: Give a 25858 - Belt of Dwarf Slaying
      quest::summonitem(25858);
      #:: Set factions
      quest::faction(406, -100); #:: - Coldain
      quest::faction(405, -100); #:: - Dain Frostreaver IV
      quest::faction(448, 75);   #:: + Kromzek
      quest::faction(429, 75);   #:: + King Tormax
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 24984 - Yelinak's Head
    elsif (plugin::takeItems(24984 => 1)) {
      quest::emote("laughs deeply as he takes the bloody head then gives you your reward.");
      #:: Give a 25857 - Gauntlets of Dragon Slaying
      quest::summonitem(25857);
      #:: Set factions
      quest::faction(436, -100); #:: - Yelinak
      quest::faction(405, -100); #:: - Dain Frostreaver IV
      quest::faction(448, 75);   #:: + Kromzek
      quest::faction(429, 75);   #:: + King Tormax
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    else {
      quest::say("I do not need this little one");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such an item, yet.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

