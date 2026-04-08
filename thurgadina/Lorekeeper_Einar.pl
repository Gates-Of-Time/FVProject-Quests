sub EVENT_SAY { 
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Greetings to you. I seek one that has chosen the path of monkhood. What do you call yourself?"); 
    }
    elsif ($text =~ /i am a monk/i) {
      quest::say("Good. I had hoped you were one. I have heard that as seeker of the way you are in constant training to push yourself to your physical and mental limits. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings and boots."); 
    }
    elsif ($text =~ /cap/i) {
      quest::say("To create a piece of armor to protect your sensitive skull I will require three pieces of crushed coral as well as a eroded leather cap.");
    }
    elsif ($text =~ /tunic/i) {
      quest::say("To create a spectacular tunic fit for your kind I will require three flawless diamonds and an eroded leather tunic. With the gems and my skills I may be able to draw out some of its magical powers."); 
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Protection for your arms will come at the price of three flawed emeralds and a set of eroded leather sleeves.");
    }
    elsif ($text =~ /leggings/i) {
      quest::say("I may be able to craft a set of wondrous leggings from a set of old eroded leather leggings and three flawed sea sapphires. It is amazing what you can do with a bit of magic."); 
    }
    elsif ($text =~ /gloves/i) {
      quest::say("Protecting your hands is very important. I can create some excellent protection for your hands if you bring me three crushed topaz and a pair of eroded leather gloves."); 
    }
    elsif ($text =~ /bracers/i) {
      quest::say("For the bracers, I will require a eroded leather bracelet as well as three crushed flame emeralds. Return to me when you find such things."); 
    }
    elsif ($text =~ /boots/i) {
      quest::say("We use our feet so often, should not they be protected as well as any other portion of our bodies? If you seek fine protection for your feet return to me with three pieces of crushed black marble and a pair of eroded leather boots."); 
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
      #:: Give a 31092 - Grand Master's Chest Wraps.
      quest::summonitem(31092);
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
      #:: Give a 31093 - Grand Master's Arm Wraps.
      quest::summonitem(31093);
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
      #:: Give a 31096 - Grand Master's Leg Wraps.
      quest::summonitem(31096);
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
      #:: Give a 31095 - Fist of the Grand Master.
      quest::summonitem(31095);
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
      #:: Give a 31091 - Grand Master's Headband.
      quest::summonitem(31091);
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
      #:: Give a 31094 - Grand Master's Wrist Wraps.
      quest::summonitem(31094);
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
      #:: Give a 31097 - Grand Master's Slippers.
      quest::summonitem(31097);
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

