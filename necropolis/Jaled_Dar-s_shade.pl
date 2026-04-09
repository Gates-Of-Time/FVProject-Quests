sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Mortal! You MUST aid me! I will have my revenge, and my rest!");
  }
  elsif ($text =~ /aid you/i) {
    quest::say("You must wake The Sleeper. He is our salvation, he will restore a new golden age to Norrath. It was a terrible mistake to subdue him, jealousy and envy led us to do it. I see all of this clearly now.");
  }
  elsif ($text =~ /the sleeper/i) {
    quest::say("Kerafyrm, the best of us, what we should be. We imprsoned him in a timeless slumber aeons ago. I know how to release him, but I am no longer of the flesh, so I cannot do it myself. But you can accomplish this task!");
  }
  elsif ($text =~ /task/i) {
    quest::say("When the tomb was closed and the entry sealed, many dragons participated in the ceremony. They invested portions of their essence into the seal. The seal is part of them now. With the right talismans, I can show you how to make a key that will allow one to pass, as if they were of the First Brood. If you do not wish to do this for the good of all, perhaps you will be willing to do it for material riches. Priceless treasures are stored in the tomb, yours for the taking, once you are inside and have released The Sleeper.");
  }
}

sub EVENT_ITEM {
  #:: Match a 9296 - Shard of Hsagra's Talisman, 27255 - Klandicar's Talisman, 27256 - Sontalak's Talisman, 27258 - Zlandicar's Talisman, 27259 - Lendiniara's Talisman, or 27266 - Yelinak's Talisman
  if (plugin::takeItems(9296 => 1)
    || plugin::takeItems(27255 => 1)
    || plugin::takeItems(27256 => 1)
    || plugin::takeItems(27258 => 1)
    || plugin::takeItems(27259 => 1)
    || plugin::takeItems(27266 => 1)) {
    quest::say("Very well done, $name. Here is how you unlock the entry. Seek out a great dragon statue in the Eastern Wastes and use this key there. Not very different from how you entered my old domain, Veeshan's Peak, now, is it? Haha, yes, I know many things, even dead.");
    #:: Give a 27265 - Sleeper's Key
    quest::summonitem(27265);
    #:: Grant a large amount of experience
    quest::exp(500000);
	#:: Zone 108 - sleeper
    quest::set_zone_flag(128);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}