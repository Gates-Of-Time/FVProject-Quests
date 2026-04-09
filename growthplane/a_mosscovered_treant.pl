sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("I welcome thee, $name. Is there something I can assist you with? I am afraid my tireless searching for the incantations is going to be endless.");
  }
  elsif ($text =~ /searching/i) {
    quest::say("For quite some time now I have been seeking the teachings and scribings of Conjurers and Summoners of great power. As I continue my personal quest towards enlightenment there is absolute knowledge that evades me to this day.");
  }
  elsif ($text =~ /knowledge/i) {
    quest::say("There is believed to be a tome that contained only the most spectacular and powerful summoning. Many great magicians of time passed were believed to be contributors to this magical tome. During the meeting called by these select few something went terribly wrong.");
  }
  elsif ($text =~ /wrong/i) {
    quest::say("Of those in attendance, there was one servant of Innoruuk whose intentions were to steal the research and knowledge of his peers and use it to benefit himself and his Dark god. This selfishness led to numerous Intellectual conflicts and the Arch-Magi decided to go their separate ways, only to perish so close to the answer for which they sought.");
  }
  elsif ($text =~ /answer/i) {
    quest::say("As time progressed the Elementalists continued their studies and research only to soon discover that there was always something missing. As each of them decended upon the Skyshrine they continued to look, not knowing that what they were searching for was each other.");
  }
  elsif ($text =~ /i will look/i) {
    quest::say("That is a kind gesture indeed my friend, but be warned the journey that lies ahead of you will not be easy. But I have faith that this tome will one day be assembled as it was always meant to be and never was. I have faith that the pages do still exist, waiting to be unearthed.");
  }
  elsif ($text =~ /journey/i) {
    quest::say("Search the lands for the remains of these Arch-mages, $name. Only when I have these teachings and am able to once again construct this tome may I bring myself closer to my Enlightenment and Arcane Mastery.");
  }
}

sub EVENT_ITEM {
  #:: Match a 31435 - Tome of Elemental Understanding, 31436 - Tome of Elemental Cognizance, 31437 - Tome of Elemental Contemplation, and 31438 - Tome of Elemental Thought
  if (plugin::takeItems(31435 => 1, 31436 => 1, 31437 => 1, 31438 => 1)) {
    quest::emote("whispers, like wind through the tree tops, as it speaks hushed words to the tree.");
    #:: Give a 1224 - Chord of Vines
    quest::summonitem(1224);
    #:: Grant a small amount of experience
    quest::exp(1000);
  }

  else {
    quest::say("I have no need of this, friend.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}