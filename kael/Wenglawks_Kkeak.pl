sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, $name, I have heard of you. My name is Wenglawks Kkeak. Welcome to my humble home. My sources tell me you are a [mercenary]. Is this true?");
  }
  elsif ($text =~ /mercenary/i) {
    quest::say("Well then, I suppose you might be [looking] for work. Are you?");
  }
  elsif ($text =~ /looking/i) {
    quest::say("I have been looking for a few good people to deliver goods for me. I have several [deliveries] to clients which must be made soon. My last delivery person ended up dead, unfortunately.");
  }
  elsif ($text =~ /deliveries/i) {
    quest::say("I have three clients whose orders must be taken care of. These will not be simple deliveries. I want you not only to deliver the items but to assist them if they need help using their packages. Do you wish to hear of the first task I have for you?");
  }
  elsif ($text =~ /first task/i) {
    quest::say("One of my clients lives on the shores of the Iceclad Ocean. His name is Sojan. Supposedly he is some kind of pirate from the other lands. However, I could not care less what he calls himself. He paid me well to acquire him a set of Coldain tools and they were not easy to come by. Are you willing to take this [package] to Sonjan?");
  }
  elsif ($text =~ /package/i) {
    quest::say("Wonderful, $name. Take this note to Kellek and he will give you the tools.");
    #:: Give a 25279 - Voucher for Toolset
    quest::summonitem(25279);
  }
  elsif ($text =~ /undertake/i) {
    quest::say("In the great divide there is a small outpost of kromrif. In that outpost you will find Bekerak, my client. I have acquired this new hunting spear for him and he may wish to test it out. Because of one simple mistake, once in my past, he thinks all of my wares are shoddy. I need the payment for the transaction still so don't let him get away without giving it to you. Take this voucher to Kellek and he will give you the spear.");
    #:: Give a 25280 - Voucher for Spear
    quest::summonitem(25280);
  }
  elsif ($text =~ /third client/i) {
    quest::say("Are you sure you will be up to this journey? It will take a hardened person to survive the trip. Let alone find my client. Do you really [want to go] out into the dangerous lands in the west?");
  }
  elsif ($text =~ /want to go/i) {
    quest::say("I'm not sure if I can [trust] you with this. If you die on the trip, I will be losing profit! The other deliveries were much simpler, I remind you. Can I really [trust] you as far as I can throw you? Wait, that's a bad example - I could probably throw you quite far.");
  }
  elsif ($text =~ /trust/i) {
    quest::say("I will curse your immortal soul if you fail, $name. In the depths of the icy waters of the cobalt scar lives an outcast siren who preys upon her own kind. We have a deal, I will provide her with an excellent hunting net and she will provide me with a giant cloak made of the scales of her kind. Take this voucher to Kellek and deliver the net. Do whatever it takes to get my cloak.");
    #:: Give a 25281 - Voucher for Mechanical Net
    quest::summonitem(25281);
  }
}

sub EVENT_ITEM {
  #:: Match a 28600 - Message to Wenglawks, with 200 platinum
  if (plugin::takeItems(28600 => 1) && $platinum == 200) {
    quest::say("Here is the information your employer requested. Now be gone. I have more business to take care of.");
    #:: Give a 28601 - Message to Herald
    quest::summonitem(28601);
  }
  #:: Match a 20474 - Receipt
  elsif (plugin::takeItems(20474 => 1)) {
    quest::say("I assume the delivery went well? You can have these as payment. One of my customers just decided he does not wish to buy them. They are rather sturdy! I do have another task available if you wish to [undertake] it.");
    #:: Grant a small amount of experience
    quest::exp(1000);
    #:: Give a 25062 - Engraved Bone Pauldrons
    quest::summonitem(25062);
  }
  #:: Match a 25130 - Giant Icewurm Talisman
  elsif (plugin::takeItems(25130 => 1)) {
    quest::say("He has reconsidered the offer, you say? This is most excellent! I hope this will be acceptable payment for your troubles, $name. My cash situation is not the best at this point in time. I do have a [third client] who needs delivery...");
    #:: Grant a small amount of experience
    quest::exp(1500);
    #:: Give a 25061 - Bracer of Midnight
    quest::summonitem(25061);
  }
  #:: Match a 25110 - Giant Siren Scale Cloak
  elsif (plugin::takeItems(25110 => 1)) {
    quest::say("It is truly a sight to behold. This is the most fashionable cloak I have yet to see. Even King Tormax will be green with envy. This old bag has served me well, I hope you find it to your liking.");
    #:: Grant a small amount of experience
    quest::exp(2000);
    #:: Give a 17049 - Wenglawks Manly Purse
    quest::summonitem(17049);
  }
  #:: Match a 29068 - Note to Wenglawks, with 100 or more platinum
  elsif (plugin::takeItems(29068 => 1) && $platinum >= 100) {
    quest::say("Here is the information your employer requested. Now be gone. I have more business to take care of.");
    #:: Give a 29626 - Dispelling device
    quest::summonitem(29626);
  }
  #:: Match a 1722 - Helssen's Voucher
  elsif (plugin::takeItems(1722 => 1)) {
    quest::say("So you are the mercenary I have been hearing about! Not what I expected. Anyway, here is your reward. Carry it well. Also, this noble's seal will prove your loyalty to anyone who is skeptical.");
    #:: Ding!
    quest::ding();
    #:: Give a 1719 - Girdle of Reflection
    quest::summonitem(1719);
    #:: Give a 1723 - Noble's Seal
    quest::summonitem(1723);
    #:: Grant a small amount of experience
    quest::exp(2000);
  }
  else {
    quest::say("I have no need for this item $name, you can have it back.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
