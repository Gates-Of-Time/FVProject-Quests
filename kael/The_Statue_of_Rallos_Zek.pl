sub EVENT_DEATH {
  quest::shout("Protect the Idol of Zek!");
  #:: Spawn a Kael Drakkel >> #The_Idol_of_Rallos_Zek (113341), without grid or guild war, at the given location
  quest::spawn2(113341, 0, 0, 1289, 1300, -90, 254.5);
}

