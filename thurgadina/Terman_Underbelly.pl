sub EVENT_SAY { 
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::emote("speaks in a rumbling tone.");
      quest::say("Greetings. I only wish to speak to a shaman. Are you a shaman?"); 
    }
    elsif ($text =~ /i am a shaman/i) {
      quest::say("I sense the strength of your mystical powers within you and they vibrate with power.  You have learned much from your travels and I shall help you by providing you with protection from harm and the elements in the form of armor.");
    }
    elsif ($text =~ /armor/i) {
      quest::say("For you I shall make a coif, tunic, sleeves, bracers, gauntlets, leggings, and boots. Each piece is a quest unto itself. To find the components you must search the lands for them and test the power of the spirit within.");
    }
    elsif ($text =~ /coif/i) {
      quest::say("Those who are wise as we are know that protection of the head is most important. I may be able to forge you something most interesting if you were to bring me a corroded chain coif and three pieces of crushed onyx sapphire.");
    }
    elsif ($text =~ /tunic/i) {
      quest::say("If you find a corroded chain tunic and three pieces of black marble bring them to me and I shall attempt to create an enchanted tunic that will serve you well.");
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Three jaundice gems and a set of corroded chain sleeves might be an interesting combination. The powers of the gems may be harnessed to imbue the sleeves.");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("Bracers are quite easy to imbue. Simply find three crushed opals and a corroded chain bracer and I will complete the ritual to enchant them.");
    }
    elsif ($text =~ /gauntlets/i) {
      quest::say("Strong protection for one's hands is important. I may be able to craft you a set of powerful chain gauntlets if you find a set of corroded chain gauntlets and three crushed lava rubies.");
    }
    elsif ($text =~ /leggings/i) {
      quest::say("Leggings are a bit trickier to imbue. Three chipped onyx sapphires will allow me to channel the correct energies into a pair of corroded chain leggings. However, those chipped onyx sapphires are somewhat rare. Return to me if you find such things in your journeys.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("Simply bring me a set of three crushed flame emeralds and a pair of corroded chain boots and I will imbue them. I bid you good luck in finding such things."); 
    }
  } 
  else { 
    quest::say("I do not know you well enough to entrust you with such a quest, yet."); 
  } 
} 

sub EVENT_ITEM { 
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25805 - Black Marble and a 24935 - Corroded Chain Tunic.
    if (plugin::takeItems(25805 => 3, 24935 => 1)) {
      #:: Give a 31008 - Rune Crafter's Breastplate.
      quest::summonitem(31008);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25815 - Jaundice Gem and a 24937 - Corroded Chain Sleeves.
    elsif (plugin::takeItems(25815 => 3, 24937 => 1)) {
      #:: Give a 31009 - Rune Crafter's Vambraces.
      quest::summonitem(31009);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25827 - Chipped Onyx Sapphire and a 24936 - Corroded Chain Leggings.
    elsif (plugin::takeItems(25827 => 3, 24936 => 1)) {
      #:: Give a 31012 - Rune Crafter's Greaves.
      quest::summonitem(31012);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25840 - Crushed Lava Ruby and a 24941 - Corroded Chain Gauntlets.
    elsif (plugin::takeItems(25840 => 3, 24941 => 1)) {
      #:: Give a 31011 - Rune Crafter's Gauntlets.
      quest::summonitem(31011);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25841 - Crushed Onyx Sapphire and a 24940 - Corroded Chain Coif.
    elsif (plugin::takeItems(25841 => 3, 24940 => 1)) {
      #:: Give a 31007 - Rune Crafter's Helm.
      quest::summonitem(31007);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25836 - Crushed Opal and a 24939 - Corroded Chain Bracer.
    elsif (plugin::takeItems(25836 => 3, 24939 => 1)) {
      #:: Give a 31010 - Rune Crafter's Bracer.
      quest::summonitem(31010);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25838 - Crushed Flame Emerald and a 24938 - Corroded Chain Boots.
    elsif (plugin::takeItems(25838 => 3, 24938 => 1)) {
      #:: Give a 31013 - Rune Crafter's Boots.
      quest::summonitem(31013);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    else {
      quest::say("These are not the pieces I need.");
    }
  }
  else { 
    quest::say("I do not know you well enough to entrust you with such an item, yet."); 
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}
 
