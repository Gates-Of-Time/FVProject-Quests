sub EVENT_SAY {
  if (defined($qglobals{muadalet}) && $qglobals{muadalet} == 4 && $text =~ /mastodon/i) {
    quest::say("Geez. No rest for me. He he. Must go. You go to. Dangerous for you here. You not so tough!");
    #:: Give a 57008 - Letter from Muada
    quest::summonitem(57008);
    quest::setglobal("muadalet", 5, 5, "F");
  }
}

sub EVENT_ITEM {
  #:: Match a 57008 - Letter from Muada
  if (defined($qglobals{muadalet}) && $qglobals{muadalet} == 4 && plugin::takeItems(57008 => 1)) {
    quest::say("Tanks. You can have back. Me spit 'n' smear dat so Muada know me see it. Me smudged it me thinks. Me trust no one! Me on big job now and no time. Me studying da [mastodon].  Dey hurt me lots, but me tuff with my warder. No match for me! Dey do survive da cold good and manage not to die wit all da wurms and da beasts here. Me try to learn to harness da power of dem.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}