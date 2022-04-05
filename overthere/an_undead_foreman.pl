# items: 10023, 12863
sub EVENT_SAY {
  if($text=~/hail/i){
    quest::me("an undead foreman turns to face you. You can see a faint green glow emanating from his vacant eye sockets.");
    quest::say("Are you a [new worker]? Huh? Speak or go!!");
  }
  elsif($text=~/new worker/i){
    quest::say("Hmmph!! Too much flesh!! If you want to work, you must first fill my eye sockets with my favorite gem. This shall be your payment for your sledgehammer.");
  }
}

sub EVENT_ITEM {
  #:: Match a 10023 - Jade
  if (plugin::takeItems(10023 => 1)) {
    #:: Match if faction is Amiable or better
    if($faction <= 4){
      quest::me("an undead foreman places the gem deep within his hollow eye socket. He pulls a giant sledgehammer from thin air and hands it to you.");
      quest::say("Here!! You shall be assigned to the lower decks of the Scaled Trident.");
      #:: Give a 12863 - Worker Sledgemallet
      quest::summonitem(12863);
    }
    else {
      quest::say("I do not know you well enough to entrust such an item to you, yet.");
        #:: Give a 10023 - Jade
      quest::summonitem(10023);
    }
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
