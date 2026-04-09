sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("It is not often that I see strangers in these dangerous lands. Perhaps you are the chosen that Jualicn speaks of that will aid us in our battle against the foul giants. I do not believe you would be here if you were not in need of my sacred rune.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1908 - Jualicn's Token
  if (plugin::takeItems(1908 => 1)) {
    quest::say("I have given you the Rune of Bleve, to assist you in your research for the once lost magic against the Kromzek. I hope that you can make good use of it, for it is very sacred to me. May Veeshan guide your path!");

    #:: Set factions
    quest::faction(430, 10);   #:: + Claws of Veeshan
    quest::faction(436, 10);  #:: + Yelinak
    quest::faction(448, -30); #:: - Kromzek

    #:: Grant a small amount of experience
    quest::exp(1000);

    #:: Give a 1895 - Rune of Bleve
    quest::summonitem(1895);

	#:: Check for 1893 - Rune of Eradication, 1894 - Rune of Revenge, or 1896 - Rune of Concentration
    if (!plugin::check_hasitem($client, 1893) || !plugin::check_hasitem($client, 1894) || !plugin::check_hasitem($client, 1896)) {
      #:: Give a 1908 - Jualicn's Token
      quest::summonitem(1908);
    }

    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }

  else {
    quest::say("I have no need for this item $name, you can have it back.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}