sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("$name, your name has reached my ears more than a few times. Rumors fly that your kind will be the downfall of both the dragons and the Coldain.");
  }
  elsif ($text =~ /dragons/i) {
    quest::say("The dragons are not my primary concern, Kyenka has a greater hatred for them. I leave matters regarding to them in his capable hands. My worries are of the Coldain.");
  }
  elsif ($text =~ /coldain/i) {
    quest::say("I do not fully trust the Kromrif to keep Kael Drakkel protected from the menace of the tiny savages. The Kromrif do not actively seek to kill them. If the Coldain are left to breed they will one day swarm over Kael and no number of Kromzek warriors will be able to save us.");
  }
  elsif ($text =~ /kromrif/i) {
    quest::say("The Frost giants who call Kael their home have grown far too lax. So few of them train daily and actively seek out the Coldain to slay. I have advised King Tormax to send Kromzek raiding parties to raze Thurgadin, however, each time he reminds me that our strongest warriors must stay to guard against the dragon menace. What I need is a band of mercenaries to seek out and assassinate key Coldain leaders. We must destroy their ability to make war.");
  }
  elsif ($text =~ /assassinate/i) {
    quest::say("Perhaps assassinate is not the best word. I simply wish the death of some of the more compitent (sic) advisors of that foolish Dain. Within the halls of Icewell keep dwells a huntsman that has stood by the Dains side since he was a mere child. The court scribe is also more then he appears to be. Bring me their heads, I will reward you for each one. That is the only proof I will take of their deaths.");
  }
}

sub EVENT_ITEM {
  #:: Match a 25122 - Head of the Huntsman
  if (plugin::takeItems(25122 => 1)) {
    quest::say("The death of this one must be causing great strife amoung the Coldain. Your work is greatly appreciated. I wish I could reward you with more, but these boots are among the few things I have to give.");
    #:: Set factions
    quest::faction(419, 20);   #:: + Kromrif
    quest::faction(448, 20);   #:: + Kromzek
    quest::faction(429, 10);   #:: + King Tormax
    quest::faction(430, -30);  #:: - Claws of Veeshan
    #:: Grant a huge amount of experience
    quest::exp(1750000);
    #:: Give a 25027 - Coldain Skin Boots
    quest::summonitem(25027);
  }
  #:: Match a 25123 - Head of the Royal Scribe
  elsif (plugin::takeItems(25123 => 1)) {
    quest::say("The death of this one must be causing great strife amoung the Coldain. Your work is greatly appreciated. I wish I could reward you with more, but these gloves are among the few things I have to give.");
    #:: Set factions
    quest::faction(419, 20);   #:: + Kromrif
    quest::faction(448, 20);   #:: + Kromzek
    quest::faction(429, 10);   #:: + King Tormax
    quest::faction(430, -30);  #:: - Claws of Veeshan
    #:: Grant a huge amount of experience
    quest::exp(1750000);
    #:: Give a 25026 - Coldain Skin Gloves
    quest::summonitem(25026);
  }
  else {
    quest::say("I don't need this.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}