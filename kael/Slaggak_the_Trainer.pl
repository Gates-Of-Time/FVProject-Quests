sub EVENT_SAY {
  #:: Match if faction is Indifferent or better
  if ($faction <= 5) {
    if ($text =~ /hail/i) {
      quest::say("Hello there, $race. I am Slaggak, the trainer. The Kromrif here will soon be ready to serve the great and honorable King Tormax.");
    }
    elsif ($text =~ /serve/i) {
      quest::say("So you say, little one. Why are you here, then? You should be out slaying those pestering little Coldain or maybe those damnable shard wurms and wyverns.");
    }
    elsif ($text =~ /coldain/i) {
      quest::say("The Coldain are the ice dwarves. They have defiled our lands for long enough. Thinking of them makes my blood run hot. With my new position as trainer, I am not allowed to roam the lands and slaughter their kind as I once did.' Slaggak sighs. 'I long for the days when I could fashion necklaces from their skulls.");
    }
    elsif ($text =~ /skulls/i) {
      quest::say("Go from here and seek out the Coldain, slay them, and return to me with their heads. I wish to fashion four skull talismans as I once did. If you can do this for me, I will surely let King Tormax know of your deeds and reward you with a piece of armor from the Militia armory.");
    }
    elsif ($text =~ /shard wurm/i) {
      quest::say("You must have seen the shard wurms by now! The lizards that roam the lands eating whatever they can find? They can grow to be quite ferocious! Not nearly as ferocious as their ancient cousins, the dragons, but a nuisance nonetheless. We have a bounty on those beasts here in Kael Drakkel.");
    }
    elsif ($text =~ /bounty/i) {
      quest::say("If you think you have what it takes to slay the shard wurms or their relatives, the wyverns, bring back proof of your exploits. For every four shard wurm fang you bring me, I am authorized to reward you with a pair of cerulean greaves. Every fourth ice wyvern stinger will grant you a pair of vambraces.");
    }
  }
  else {
    quest::say("Your loyalty to our ideals has yet to be proven.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Indifferent or better
  if ($faction <= 5) {
    #:: Match a 30081 - Coldain Head
    if (plugin::takeItems(30081 => 1)) {
      quest::say("You are truly a worthy little $race. I hope this armor serves you well. If it does not, I am sure a mercenary such as yourself could find a buyer.");
      #:: Give a random reward item: 25011 - Giant Scalemail Belt, 25016 - Giant Scalemail Boots, 25013 - Giant Scalemail Bracer, 25010 - Giant Scalemail Cloak, 25017 - Giant Scalemail Gauntlets, 25014 - Giant Scalemail Gloves, 25007 - Giant Scalemail Gorget, 25005 - Giant Scalemail Helm, 25015 - Giant Scalemail Leggings, 25009 - Giant Scalemail Mantle, 25006 - Giant Scalemail Mask, 25012 - Giant Scalemail Sleeves, or 25018 - Giant Scalemail Tunic
      quest::summonitem(quest::ChooseRandom(25011, 25016, 25013, 25010, 25017, 25014, 25007, 25005, 25015, 25009, 25006, 25012, 25018));
      #:: Set factions
      quest::faction(419, 20);  #:: + Kromrif
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(406, -60); #:: - Coldain
      quest::faction(430, -60); #:: - Claws of Veeshan
      #:: Grant a tiny amount of experience
      quest::exp(100);
    }
    #:: Match a 25100 - Shard Wurm Fang
    elsif (plugin::takeItems(25100 => 4)) {
      quest::say("You are truly a worthy little $race. I hope this armor serves you well. If it does not, I am sure a mercenary such as yourself could find a buyer.");
      #:: Give a 25071 - Cerulean Greaves
      quest::summonitem(25071);
      #:: Set factions
      quest::faction(419, 20);  #:: + Kromrif
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(406, -60); #:: - Coldain
      quest::faction(430, -60); #:: - Claws of Veeshan
      #:: Grant a tiny amount of experience
      quest::exp(100);
    }
    #:: Match a 25101 - Ice Wyvern Stinger
    elsif (plugin::takeItems(25101 => 4)) {
      quest::say("You are truly a worthy little $race. I hope this armor serves you well. If it does not, I am sure a mercenary such as yourself could find a buyer.");
      #:: Give a 25070 - Cerulean Vambraces
      quest::summonitem(25070);
      #:: Set factions
      quest::faction(419, 20);  #:: + Kromrif
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(406, -60); #:: - Coldain
      quest::faction(430, -60); #:: - Claws of Veeshan
      #:: Grant a tiny amount of experience
      quest::exp(100);
    }
    else {
      quest::say("I have no use for this, $name.");
    }
  }
  else {
    quest::say("I will do nothing to aid the likes of you.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
