sub EVENT_SAY {
  if ($text =~ /burin/i) {
    quest::say("You'll need a fletching kit and a fair bit of skill for this one, $name. Round up a tooth from a swordfish and attatch it to an Ulthork tusk wrapped in a Molkor hide.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1852 - Blank Rune
  if (plugin::takeItems(1852 => 1)) {
    quest::say("Fine piece of work there, $name, especially fer an outlander. Now yer gunna need to make a burin to etch the rune with. Once that's done ye need to kneel in front of the Grand Historian in the chapel and recite this prayer to him with total sincerity in yer heart. If yer plea be heard by our Father Brell he'll bless ya with the knowledge necessary to carry on. With that knowledge you'll take the blank rune, the burin and a fletching kit to etch the rune. Show Grimthor the etched rune and he'll guide you from there.");
    #:: Give a 1852 - Blank Rune
    quest::summonitem(1852);
    #:: Give a 18281 - Prayer to Brell
    quest::summonitem(18281);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

