sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hello $name. It is good to see that you have traveled so far to be in my presence. I do believe that you are the one chosen to aid us in our fight against the giants. If you are then I am sure that you will need my rune for your research.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1908 - Jualicn's Token
  if (plugin::takeItems(1908 => 1)) {
    quest::say("Take this Rune of Revenge, $name. You will need it to extract retribution in remembrance of our dear Hsagra. I thank you for your contributions to our cause. It is good to have you amongst our ranks.");

    #:: Give a 1894 - Rune of Revenge
    quest::summonitem(1894);

    #:: Set factions
    quest::faction(430, 10);  #:: + Claws of Veeshan
    quest::faction(436, 10);  #:: + Yelinak
    quest::faction(448, -30); #:: - Kromzek

    #:: Grant a small amount of experience
    quest::exp(1000);

	#:: Check for 1893 - Rune of Eradication, 1895 - Rune of Bleve, or 1896 - Rune of Concentration
    if (!plugin::check_hasitem($client, 1893) || !plugin::check_hasitem($client, 1895) || !plugin::check_hasitem($client, 1896)) {
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