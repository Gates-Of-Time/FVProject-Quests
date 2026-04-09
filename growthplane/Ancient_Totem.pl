sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, my friend. It is not often that we see strangers coming to this plane. I fear that our growing infestation problem has kept us busy as of late. The time for battle grows near yet we still do not have the offensive magics necessary to fend off our enemies.");
  }
  elsif ($text =~ /magic/i) {
    quest::say("There are legends describing scrolls of ultimate power and enlightenment from fallen channelers that preserver the knowledge necessary for us to overcome our plight. Since these are just legends I cannot assure you that these scrolls exist, but at this point they are our only hope.");
  }
  elsif ($text =~ /scrolls/i) {
    quest::say("The ancient scrolls needed to complete the Tome that will aid us are found in Dragon Necropolis if the legends are true. The tome itself was made up of the incantations and the teachings of the great Lel`Farthok who was a mighty channeler for his time.");
  }
}

sub EVENT_ITEM {
  #:: Match a 31440 - Scroll of Enlightenment, 31442 - Scroll of Insight, 31441 - Scroll of Knowledge, and 31439 - Scroll of Power
  if (plugin::takeItems(31440 => 1, 31442 => 1, 31441 => 1, 31439 => 1)) {
    quest::say("Thank you, friend.  These scrolls will serve us well in the future.  Please take this as a sign of my gratitude.");
    #:: Give a 1324 - Visage of Life
    quest::summonitem(1324);
    #:: Grant a small amount of experience
    quest::exp(1000);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}