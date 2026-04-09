sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hail, my friend. Unfortunately I cannot talk right now. The giants must be dealt with.");
  }
  elsif ($text =~ /giants/i) {
    quest::say("The giants are continuing to put forth efforts to encroach the lands blessed by Tunare. We need an outrider or preserver to aid us in our continued fight.");
  }
  elsif ($text =~ /preserver/i) {
    quest::say("Noble preserver, you will be needed to combat the priests of the warbringer. Scouts have reported three priests wandering the Wakening Lands in search of a site to build a shrine to their god. Seek them out, kill them, and bring their heads and those of anyone else involved.");
  }
  elsif ($text =~ /outrider/i) {
    quest::say("We have need of you to disrupt the construction efforts of the giants in the Wakening Land. Find the frost giant overseer, kill him and any others that are responsible for the building and bring back their heads.");
  }
}

sub EVENT_ITEM {
  #:: Match a 31424 - Grenk's Head, 31425 - Delar's Head, 31426 - Bjek's Head, and 31423 - Derakor's Head
  if (plugin::takeItems(31424 => 1, 31425 => 1, 31426 => 1, 31423 => 1)) {
    #:: Give a 1208 - Gloves of Earthcrafting
    quest::summonitem(1208);
    quest::say("You have done well, $name.  Here, take this item and use it well! Your efforts will not be forgotten.");
    #:: Grant a small amount of experience
    quest::exp(1000);
  }

  #:: Match a 31419 - Frostgiant Overseers Head, 31420 - Kallis' Head, 31421 - Bloody Protector of Zek's Head, and 31422 - Smashed Protector of Zek's Head
  elsif (plugin::takeItems(31419 => 1, 31420 => 1, 31421 => 1, 31422 => 1)) {
    #:: Give a 1207 - Helm of the Tracker
    quest::summonitem(1207);
    quest::say("You have done well, $name.  Here, take this item and use it well! Your efforts will not be forgotten.");
    #:: Grant a small amount of experience
    quest::exp(1000);
  }

  else {
    quest::say("I have no need of these, friend.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}