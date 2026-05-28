sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("What brings you to the hall of the frost giants, little one? Have you come to serve our lord and master? Or are you simply a scout for a raiding party? I warn you, do not make war on my kin. I will twist the elements to my will and destroy you if that is your intent.");
  }
  elsif ($text =~ /serve/i) {
    quest::say("You could best serve the masters by serving me. The more time I have to tend to my research the better. I have several minor tasks which you could easily handle...");
  }
  elsif ($text =~ /minor task/i) {
    quest::say("In the wreched jungle to the west there lives a race of faries protected by Tunare and her other minions. These abominations are called the Sifaye. I belive that the strength of the Wakening lands is linked not only to Tunare herself, but her connection with these foul beasts. Bring me the wings of one of their so called knights and the heads of three commoners and I will reward you for such busy work.");
  }
}

sub EVENT_ITEM {
  #:: Match a 25112 - Wings of a Sifaye Knight, and a 25113 - Sifaye Head
  if (plugin::takeItems(25112 => 1, 25113 => 1)) {
    quest::say("You are starting to prove yourself here is a small token for your work");
    #:: Give a 25056 - Silver Dragon Tattoo
    quest::summonitem(25056);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}