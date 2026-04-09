sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Leave me alone, beast! Or I will cut your belly open and feed your entrails to the sharks.");
  }
}

sub EVENT_ITEM {
  #:: Match a 25107 - Mechanical Net
  if (plugin::takeItems(25107 => 1)) {
    quest::say("So you are the servant of Wenglawks here to retrieve his cloak. I will need more scales to make the cloak in his size. I have already slaughtered a good thirty sirens and the cloak is nearly complete. Go forth and slaughter my kind and bring me three excellent scales and this idol. Let this idol be your protection from the wrath of E'ci. I will continue my work on the cloak.");
    #:: Grant a small amount of experience
    quest::exp(1000);
    #:: Give a 25108 - Idol of Solusek Ro
    quest::summonitem(25108);
  }

  #:: Match three 25109 - Excellent Siren Scale and a 25108 - Idol of Solusek Ro
  elsif (plugin::takeItems(25109 => 3, 25108 => 1)) {
    quest::say("You are an excellent hunter. Tell me, did you enjoy the screams of the sirens as they perished? I find the sound so wonderful.");
    quest::emote("hands you a gigantic cloak made of slick siren scales.");
    quest::say("I was done making the cloak already. I just wanted to watch you slay the weak. I thank you for bringing more suffering into the world.");
    #:: Give a 25110 - Giant Siren Scale Cloak
    quest::summonitem(25110);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}