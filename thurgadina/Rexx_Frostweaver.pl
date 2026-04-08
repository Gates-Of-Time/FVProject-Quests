sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hmmm, ye be one o them offlanders, don't ye? I've heard some strange tales o yer kind so don't be tryin' any funny business with me. I know the value of a platinum piece and I'll not get cheated by yer foreign coin.");
  }
  elsif ($text =~ /prayer shawl/i) {
    quest::say("Gather five strands of crystalline silk thread and combine them in a sewing kit to make a crystalline silk fiber. Take this container and combine a glowing shardwurm bile with three of the fibers to form a piece of glowing crystalline silk. Five pieces of glowing crystalline silk sewn to your fur-lined shawl will yield a beautiful silk shawl. Become a master in the art of tailoring before risking all you've worked for and be sure to let me inspect your work when it's complete.");
    #:: Give a 17879 - Glowing Bile Soaker.
    quest::summonitem(17879);
  }
  elsif ($text =~ /am i worthy/i) {
    quest::say("To ensure your worthiness you must continue to refine your prayer shawl. Speak with my wife Betti regarding the embroidered shawl and listen carefully to her words. Hurry now, there seems to be a sense of urgency about.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1179 - Silk Coldain Prayer Shawl.
  if (plugin::takeItems(1179 => 1)) {
    quest::say("Splendid, $name, this is beautiful workmanship! As the Grand Historian may have mentioned, our esteemed Dain Frostreaver the fourth is making some important plans with his council. These plans will doubtlessly include you if the Dain deems you worthy.");
    #:: Give a 1179 - Silk Coldain Prayer Shawl.
    quest::summonitem(1179);
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

