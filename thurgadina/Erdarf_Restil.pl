sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Huh? Don't you know better than to interrupt a Coldain enjoying his ale? I may be a user of priestly magic but that doesnt mean I can't bash your head in.");
  }
  elsif ($text =~ /priestly magic/i) {
    quest::say("Aye. An old one not much taken with idle chit chat.");
  }
  elsif ($text =~ /old one/i) {
    quest::say("Very old, very wise, and on and on. You must have some point to bothering me. I'm not a merchant and I don't contract myself out for work. I've performed works for the Dain. There isn't much I haven't done..");
  }
  elsif ($text =~ /have you done/i) {
    quest::emote("chuckles at you. 'If you want to impress me, and let me make certain you understand I doubt you can, then you can do what I never was able. For years I adventured and attempted to venture to the bottom of the Crystal Caverns in search of ancient artifacts from my people. Do that, show me that you have, and I will be impressed.'");
  }
}

sub EVENT_ITEM {
  #:: Match a 30269 - Sceptre of the Coldain Ancients.
  if (plugin::takeItems(30269 => 1)) {
    quest::emote("smirks at you. 'Hrm, you again eh? Did you come back to bother me with more...Wait a minute, let me see that. This is... This must be, yes it is. This is one of the ancient coldain priests sceptres of channeling. This is too good to be true. Haha! Oh, what I can do with this. Here, take this gem from the sceptre. If ancient lore proves right it will allow you to persuade beasts of many kinds.' He grins at you strangely and then leaves.");
    #:: Give a 30270 - Gem of Persuasion.
    quest::summonitem(30270);
    #:: Grant a medium amount of experience.
    quest::exp(25000);
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}