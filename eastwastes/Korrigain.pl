sub EVENT_SAY {
  if ($text =~ /Hail/i) {
    quest::say("Who dares disturb my rest? If ye be a friend of the mighty Coldain, then show me proof and I shall tell you of my plight. If not, then be on your way.");
  }
}

sub EVENT_ITEM {
  #:: Match a 30268 - Obsidian Coldain Insignia Ring.
  if (plugin::takeItems( 30268 => 1)) {
    #:: Give a 30268 - Obsidian Coldain Insignia Ring.
    quest::summonitem("30268");

    #:: Match a Eastern Wastes >> Icefang (116110) on the entity list.
    my $mobid = $entity_list->GetMobByNpcTypeID(116110);
    if ($mobid) {
      my $mobnpc = $mobid->CastToNPC();
      #:: Send signal 1161101 to Eastern Wastes >> Icefang (116110) immediately.
      $mobnpc->SignalNPC(1161101);
    }
    else {
      #:: Spawn a Eastern Wastes >> Icefang (116110), without grid or guild war, at the given location.
      $mobid = quest::spawn2(116110, 0, 0, 3244, -8102, 147, 0);
      #:: Get mob Eastern Wastes >> Icefang (116110).
      my $mob = $entity_list->GetMobID($mobid);
      my $mobnpc = $mob->CastToNPC();
      #:: Send signal 1161101 to Eastern Wastes >> Icefang (116110) immediately.
      $mobnpc->SignalNPC(1161101);
    }

    quest::say("Many seasons ago I stood here in life with my comrades, the best warriors Thurgadin had to offer. Along with our faithful wolven army we were poised to eliminate the Kromrif presence in the region. Somehow, the enemy was made aware of our plans and just before our attack, a group of Ry'Gorr oracles charmed our wolves, forcing them to tear down their own masters. We were caught by surprise and died a savage death.");
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
  #:: Match if signal from eastwastes/Korrigain.pl is "116567".
  if ($signal == 116567) {
    quest::say("All that remains from that battle is my loyal Icefang. He will not rest until I am avenged. Follow and watch after him. He alone knows where our attackers lie and he cannot overcome them by himself. May Brell bless you with success, farewell.");
    #:: Send a signal "1161102" to Eastern Wastes >> Icefang (116110) with a 100 second delay.
    quest::signalwith(116110, 1161102, 100);
  }
}