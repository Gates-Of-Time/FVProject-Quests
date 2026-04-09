sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Well met, $name. It is indeed a wondrous day to be serving the lady Tunare. If you know of any templars or knights, send them to me.");
  }
  elsif ($text =~ /knight/i) {
    quest::say("Fortune smile upon me this day. It seems that the great corrupter and the Prince of Hate have been spreading seeds of corruption within this continent. Will you assist us to stop them?");
  }
  elsif ($text =~ /assist/i) {
    quest::say("Seek out the corrupter of life in the plane of hate and slay him. He has been reported performing dark rituals upon various wildlife within the Wakening Lands during the late hours of night. Return to me any evidence that you may find.");
  }
  elsif ($text =~ /templar/i) {
    quest::say("I require your aid. It seems the agents of corruption have supplied the followers of the warbringer with four idols that will help defoliate the Wakening Lands. Will you aid me, noble Templar?");
  }
  elsif ($text =~ /aid/i) {
    quest::say("Excellent. Gather the four idols that are held in Kael and return them to me. I will then properly dispose of these foul creations.");
  }
}

sub EVENT_ITEM {
  #:: Match a 31427 - Fleshless Skull, 31430 - Corrupted Fauns Skin, 31429 - Corrupted Panther Skin, and 31428 - Corrupted Unicorns Skin
  if (plugin::takeItems(31427 => 1, 31430 => 1, 31429 => 1, 31428 => 1)) {
    #:: Give a 1209 - Natures Defender
    quest::summonitem(1209);
    quest::say("May Tunare's blessing be upon thee! Here, take this item and use it wisely.");
    #:: Grant a small amount of experience
    quest::exp(1000);
  }
  #:: Match a 31432 - Idol of Corruption, 31434 - Idol of Decay, 31431 - Idol of Disease, and 31433 - Idol of Erosion
  elsif (plugin::takeItems(31432 => 1, 31434 => 1, 31431 => 1, 31433 => 1)) {
    #:: Give a 1223 - Symbol of Tunarian Worship
    quest::summonitem(1223);
    quest::say("May Tunare's blessing be upon thee! Here, take this item and use it wisely.");
    #:: Grant a small amount of experience
    quest::exp(1000);
  }
  else {
    quest::say("I have no need for this, friend.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}