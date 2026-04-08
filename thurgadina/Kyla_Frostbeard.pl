sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Greetings to you. I seek those who call themselves magicians. Are you a magician, little one?");
    }
    elsif ($text =~ /i am a magician/i) {
      quest::say("I thought so. I have several tasks for you accomplish. Once you have completed them I will have a cap, a robe, sleeves, wristbands, gloves, leggings and boots to reward you with.");
    }
    elsif ($text =~ /cap/i) {
      quest::say("For an enchanted head guard bring me a torn enchanted silk turban as well as three pieces of crushed flame opal.");
    }
    elsif ($text =~ /robe/i) {
      quest::say("If you wish to have a fine robe, bring unto me a torn enchanted silk robe and three pristine emeralds. Then you will receive a robe beyond your wildest dreams.");
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Bring unto me a set of torn enchanted silk sleeves as well as three flawed topaz. With these in my possession I can create a set of enchanted sleeves the likes of which spellcasters like you dream of.");
    }
    elsif ($text =~ /wristbands/i) {
      quest::say("An enchanted silk wristguard and three crushed onyx sapphires is all that I require to create an imbued wrist wrap of great power. Seek out these items and return to me when you have acquired them.");
    }
    elsif ($text =~ /leggings/i) {
      quest::say("Three nephrite and a pair of torn enchanted silk leggings will net you a fine set of pantaloons.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("Three crushed jaundice gems combined with torn enchanted silk boots would make a most interesting set of footwear. The latent powers of the gems can be harnessed to create magical effects.");
    }
    elsif ($text =~ /gloves/i) {
      quest::say("If you seek gloves of great power, bring to me three crushed topaz and a pair of torn enchanted silk gloves. I will use the power of the gems to imbue the gloves.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25837 - Crushed Flame Opal and a 24954 - Torn Enchanted Silk Turban.
    if (plugin::takeItems(25837 => 3, 24954 => 1)) {
      #:: Give a 31070 - Arch Mage's Crown.
      quest::summonitem(31070);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25807 - Pristine Emerald and a 24949 - Torn Enchanted Silk Robe.
    elsif (plugin::takeItems(25807 => 3, 24949 => 1)) {
      #:: Give a 31071 - Arch Mage's Robe.
      quest::summonitem(31071);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25818 - Flawed Topaz and a 24951 - Torn Enchanted Silk Sleeves.
    elsif (plugin::takeItems(25818 => 3, 24951 => 1)) {
      #:: Give a 31072 - Arch Mage's Sleeves.
      quest::summonitem(31072);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25841 - Crushed Onyx Sapphire and a 24953 - Torn Enchanted Silk Wristband.
    elsif (plugin::takeItems(25841 => 3, 24953 => 1)) {
      #:: Give a 31073 - Arch Mage's Warband.
      quest::summonitem(31073);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25832 - Crushed Topaz and a 24955 - Torn Enchanted Silk Gloves.
    elsif (plugin::takeItems(25832 => 3, 24955 => 1)) {
      #:: Give a 31074 - Arch Mage's Gloves.
      quest::summonitem(31074);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25816 - Nephrite and a 24950 - Torn Enchanted Silk Pantaloons.
    elsif (plugin::takeItems(25816 => 3, 24950 => 1)) {
      #:: Give a 31075 - Arch Mage's Pantaloons.
      quest::summonitem(31075);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25829 - Crushed Jaundice Gem and a 24952 - Torn Enchanted Silk Boots.
    elsif (plugin::takeItems(25829 => 3, 24952 => 1)) {
      #:: Give a 31076 - Arch Mage's Boots.
      quest::summonitem(31076);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
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

