sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Well, hello there, dear.  It sure gets cold here, doesn't it? Perhaps I can interest you in a sewing pattern to pass the time and keep you warm.");
  }
  elsif ($text =~ /embroidered prayer shawl/i) {
    quest::say("It will be an honor to assist you in fashioning an embroidered shawl. It is a very demanding product and I can see from the look in your eyes that you desire to burn your sewing kit in our furnace, but if you persevere, your efforts will be richly rewarded. When you are ready you must carefully weave a spool of sacred Coldain thread. Take the thread, this pattern, and the silk shawl and carefully embroider the pattern. The result will be most exquisite. Please show me if you manage to create one.");
    #:: Give a 1833 - Embroidered Shawl Pattern.
    quest::summonitem(1833);
  }
  elsif ($text =~ /embroidered shawl/i) {
    quest::say("It will be an honor to assist you in fashioning an embroidered shawl. It is a very demanding product and I can see from the look in your eyes that you desire to burn your sewing kit in our furnace, but if you persevere, your efforts will be richly rewarded. When you are ready you must carefully weave a spool of sacred Coldain thread. Take the thread, this pattern, and the silk shawl and carefully embroider the pattern. The result will be most exquisite. Please show me if you manage to create one.");
    #:: Give a 1833 - Embroidered Shawl Pattern.
    quest::summonitem(1833);
  }
  elsif ($text =~ /sacred coldain thread/i) {
    quest::say("Take a woven frost giant beard, two siren's hairs, two manticore manes and two drakkel dire wolf whiskers, and combine them in a sewing kit. The resulting thread will enhance your shawl's power when embroidered in a special pattern.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1198 - Embroidered Coldain Prayer Shawl.
  if (plugin::takeItems(1198 => 1)) {
    quest::say("Spectacular artistry! I doubt I could have done better myself. You'll have to forgive me, I know time is short and I tend to carry on. This is the pattern for the making of a rune sacred to our people. It will be our final test of your craftsmanship and will put many of your skills to the test, but I trust you'll find the finished product to be more than worth the effort. Show Gilthan the embroidered shawl, he will set you on the path. May Brell always be with you outlander.");
    #:: Give a 1198 - Embroidered Coldain Prayer Shawl.
    quest::summonitem(1198);
    #:: Give a 1849 - Runed Prayer Shawl pattern.
    quest::summonitem(1849);
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

