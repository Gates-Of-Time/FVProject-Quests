sub EVENT_SAY {
  #:: Match if faction is Ally
  if ($faction == 1) {
    if ($text =~ /hail/i) {
      quest::say("The Strong seek me out, for one reason or another. It seems you have come here in peace. Perhaps you wish to prove yourself a mighty $class? I respect only might, $race.");
    }
    elsif ($text =~ /wish to prove/i) {
      quest::say("For the mighty I have four tests. The test of the tooth, the
test of the flame, the test of the fire storm, and the test of protection. Which
test do you wish to undertake?");
    }
    elsif ($text =~ /test of the tooth/i) {
      quest::say("With tooth and nail you must fight, deep into the halls of testing. Recover the white tear of power, the white symbol for purity, the silver symbol to calm ones self, and a glowing orb. If you can return these to me I will know you are a mighty fighter indeed.");
    }
    elsif ($text =~ /test of the flame/i) {
      quest::say("Return the black tear, the black symbol, the poison symbol, and the serrated symbol to me and you will have completed the test of flame. Your reward will be quite suitable to one who enters the fray of battle.");
    }
    elsif ($text =~ /test of the fire storm/i) {
      quest::say("Become like a fire storm and bring your wrath upon the inhabitants of the halls of testing. Return when you have the tear of poison and the serrated tear along with the a symbol kissed by flames and a ruby symbol.");
    }
    elsif ($text =~ /test of protection/i) {
      quest::say("My fire will protect you if you are strong enough to endure this test. A ruby tear like my flames, an emerald tear like a forest ready to burn, an emerald symbol, and a platinum symbol are what I seek. With these I will forge pauldrons unlike any you have ever seen mortal. Go now and seek out what I desire.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Ally
  if ($faction == 1) {
    #:: Match a 31257 - Emerald Symbol, a 31268 - Emerald Tear, a 31270 - Ruby Tear, and a 31258 - Platinum Symbol
    if (plugin::takeItems(31257 => 1, 31268 => 1, 31270 => 1, 31258 => 1)) {
      #:: Give a 31472 - Pauldrons of the Deep Flame
      quest::summonitem(31472);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 31260 - Glowing Drake Orb, a 31253 - Silver Symbol, a 31261 - White Tear, and a 31250 - White Symbol
    elsif (plugin::takeItems(31260 => 1, 31253 => 1, 31261 => 1, 31250 => 1)) {
      #:: Give a 31469 - Serrated Dragon Tooth
      quest::summonitem(31469);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 31262 - Black Tear, a 31251 - Black Symbol, a 31255 - Poison Symbol, and a 31254 - Serrated Symbol
    elsif (plugin::takeItems(31262 => 1, 31251 => 1, 31255 => 1, 31254 => 1)) {
      #:: Give a 31470 - Earring of the Living Flame
      quest::summonitem(31470);
      quest::emote("looks pleased as she hands you the reward.");
      #:: Set factions
      quest::faction(430, 75);   #:: + Claws of Veeshan
      quest::faction(436, 75);   #:: + Yelinak
      quest::faction(448, -100); #:: - Kromzek
      #:: Grant a large amount of experience
      quest::exp(200000);
    }
    #:: Match a 31256 - Flame Kissed Symbol, a 31266 - Poison Tear, a 31265 - Serrated Tear, and a 31259 - Ruby Symbol
    elsif (plugin::takeItems(31256 => 1, 31266 => 1, 31265 => 1, 31259 => 1)) {
      #:: Give a 31471 - Cloak of the Fire Storm
      quest::summonitem(31471);
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
