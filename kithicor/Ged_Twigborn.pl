sub EVENT_SAY {
  if ($text=~/hail/i) {#need correct text
    quest::say("Hello, ______. What brings you to this neck of the woods? You must have heard of my expert tanning skills. I craft some of the finest [skin garments] this side of Highpass Hold."");
  }
  if ($text=~/skin garments/i) {
    quest::say("Gloves are my specialty. I make four varieties: ratskin, wolfskin, bearskin, and my most sought after type, lionskin");
  }
  if ($text=~/lion/i) {
    quest::say("Interested in the best are you? Well it will cost you. In addition to a High Quality Lionskin, I require payment of 96 Gold Pieces for me to craft you my exquisite Lionskin Gloves. Search the Northern Plains of Karana for Highland Lions as their skins are the most supple");
  }
  if ($text=~/bear/i) {
    quest::say("Ah ... my bearskin gloves are the finest you will find anywhere. They will cost you 25 gold pieces and you also need to give me a high quality bear skin before I can get to work.");
  }
  if ($text=~/rat/i) {
    quest::say("Interested in some ratskin gloves, are you? Well, before I can start, I need you to provide me a giant rat pelt and 6 gold pieces. I need to make a living at this, after all");
  }
  if ($text=~/wolf/i) {
    quest::say("I will require 13 gold pieces and a wolf pelt.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13766 => 1, $gold >= 96)) {
    quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
    quest::summonitem(2315);
  }
  if (plugin::check_handin(\%itemcount, 13752 => 1, $gold >= 25)) {
    quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
    quest::summonitem(2314);
  }
  if (plugin::check_handin(\%itemcount, 13054 => 1, $gold >=6)) {
    quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
    quest::say("2312");
  }
  if (plugin::check_handin(\%itemcount, 13755 => 1, $gold >=13)) {
    quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
    quest::summonitem(2313);
  }
}
