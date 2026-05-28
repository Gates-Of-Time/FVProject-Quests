sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hey there stranger, pleased to meet you. I'm Ruru, I do the cooking around here. I'm the best cook around these parts. So, if you get hungry, you'd best be making sure you're coming to see me.");
    #:: Send a signal "3" to Skyshrine >> Grudash_the_Baker (114467) with a one second delay
    quest::signalwith(114467, 3, 1);
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
  #:: Match if signal from skyshrine/Grudash_the_Baker.pl is "1"
  if ($signal == 1) {
    quest::say("Hah! Whatever Grudash. You know that my Roasted Walrus in Plum Sauce is better. You just don't want to admit it.");
    #:: Send a signal "1" to Skyshrine >> Grudash_the_Baker (114467) with a one second delay
    quest::signalwith(114467, 1, 1);
  }
  #:: Match if signal from skyshrine/Grudash_the_Baker.pl is "2"
  elsif ($signal == 2) {
    quest::say("Just you wait, just you wait! One of these days Grudash, you'll see.");
    #:: Send a signal "2" to Skyshrine >> Grudash_the_Baker (114467) with a one second delay
    quest::signalwith(114467, 2, 1);
  }
  #:: Match if signal from skyshrine/Grudash_the_Baker.pl is "3"
  elsif ($signal == 3) {
    quest::say("Bah!");
  }
  #:: Match if signal from skyshrine/Grudash_the_Baker.pl is "4"
  elsif ($signal == 4) {
    quest::emote("grumbles, 'Bah, this still doesn't settle anything Grudash. This stranger obviously has no taste for fine cuisine.'");
  }
  #:: Match if signal from skyshrine/Grudash_the_Baker.pl is "5"
  elsif ($signal == 5) {
    quest::emote("laughs, 'Don't get me started. You know that my cuisine Is prefered over yours two to one.'");
  }
}