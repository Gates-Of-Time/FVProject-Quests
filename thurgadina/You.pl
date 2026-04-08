sub EVENT_SIGNAL {
  #:: Match if signal from thurgadina/Grand_Historian_Thoridain.pl is "33"
  if ($signal == 33) {
    quest::emote("can feel a strong presence beginning to take shape in the chapel. Perhaps you should recite the prayer again.");
  }

  #:: Match if signal from thurgadina/Grand_Historian_Thoridain.pl is "66"
  elsif ($signal == 66) {
    quest::emote("sense a being of great power focusing its attention on you.");
  }

  #:: Match if signal from thurgadina/Grand_Historian_Thoridain.pl is "99"
  elsif ($signal == 99) {
    quest::emote("have been inspired! Brell has heard your prayers and granted your request.");
  }
}

