sub EVENT_SAY {
  #:: Match if faction is Ally
  if ($faction == 1) {
    if ($text =~ /hail/i) {
      quest::say("Hello, $name. It is not very often that I see adventurers back in this cave unless they have intentions of hurting the kind wurms here. I can only hope that for your sake that your intentions are good.");
    }
    elsif ($text =~ /glanitar/i) {
      quest::say("Glanitar? It has been quite long sense I have seen Glanitar, I fear that something unfortunate has become of him. It is not like him at all to be away for this long. He was out on normal patrol with a few others when they disappeared. We have not heard from any of them.");
    }
    elsif ($text =~ /disappear/i) {
      quest::say("This, I do not know. There are a few Giant forces that I have heard word of moving into the area. It is tough to say where they could have gone and if something happened to them or not who would be to blame. I highly doubt the Coldain would dare attack one of our units. The last I heard of them was when they left for the patrol of the Divide; this could have been anywhere. I remember that Glanitar carries a talisman from his mother. If you are to find any sign of Glanitar or any of the others please come to me first along with something that would symbolize who you received or took it from.");
    }
    elsif ($text =~ /rolandal/i) {
      quest::say("Rolandal is an old and wise Wurm that is very well traveled and skilled in the magics of Identification. He will be able to tell you who this talisman came from. You can find him in his dwelling not too far from my home. Seek him out and inform him that i have sent you. If Rolandal can sense that your word is true proceed to tell him that you possess a talisman that you need Identified and he shall help you further. I thank you for your efforts and wish you luck, $name.");
    }
  }
}

sub EVENT_ITEM {

  #:: Match if faction is Ally
  if ($faction == 1) {
    #:: Match a 1861 - An old worn Talisman and a 1862 - Head of the Taskmaster.
    if (plugin::takeItems(1861 => 1, 1862 => 1)) {
      quest::say("What is it you have here, $name? Could this possibly be the talisman of Glantitar? I am afraid I am having trouble identifying if it is indeed is. I can see that you had a great battle with one of the wicked giants. I appreciate that you present to me this head of the evil Kromzek Taskmaster along with the talisman. It proves to me that you are one that is here to aid us in our fight. However, you must seek out Rolandal to proceed further for only he can help you identify this talisman.");
      #:: Give a 1861 - An old worn Talisman.
      quest::summonitem(1861);
      quest::targlobal("CircletFalinkan","1","Y1",119104,$charid,119); # Muuss
      #:: Set factions
      quest::faction(436, 20);  #:: + Yelinak
      quest::faction(430, 20);  #:: + Claws of Veeshan
      quest::faction(448, -60); #:: - Kromzek
      #:: Grant a medium amount of experience.
      quest::exp(50000);
    }
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

