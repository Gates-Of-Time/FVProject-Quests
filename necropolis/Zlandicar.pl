sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hrmm, who have we here?  A fleshling that managed to work past my guards...apparently, then, you have your wits about yourself.  In that case, perhaps you might be useful.  I need you to kill a ratman named Neb, because I cannot find him and he resides in an area too small for me to reach.  He and his clan of Paebala rats are of great annoyance to me, and need to be eradicated so that I may focus on greater tasks at hand.");
  }
  elsif ($text =~ /who is neb/i) {
    quest::say("Neb is an enemy of my clan of Chetari ratmen, and a thorn in my side.  Slaughter him and bring me his head, and I will give you the key to Jaled-Dar's Tomb.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Ally
  #:: Match a 26010 - Neb's head
  if ($faction == 1 && plugin::takeItems(26010 => 1)) {
    quest::say("Thank you for your assistance.  Now I may get back to higher matters at hand.  Leave me.");
    #:: Give a 28060 - Jaled Dar's Tomb Key
    quest::summonitem(28060);

    #:: Set factions
    quest::faction(462, 3);   #:: + Chetari
    quest::faction(464, 3);   #:: + Zlandicar
    quest::faction(430, -6);  #:: - Claws of Veeshan
    quest::faction(304, -6);  #:: - Ring of Scale

    #:: Grant a large amount of experience
    quest::exp(250000);
    #:: Ding!
    quest::ding();
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
