sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("The gems I carry were actually collected by geonids, a race of rock and gem people that communicate with their minds alone. If'n ye haven't had the chance to see one yet I suggest ye journey to the Wakenin' Lands; they've reportedly got a colony somewhere in that area.");
  }
  elsif ($text =~ /i need a set of etching tools/i) {
    quest::say("Oh, really? There are not many that work in faceting gems. I am surprised to see your interest. You can have this old set of mine. There is no need to return the tools, Talem recently made me a new sturdy set. Brell bless him.");
    #:: Give a 8893 - Etching Tools.
    quest::summonitem(8893);
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items.
  plugin::returnUnusedItems();
}