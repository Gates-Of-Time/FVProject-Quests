sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, $name. I have heard that one is amongst us in the lands which will aid us in our cause. If you are the one that seeks my ancient rune for your studies please make sure it is not used in vain. I do not talk to many that pass through here and I feel in my heart that it is you that shall help us.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1908 - Jualicn's Token
  if (plugin::takeItems(1908 => 1)) {
    quest::say("Ah of course, $name. You will need a Rune of Eradication for your lexicon. We are counting on your loyalty. Remember that you will need to bring the teachings of Relinar to Lawyla for further instructions, as she requires them to pass on the magic to those worthy of it. I bid you farewell, $name.");

    #:: Set factions
    quest::faction(430, 10);  #:: + Claws of Veeshan
    quest::faction(436, 10);  #:: + Yelinak
    quest::faction(448, -30); #:: - Kromzek

    #:: Grant a small amount of experience
    quest::exp(1000);

    #:: Give a 1893 - Rune of Eradication
    quest::summonitem(1893);

	#:: Check for 1894 - Rune of Revenge, 1895 - Rune of Bleve, or 1896 - Rune of Concentration
    if (!plugin::check_hasitem($client, 1894) || !plugin::check_hasitem($client, 1895) || !plugin::check_hasitem($client, 1896)) {
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