sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Ah, welcome stranger. Perhaps I could interest you in one of my famous Boysenberry pies, the delight of Sky Shrine.");
    #:: Send a signal "1" to Skyshrine >> Ruru_the_Cook (114496) with a one second delay
    quest::signalwith(114496, 1, 1);
  }
  elsif ($text =~ /boysenberry pie/i) {
    quest::say("chuckles, 'I thought you might, what say you now Ruru? Who is the better cook between us now?'");
    #:: Send a signal "4" to Skyshrine >> Ruru_the_Cook (114496) with a one second delay
    quest::signalwith(114496, 4, 1);
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
  #:: Match if signal from skyshrine/Ruru_the_Cook.pl is "1"
  if ($signal == 1) {
    quest::say("Why would I admit to such a lie? Everyone loves my pies. I rarely see anyone come in here asking for your Roasted Walrus.");
  }
  #:: Match if signal from skyshrine/Ruru_the_Cook.pl is "2"
  elsif ($signal == 2) {
    quest::say("Please ignore my friend Ruru here. He is a bit delusional.");
    #:: Send a signal "3" to Skyshrine >> Ruru_the_Cook (114496) with a one second delay
    quest::signalwith(114496, 3, 1);
  }
  #:: Match if signal from skyshrine/Ruru_the_Cook.pl is "3"
  elsif ($signal == 3) {
    quest::emote("laughs, 'I'm sure they'd prefer my Boysenberry pie to your Roasted Walrus with Plum Sauce any day.'");
    #:: Send a signal "5" to Skyshrine >> Ruru_the_Cook (114496) with a one second delay
    quest::signalwith(114496, 5, 1);
  }
}