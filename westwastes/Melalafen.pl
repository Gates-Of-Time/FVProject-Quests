sub EVENT_SAY {
  #:: Match if faction is Indifferent or better
  if ($faction <= 5) {
    if ($text =~ /hail/i) {
      quest::say("We are aware of your presence, fleshling.");
    }

    elsif ($text =~ /who/i) {
      quest::say("We are those who have been in hiding. We are those who have been in waiting. We are those who await the return of our Master.");
    }

    elsif ($text =~ /master/i) {
      quest::say("Our Master? Surely all know of our Master now. It was he who was sleeping. It is he who is now freed. We give him honor, loyalty, and our lives. Jaled'Dar, first of our order, set in motion the events that freed our Master. But the Master has departed quickly, perhaps to challenge the Mother herself, such is his power. We wish to aid our Master, but we fear he is not aware that we exist, for his last memory of Wyrmkind was one of treachery and defeat. We believe we know where he has gone, but we do not know how to reach him.");
    }

    elsif ($text =~ /where/i) {
      quest::say("We believe that he is in a far distant plane, beyond the powers of even the mightiest dragon to reach. He goes places only Veeshan herself was able to visit. We believe he searches for our long departed Mother, to challenge her for rule of the very heavens. If only we had some means of reaching him, we would give him all our aid! We doubt your pitiful mammal brain is capable of devising a plan where we have failed, but we will listen to your chatter, such is our desperation.");
    }

    elsif ($text =~ /prismatic dragon scale/i) {
      quest::say("You have a scale? A scale from Kerafyrm himself? His long slumber, or the battles after he was freed, must have weakened him a great deal! One such as our master does not shed. If this is true, and you possess what you say, there is hope for us. With his scale, we can create a focus which gives us a chance to locate him in the far ether. But wait! If you have his scale, you must have been in his tomb! You are the ones who were responsible for freeing him, yes? If this is so, we owe you a debt, for carrying out Jaled'Dar's Plan. Give us the scale and we shall reward you well. We also require the key Jaled'Dar crafted for you to enter the tomb. His tomb is a holy place, and the likes of you should not be allowed to further defile it. We shall not compromise, the key and the scale.");
    }
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Indifferent or better
  if ($faction <= 5) {
    #:: Match a 27329 - Prismatic Dragon Scale and 27265 - Sleeper's Key
    if (plugin::takeItems(27329 => 1, 27265 => 1)) {
      quest::say("Thank you for returning this to us. Here is your reward, imbued with the essence of a fool who held one of the keys to our Masters prison. If you are unhappy with your reward, return it to us and perhaps we can give you something more appropriate.");

      #:: Give a 2698 - Essence Lens
      quest::summonitem(2698);

      #:: Grant a huge amount of experience
      quest::exp(5000000);

      #:: Set factions
      quest::faction(1623, 10); #:: + Disciples of Kerafyrm
      quest::faction(430, 10);  #:: + Claws of Veeshan
      quest::faction(304, 10);  #:: + Ring of Scale
      quest::faction(448, -30); #:: - Kromzek
    }

    #:: Match a 2698 - Essence Lens
    elsif (plugin::takeItems(2698 => 1)) {
      #:: Give a 2699 - Essence Mace
      quest::summonitem(2699);
    }

    #:: Match a 2699 - Essence Mace
    elsif (plugin::takeItems(2699 => 1)) {
      #:: Give a 2700 - Essence Blade
      quest::summonitem(2700);
    }

    #:: Match a 2700 - Essence Blade
    elsif (plugin::takeItems(2700 => 1)) {
      #:: Give a 2748 - Essence Pearl
      quest::summonitem(2748);
    }

    #:: Match a 2748 - Essence Pearl
    elsif (plugin::takeItems(2748 => 1)) {
      #:: Give a 2842 - Essence Ring
      quest::summonitem(2842);
    }

    #:: Match a 2842 - Essence Ring
    elsif (plugin::takeItems(2842 => 1)) {
      #:: Give a 2698 - Essence Lens
      quest::summonitem(2698);
    }
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}