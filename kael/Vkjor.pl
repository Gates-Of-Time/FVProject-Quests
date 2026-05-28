sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, $race. Welcome to the great arena of Kael Drakkel. I am Vkjor, master of the arena. The games begin and end when I wish them to. Gladiators train themselves year round to entertain the populace of Kael. Have you come to watch, or is there something else I can help you with?");
  }
  elsif ($text =~ /something else|help you with/i) {
    quest::say("What is it you need? Do you wish to be a gladiator or something along those lines? I do not allow your kind to fight in the arena, I am sorry to say. It is a sacred place for the children of Zek. If you wish to hone your battle skills, however, I do have several things I need taken care of.");
  }
  elsif ($text =~ /taken care of/i) {
    quest::say("I have several things which must be dealt with. However I must know if you are capable of the tasks before I send you off. Do you fight like an ice wurm or a dragon?");
  }
  elsif ($text =~ /fight like a dragon/i) {
    quest::say("If you fight like a dragon, I suppose destroying one might not be that hard for you. Several years ago, Nevederia led a flight of dragons to defile the Temple of Rallos Zek. We beat them back to the skies but not without our losses.");
  }
  elsif ($text =~ /loss(?:es|ers)/i) {
    quest::say("My youngest son, Vkjrog, now rests with Rallos Zek in the Plane of War. The loss has sapped me nearly of my will to live. However, a few things keep me going - my duty to keep the arena in order and the knowledge that I might still bring pain and suffering to Nevederia. I wish her to suffer as I did with the loss of a child. She may stay safe in the Temple of Veeshan but her brood does not. Slay her three children and bring me proof of their deaths so they may serve as my message to Nevederia. I will compensate you with a pair of gloves fit for a fine warlord if you can give me this satisfaction.");
  }
  elsif ($text =~ /ice wurm/i) {
    quest::say("Very well, young one. A friend of mine named Graktar recently traveled to the Eastern Wastes in search of the remains of his brother, Vkalth. Please take this note to Graktar and assist him in his search. Return to me when you have news of his fate.");
    #:: Give a 25102 - Large Note
    quest::summonitem(25102);
  }
}

sub EVENT_ITEM {
  #:: Match a 25127 - Bloody Claw of Veredenia, a 25128 - Bloody Claw of Jerigozia, and a 25129 - Bloody Claw of Draazak
  if (plugin::takeItems(25127 => 1, 25128 => 1, 25129 => 1)) {
    quest::say("I honestly did not expect you to be able to destroy her children, $name. Vkjrog must have guided your hand as you slew those beasts. Nevederia will now know sorrow the like of which she has never felt. Vkjor drops a shiny pair of gauntlets on the ground before you as he turns his attention to the bloody claws he now holds.");
    #:: Set factions
    quest::faction(448, 5);   #:: + Kromzek
    quest::faction(419, 5);   #:: + Kromrif
    quest::faction(429, 5);   #:: + King Tormax
    quest::faction(430, -10); #:: - Claws of Veeshan
    #:: Grant a medium amount of experience
    quest::exp(40000);
    #:: Give a 25078 - Silver Steel Gauntlets
    quest::summonitem(25078);
  }
  else {
    quest::say("I have no need for this item $name, you can have it back.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
