# items: 14789, 14788, 14790, 14783, 3053, 4976, 14786, 3060, 4979, 3056, 4977
sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Begone unless you seek the armor of the [trooper]");
  }
  elsif ($text=~/trooper/i) {
    quest::say("I can provide [breastplate], [pauldrons], [helm], or [vambraces]");
  }
  elsif ($text=~/breastplate/i) {
    quest::say("The monk is the master of focus, the shaman of sacrifice and the shadowknight of righteousness. Lastly, our brothers of the dark know confidence. It is then our duty to know perseverance more than any other. When others fall from spear and sword, we must stand. When others are washed away by fire and ice, we must stand. When others are frustrated and confused, we must continue on. There is a warrior in the swamp near the city. He is an exile, like my brother and I. He knows more about than I.");
    #:: Give a 14789 - Illegible Note: Breastplate
    quest::summonitem(14789);
  }
  elsif ($text=~/helm/i) {
    quest::say("You must first learn focus before being awarded the legionnaire scale helm. The Swifttails are the masters of focus and as such you will learn from the Grand Master of the Court. It has been so long, I do not know who is Grand Master now. Whoever it is, give him this note and follow his instruction. Once you have learned, return to us and the helm will be yours.");
    #:: Give a 14788 - Illegible Note: Helm
    quest::summonitem(14788);
  }
  elsif ($text=~/vambraces/i) {
    quest::say("Our arms carry more than the weapons of war and the hands that make use of them. We sacrifice the strength in our arms to carry our duties and obligations. Unless we can sacrifice our own bodies and abilities to carry these ideals, we will never be fit to protect the Chosen. Take this note to the master of the mystics in Cabilis, he will teach you a lesson in sacrifice.");
    #:: Give a 14790 - Illegible Note: Vambraces
    quest::summonitem(14790);
  }
}

sub EVENT_ITEM {
  #:: Match a 14783 - Glox Reference and a 3053 - Banded Helm
  if (plugin::takeItems(14783 => 1, 3053 => 1)) {
    quest::say("Well done");
    #:: Give a 4976 - Trooper Scale Helm
    quest::summonitem(4976);
		#:: Ding!
    quest::ding();
		#:: Grant a moderate amount of experience
    quest::exp(10000);
  }
  #:: Match a 14786 - Vek's Reference: Vambraces and a 3060 - Banded Sleeves
  elsif (plugin::takeItems(14786 => 1, 3060 => 1)) {
    quest::say("Well done");
    #:: Give a 4979 - Trooper Scale Vambraces
    quest::summonitem(4979);
		#:: Ding!
    quest::ding();
		#:: Grant a moderate amount of experience
    quest::exp(10000);
  }
  #:: Match a 14783 - Glox Reference and a 3056 - Banded Mail
  elsif (plugin::takeItems(14783 => 1, 3056 => 1)) {
    quest::say("Well done");
    #:: Give a 4977 - Trooper Scale Breastplate
    quest::summonitem(4977);
		#:: Ding!
    quest::ding();
		#:: Grant a moderate amount of experience
    quest::exp(10000);
  }

	#:: Return unused items
	plugin::returnUnusedItems();
}