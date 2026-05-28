sub EVENT_SAY {
  #:: Match if faction is Ally
  if ($faction == 1) {
    if ($text =~ /hail/i) {
      quest::say("Greetings, $name. If you seek wisdom or the arcane I have tasks in the halls of testing you may complete to gain what you seek.");
    }
    elsif ($text =~ /the arcane/i) {
      quest::say("To garner a reward fit for one who walks the arcane path return to me the poison tear and the poison symbol. Along with these return the serrated symbol and the runed symbol. If this task is not hard enough for you, I have a second quest for you.");
    }
    elsif ($text =~ /the second quest/i) {
      quest::say("Tears may fall to the ground but not the ones you seek now. The black tear and the ruby tear you must seek. For more power I require the ruby symbol and a white symbol to bind the powers together. Upon the return of these four objects you will receive a wondrous reward.");
    }
    elsif ($text =~ /wisdom/i) {
      quest::say("Wisdom can be gleaned from battle and that is what I wish you to do. Battle in the halls of testing may give you a different outlook on life. Which do you seek, the short battle or the long $name?");
    }
    elsif ($text =~ /long battle/i) {
      quest::say("You will spend much time in the halls of testing. Seek out a runed tear and a flame kissed tear, bring them back to me with a symbol black as midnight and a glowing orb of the ancient drakes.");
    }
    elsif ($text =~ /short battle/i) {
      quest::say("For the shortest time in the halls, seek out a Platinum tear held by the cursed one, a platinum symbol, a silver symbol and an emerald symbol as green as the forests. If you are able to return these to me I will reward you with a simple idol of the white dragons.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Ally
  if ($faction == 1) {
    #:: Match a 31266 - Poison Tear, a 31255 - Poison Symbol, a 31252 - Runed Symbol, and a 31254 - Serrated Symbol
    if (plugin::takeItems(31266 => 1, 31255 => 1, 31252 => 1, 31254 => 1)) {
      #:: Give a 31466 - White Dragon Statue
      quest::summonitem(31466);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 31262 - Black Tear, a 31270 - Ruby Tear, a 31259 - Ruby Symbol, and a 31250 - White Symbol
    elsif (plugin::takeItems(31262 => 1, 31270 => 1, 31259 => 1, 31250 => 1)) {
      #:: Give a 31468 - Boots of Deep Thought
      quest::summonitem(31468);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 31267 - Flame Kissed Tear, a 31263 - Runed Tear, a 31251 - Black Symbol, and a 31260 - Glowing Drake Orb
    elsif (plugin::takeItems(31267 => 1, 31263 => 1, 31251 => 1, 31260 => 1)) {
      #:: Give a 31467 - Boots of Silent Striding
      quest::summonitem(31467);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 31253 - Silver Symbol, a 31258 - Platinum Symbol, a 31257 - Emerald Symbol, and a 31269 - Platinum Tear
    elsif (plugin::takeItems(31253 => 1, 31258 => 1, 31257 => 1, 31269 => 1)) {
      #:: Give a 31465 - White Dragon Idol
      quest::summonitem(31465);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    else {
      quest::say("I do not need this, little one");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such an item, yet.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
