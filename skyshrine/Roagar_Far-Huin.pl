sub EVENT_SAY {
  if ($faction == 1) {
    if ($text =~ /hail/i) {
      quest::say("I seek one who fights with rage in their eyes and fury in their arms, are you such a Berserker?");
    }
    elsif ($text =~ /i am a berserker/i) {
      quest::say("I will aid you with armor befitting one of your temperment. I have a helm, leggings, tunic, bracer, boots, sleeves, and gauntlets that can be yours if you complete my tasks");
    }
    elsif ($text =~ /helm/i) {
      quest::say("Your enemies shall shake with fear at the sight of the helm I shall forge.  I only require you to obtain three Crushed Corals and an Unadorned Chain Helm.");
    }
    elsif ($text =~ /tunic/i) {
      quest::say("I shall forge a tunic and infuse it with the rage of Dozekar the Cursed.  You must bring me three Flawless Diamonds and an Unadorned Chain Tunic.");
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Your fury shall be unmatched when wearing the sleeves I shall create.  Provide me with three Flawed Emeralds and a pair of Unadorned Chain Vambraces.");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("To forge a mighty bracer, I will need three Crushed Flame Emeralds and an Unadorned Chain Bracer.");
    }
    elsif ($text =~ /gauntlets/i) {
      quest::say("You shall crush the life from your enemies while wearing the gauntlets I can create from three Crushed Topazes and a pair of Unadorned Chain Gauntlets.");
    }
    elsif ($text =~ /leggings/i) {
      quest::say("Fury and swiftness shall be your ally while wearing leggings of my forging.  Bring me three Flawed Sea Sapphires and a pair of Unadorned Chain Leggings and they shall be yours");
    }
    elsif ($text =~ /boots/i) {
      quest::say("To better pursue those who flee before you, wear these boots.  I will need three Crushed Black Marbles and a pair of Unadorned Chain Boots to complete them.");
    }
  }
  else {
    quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
  }
}

sub EVENT_ITEM {
  my $handled = 0;

  if ($faction == 1) {
    #:: Match three 25831 - Crushed Coral and a 24968 - Unadorned Chain Helm
    if (plugin::takeItems(25831 => 3, 24968 => 1)) {
      #:: Give a 55324 - Coif of Fire's Fury
      quest::summonitem(55324);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    #:: Match three 25814 - Flawless Diamond and a 24963 - Unadorned Chain Tunic
    elsif (plugin::takeItems(25814 => 3, 24963 => 1)) {
      #:: Give a 55325 - Tunic of Fire's Fury
      quest::summonitem(55325);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    #:: Match three 25821 - Flawed Emerald and a 24965 - Unadorned Chain Vambraces
    elsif (plugin::takeItems(25821 => 3, 24965 => 1)) {
      #:: Give a 55326 - Sleeves of Fire's Fury
      quest::summonitem(55326);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    #:: Match three 25838 - Crushed Flame Emerald and a 24967 - Unadorned Chain Bracer
    elsif (plugin::takeItems(25838 => 3, 24967 => 1)) {
      #:: Give a 55327 - Bracer of Fire's Fury
      quest::summonitem(55327);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    #:: Match three 25832 - Crushed Topaz and a 24969 - Unadorned Chain Gauntlets
    elsif (plugin::takeItems(25832 => 3, 24969 => 1)) {
      #:: Give a 55328 - Gauntlets of Fire's Fury
      quest::summonitem(55328);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    #:: Match three 25825 - Flawed Sea Sapphire and a 24964 - Unadorned Chain Leggings
    elsif (plugin::takeItems(25825 => 3, 24964 => 1)) {
      #:: Give a 55329 - Leggings of Fire's Fury
      quest::summonitem(55329);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    #:: Match three 25833 - Crushed Black Marble and a 24966 - Unadorned Chain Boots
    elsif (plugin::takeItems(25833 => 3, 24966 => 1)) {
      #:: Give a 55330 - Boots of Fire's Fury
      quest::summonitem(55330);
		quest::emote("smiles wildly as he hands you your reward.");
		quest::say("Well done, $name.");
		#:: Grant a large amount of experience
		quest::exp(175000);
		#:: Set factions
		quest::faction(430, 30);	#:: + Claws of Veeshan
		quest::faction(436, 30);	#:: + Yelinak
		quest::faction(448, -60);	#:: - Kromzek
    }
    else {
      quest::say("I can do nothing with these items, $name.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust such an item to you, yet.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}