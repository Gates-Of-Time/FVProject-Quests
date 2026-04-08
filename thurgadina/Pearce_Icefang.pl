sub EVENT_SAY { 
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::emote("speaks in a rumbling tone."); 
      quest::say("Greetings. I only wish to speak to a beastlord. Are you a beastlord?"); 
    }
    elsif ($text =~ /i am a beastlord/i) {
      quest::say("I sense that you are in tune with yourself and with nature. You have learned much from your travels and I shall help you by providing you with protection from harm and the elements in the form of armor."); 
    }
    elsif ($text =~ /armor/i) {
      quest::say("For you I shall make a cap, tunic, sleeves, bracers, gloves, leggings, and boots. Each piece is a quest unto itself.  To seek the components you must search the lands for them and test the power of the spirit within."); 
    }
    elsif ($text =~ /cap/i) {
      quest::say("Those who are wise as we are know that protection of the head is most important. I may be able to sew you something most interesting if you were to bring me an eroded leather cap and three pieces of crushed coral."); 
    }
    elsif ($text =~ /tunic/i) {
      quest::say("If you find an eroded leather tunic and three flawless diamonds bring them to me and I shall attempt to create an enchanted tunic that will serve you well."); 
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Three flawed emeralds and a set of eroded leather sleeves might be an interesting combination. The powers of the gems may be harnessed to imbue the sleeves."); 
    }
    elsif ($text =~ /bracer/i) {
      quest::say("Bracers are quite easy to imbue. Simply find three crushed flame emeralds and a eroded leather bracelet and I will complete the ritual to enchant them."); 
    }
    elsif ($text =~ /gloves/i) {
      quest::say("Strong protection for one's hands is important. I may be able to craft you a set of enchanted leather gloves if you find a set of eroded leather gloves and a set of three crushed topaz."); 
    }
    elsif ($text =~ /leggings/i) {
      quest::say("Leggings are a bit trickier to imbue. Three flawed sea sapphires will allow me to channel the correct energies into a pair of eroded leather leggings. However, those flawed sea sapphires are somewhat rare. Return to me if you find such things in your journeys."); 
    }
    elsif ($text =~ /boots/i) {
      quest::say("Simply bring me a set of three crushed black marbles and a pair of eroded leather boots and I will imbue them. I bid you good luck in finding such things."); 
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM { 
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25814 - Flawless Diamond and a 24942 - Eroded Leather Tunic.
    if (plugin::takeItems(25814 => 3, 24942 => 1)) {
      #:: Give a 5454 - Chestguard of the Beastlord.
      quest::summonitem(5454);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25821 - Flawed Emerald and a 24944 - Eroded Leather Sleeves.
    elsif (plugin::takeItems(25821 => 3, 24944 => 1)) {
      #:: Give a 5455 - Armband of the Beastlord.
      quest::summonitem(5455);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25825 - Flawed Sea Sapphire and a 24943 - Eroded Leather Leggings.
    elsif (plugin::takeItems(25825 => 3, 24943 => 1)) {
      #:: Give a 5458 - Leggings of the Beastlord.
      quest::summonitem(5458);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25832 - Crushed Topaz and a 24948 - Eroded Leather Gloves.
    elsif (plugin::takeItems(25832 => 3, 24948 => 1)) {
      #:: Give a 5457 - Gloves of the Beastlord.
      quest::summonitem(5457);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25831 - Crushed Coral and a 24947 - Eroded Leather Cap.
    elsif (plugin::takeItems(25831 => 3, 24947 => 1)) {
      #:: Give a 5453 - Crown of the Beastlord.
      quest::summonitem(5453);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25838 - Crushed Flame Emerald and a 24946 - Eroded Leather Bracelet.
    elsif (plugin::takeItems(25838 => 3, 24946 => 1)) {
      #:: Give a 5456 - Bracer of the Beastlord.
      quest::summonitem(5456);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25833 - Crushed Black Marble and a 24945 - Eroded Leather Boots.
    elsif (plugin::takeItems(25833 => 3, 24945 => 1)) {
      #:: Give a 5459 - Boots of the Beastlord.
      quest::summonitem(5459);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
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
  
