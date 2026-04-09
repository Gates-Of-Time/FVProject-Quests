sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, $name. It cannot be that you would present yourself before me without reason. What brings you to these lands on this day? Please be quick for I have many ancient runes I must study.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1908 - Jualicn's Token
  if (plugin::takeItems(1908 => 1)) {
    quest::say("$name, whom Relinar found to be necessary for the success of the magic against those foul giants. I present this Rune of Concentration to you with faith that you are trusted amongst us or you would not have been sent to me. Make haste so that no time is wasted in extracting revenge for their past transgressions.");

    #:: Set factions
    quest::faction(430, 10);   #:: + Claws of Veeshan
    quest::faction(436, 10);  #:: + Yelinak
    quest::faction(448, -30); #:: - Kromzek

    #:: Grant a small amount of experience
    quest::exp(1000);

    #:: Give a 1896 - Rune of Concentration
    quest::summonitem(1896);

	#:: Check for 1893 - Rune of Eradication, 1894 - Rune of Revenge, or 1895 - Rune of Bleve
    if (!plugin::check_hasitem($client, 1893) || !plugin::check_hasitem($client, 1894) || !plugin::check_hasitem($client, 1895)) {
      #:: Give a 1908 - Jualicn's Token
      quest::summonitem(1908);
    }

    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }

  else {
    quest::say("I have no need for this item, $name, you can have it back.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}