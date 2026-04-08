# frost bunny stew portion of 3rd coldain prayer shawl
#

sub EVENT_ITEM {
  #:: Match a 1416 - Trita's Napkin and a 1426 - Frost Bunny Stew
  if (plugin::takeItems(1416 => 1, 1426 => 1)) {
    quest::say("Why thank you, $name, I haven't tasted snow bunny stew this good in quite some time. Be a dear and take this back to Mordin for me.");
    #:: Give a 1423 - Dirty Pot
    quest::summonitem(1423);
    #:: Grant a large amount of experience
    quest::exp(100000);
    #:: Set factions
    quest::faction(406,10);  #:: + Coldain
    quest::faction(405,10);  #:: + Dain Frostreaver IV
    quest::faction(419,-30); #:: - Kromrif
    quest::faction(448,-30); #:: - Kromzek
  }

  #:: Match a 1426 - Frost Bunny Stew
  elsif (plugin::takeItems(1426 => 1)) {
    quest::say("Thanks for the Snow Bunny Stew, $name.");
    #:: Grant a small amount of experience
    quest::exp(5000);
    #:: Set factions
    quest::faction(406,10);  #:: + Coldain
    quest::faction(405,10);  #:: + Dain Frostreaver IV
    quest::faction(419,-30); #:: - Kromrif
    quest::faction(448,-30); #:: - Kromzek
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

