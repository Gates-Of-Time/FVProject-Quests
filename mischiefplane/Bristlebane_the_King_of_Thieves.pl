sub EVENT_SPAWN {
  #:: Set the next HP event to 90 percent
  quest::setnexthpevent(90);
  #:: Create a timer 'timeup' that triggers every 7200 seconds (2 hr 0 min 0 sec)
  quest::settimer("timeup", 7200);
}

sub EVENT_COMBAT {
  if ($combat_state == 0) {
    #:: Restore full health when combat ends
    $npc->SetHP(685000);
  }
}

#:: Guardian adds only aggro within their normal aggro range
sub EVENT_HP {
  #:: Match if HP event is at 90 percent
  if ($hpevent == 90) {
    #:: Set the next HP event to 80 percent
    quest::setnexthpevent(80);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and suddenly his skin begins to take on a rock like appearance.");
    #:: Set armor class
    quest::modifynpcstat("ac", "1587");
  }

  #:: Match if HP event is at 80 percent
  if ($hpevent == 80) {
    #:: Set the next HP event to 70 percent
    quest::setnexthpevent(70);
    #:: Spawn a The Plane of Mischief >> a devious guardian jokester (126375), without grid or guild war, at the given location
    quest::spawn2(126375, 0, 0, -88, 886, 178, 192);
    #:: Spawn a The Plane of Mischief >> a tricky guardian jester (126376), without grid or guild war, at the given location
    quest::spawn2(126376, 0, 0, -157, 886, 178, 64);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and is suddenly surrrounded by a magical glowing aura.");
    #:: Set armor class
    quest::modifynpcstat("ac", "1087");
    #:: Set magic resistance
    quest::modifynpcstat("mr", "250");
  }

  #:: Match if HP event is at 70 percent
  if ($hpevent == 70) {
    #:: Set the next HP event to 60 percent
    quest::setnexthpevent(60);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and suddenly his muscles bulge with incomprehensible strength.");
    #:: Set magic resistance
    quest::modifynpcstat("mr", "144");
    #:: Set maximum hit
    quest::modifynpcstat("max_hit", "2250");
  }

  #:: Match if HP event is at 60 percent
  if ($hpevent == 60) {
    #:: Set the next HP event to 50 percent
    quest::setnexthpevent(50);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and is suddenly surrrounded by a magical glowing aura.");
    #:: Set maximum hit
    quest::modifynpcstat("max_hit", "1900");
    #:: Set magic resistance
    quest::modifynpcstat("mr", "250");
  }

  #:: Match if HP event is at 50 percent
  if ($hpevent == 50) {
    #:: Set the next HP event to 40 percent
    quest::setnexthpevent(40);
    #:: Spawn a The Plane of Mischief >> a devious guardian jokester (126375), without grid or guild war, at the given location
    quest::spawn2(126375, 0, 0, -88, 886, 178, 192);
    #:: Spawn a The Plane of Mischief >> a charming guardian jester (126378), without grid or guild war, at the given location
    quest::spawn2(126378, 0, 0, -157, 886, 178, 64);
    #:: Spawn a The Plane of Mischief >> a dazed guardian jester (126377), without grid or guild war, at the given location
    quest::spawn2(126377, 0, 0, -127, 840, 178, 0);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a mystical word of power and suddenly his muscles bulge with incomprehensible strength.");
    #:: Set magic resistance
    quest::modifynpcstat("mr", "144");
    #:: Set maximum hit
    quest::modifynpcstat("max_hit", "2250");
  }

  #:: Match if HP event is at 40 percent
  if ($hpevent == 40) {
    #:: Set the next HP event to 30 percent
    quest::setnexthpevent(30);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and is suddenly surrounded by a magical glowing aura and his skin takes on a rock like appearance.");
    #:: Set maximum hit
    quest::modifynpcstat("max_hit", "1900");
    #:: Set armor class
    quest::modifynpcstat("ac", "1587");
    #:: Set magic resistance
    quest::modifynpcstat("mr", "250");
  }

  #:: Match if HP event is at 30 percent
  if ($hpevent == 30) {
    #:: Set the next HP event to 20 percent
    quest::setnexthpevent(20);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and is suddenly surrounded by a magical glowing aura and his attacks become a blur as he launches into a quickened attack routine.");
    #:: Set armor class
    quest::modifynpcstat("ac", "1087");
    #:: Set attack speed
    quest::modifynpcstat("attack_speed", "-40");
  }

  #:: Match if HP event is at 20 percent
  if ($hpevent == 20) {
    #:: Set the next HP event to 10 percent
    quest::setnexthpevent(10);
    #:: Spawn a The Plane of Mischief >> a dazed guardian jester (126377), without grid or guild war, at the given location
    quest::spawn2(126377, 0, 0, -88, 886, 178, 192);
    #:: Spawn a The Plane of Mischief >> a charming guardian jester (126378), without grid or guild war, at the given location
    quest::spawn2(126378, 0, 0, -157, 886, 178, 64);
    #:: Spawn a The Plane of Mischief >> a dazed guardian jester (126377), without grid or guild war, at the given location
    quest::spawn2(126377, 0, 0, -146, 840, 178, 0);
    #:: Spawn a The Plane of Mischief >> a dazed guardian jester (126377), without grid or guild war, at the given location
    quest::spawn2(126377, 0, 0, -110, 840, 178, 0);
    #:: Spawn a The Plane of Mischief >> a devious guardian jokester (126375), without grid or guild war, at the given location
    quest::spawn2(126375, 0, 0, -127, 840, 178, 0);
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and is suddenly surrounded by a magical glowing aura and his muscles bulge with incomprehensible strength. ");
    #:: Set attack speed
    quest::modifynpcstat("attack_speed", "-31");
    #:: Set maximum hit
    quest::modifynpcstat("max_hit", "2250");
  }

  #:: Match if HP event is at 10 percent
  if ($hpevent == 10) {
    quest::emote("shakes with laughter and says, 'You are much stronger than I thought. Looks like I'm gonna have to use all the tricks of the trade!' He then shouts a string of mystical words and suddenly his skin takes on a rock like apppearance and his muscles bulge with incomprehensible strength.");
    #:: Set armor class
    quest::modifynpcstat("ac", "1587");
    #:: Set magic resistance
    quest::modifynpcstat("mr", "144");
  }
}

sub EVENT_TIMER {
  if ($timer eq "timeup") {
    #:: Depop without spawn timer
    quest::depop();
  }
}

sub EVENT_DEATH {
  #:: Stop the timer 'timeup'
  quest::stoptimer("timeup");
  #:: Signal the guardian jesters to depop
  quest::signal(126375, 10);
  quest::signal(126376, 10);
  quest::signal(126377, 10);
  quest::signal(126378, 10);
}
