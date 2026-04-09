sub EVENT_SAY {
  if ($text =~ /hail/i) {
    #:: Send a signal "99" to Dragon Necropolis >> a_Paebala_Spirit_Talker (123105) with a 1000 second delay
    quest::signalwith(123105, 99, 1000);
  }
  elsif ($text =~ /chetari/i) {
    quest::say("Rika sa vi na Chetari aga val rak Zlandicar. The Chetari are an evil breed, shaped by Zlandicar. Asila sa vi ne Paebala ika so takina. They enslave the Paebala. Canti ri va ni makata ra Paebala. The Paebala revolted years ago. Mishi ro ka rilla vi ne graka sal ogoo mashan rina, villi rassa rassa ke! They are powerful in the ways of death, but they fear our goo friends, and our teeth are sharp! Rika re rika so malti fe isha kora, Chetari fa rish na
Paebala. But the Chetari will not rest until we are all dead or slaves. Villi rassa rassa ke, korta ne riki sa vena. Our teeth are sharp, but we can not win. Wilta fa unala kisha Zlandicar maka re, villa rasssa, moa Chetari isa rolak. Zlandicar has the sharpest teeth, and the Chetari do his bidding.");
  }
}

sub EVENT_SIGNAL {
  #:: Match if signal from necropolis/123105.pl is "101"
  if ($signal == 101) {
    quest::say("Chika val na vi Paebala Neb'ri. I am Neb of the Paebala. Aknila sa rik nor valkuta aknila. Start no trouble, there will be no trouble. Nish ala ro tak na re Chetari, skas vena ral. Avoid the Chetari, they will kill you.");
  }
}

sub EVENT_ITEM {
  #:: Match a 26033 - Vaniki's Heart and 26009 - Zlandicar's Heart
  if (plugin::takeItems(26033 => 1, 26009 => 1)) {
    quest::say("Ika Paebala ma ri skasha, Neb`ri mi re skashi! The Paebala are joyful, Neb is joyful! Misu na tona Vaniki esa Zlandicar, no re Paebala soka mora Chetari, ika tu. With the death of Vaniki and Zlandicar, the Paebala can conquer the Chetari, and rule! Mika na so kaka rika, ug boro Neb`ri, ek val Vaniki ushta. Take this, it is Neb's fighting bone, and here, this key I took from Vaniki.");
    #:: Give a 26040 - Neb's Warbone
    quest::summonitem(26040);
    #:: Give a 28060 - Jaled Dar's Tomb Key
    quest::summonitem(28060);
    #:: Grant a large amount of experience
    quest::exp(250000);

    #:: Set factions
    quest::faction(463, 50);   #:: + Paebala
    quest::faction(462, -150); #:: - Chetari
    quest::faction(464, -150); #:: - Zlandicar
  }
  #:: Match a 69341 - Nexona's Poison Vial
  elsif (plugin::takeItems(69341 => 1)) {
    quest::say("Ika vora isa, viia solta ian raka. Thank you for this concoction. Loka vula riluua zlandicar. We will use this on Zlandicar's allies. Wurna so vi re drikinavi wo isa maka. This will aide us greatly in our struggle against them. Wula vaa ria muta nish ala aknila nexona. Here is a sealed note to give to Nexona as proof of this delivery. Val na vi paebala yi no sa saka! All of the paebala thank you, tallone!");
    #:: Give a 69344 - Neb's Note
    quest::summonitem(69344);
    #:: Grant a medium amount of experience
    quest::exp(10000);
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

