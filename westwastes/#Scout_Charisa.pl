sub EVENT_ITEM {
  #:: Match if faction is Warmly or better
  if ($faction <= 2) {
    #:: Match a 29683 - Scout Tools
    if (plugin::takeItems(29683 => 1)) {
      quest::say("Great! I was wondering when they would send someone out to give me these. In my haste and excitement of this new assignment I forgot these. This scout business is great I must say. It sure beats setting in Southern Ro studying the ruins. I've been following these Storm Giants for days. They've been wandering up and down the coast looking for something."); 

      #:: Set factions
      quest::faction(430, 30);  #:: + Claws of Veeshan
      quest::faction(436, 30);  #:: + Yelinak
      quest::faction(448, -20); #:: - Kromzek

      #:: Grant a large amount of experience
      quest::exp(100000);

      #:: Spawn a Western Wastes >> #a_Kromzek_Captain (120115), without grid or guild war, at the given location
      quest::unique_spawn(120115, 0, 0, -3501, -4868, -108);
      #:: Spawn a Western Wastes >> a_Kromzek_warrior (120121), without grid or guild war, at the given location
      quest::spawn(120121, 0, 0, -3507, -4897, -106);
      quest::spawn(120121, 0, 0, -3496, -4874, -109);
      quest::spawn(120121, 0, 0, -3474, -4863, -114);
      quest::spawn(120121, 0, 0, -3463, -4852, -117);
      quest::spawn(120121, 0, 0, -3452, -4841, -119);
      quest::spawn(120121, 0, 0, -3441, -4830, -122);
      quest::spawn(120121, 0, 0, -3430, -4819, -124);
    }

    #:: Match a 29684 - Broken Disk
    elsif (plugin::takeItems(29684 => 1)) {
      #:: Set factions
      quest::faction(430, 30);  #:: + Claws of Veeshan
      quest::faction(436, 30);  #:: + Yelinak
      quest::faction(448, -20); #:: - Kromzek

      #:: Give a 29688 - Scout Report
      quest::summonitem(29688);
      #:: Give a 29685 - Robe of Benevolence
      quest::summonitem(29685);

      #:: Grant a large amount of experience
      quest::exp(100000);
    }
    #:: Match a 29685 - Robe of Benevolence
    elsif (plugin::takeItems(29685 => 1)) {
      #:: Give a 29686 - Bracer of Benevolence
      quest::summonitem(29686); #Bracer of Benevolence
    }
    #:: Match a 29686 - Bracer of Benevolence
    elsif (plugin::takeItems(29686 => 1)) {
      #:: Give a 29687 - Talisman of Benevolence
      quest::summonitem(29687); #Talisman of Benevolence
    }
    #:: Match a 29687 - Talisman of Benevolence
    elsif (plugin::takeItems(29687 => 1)) {
      #:: Give a 29685 - Robe of Benevolence
      quest::summonitem(29685); #Robe of Benevolence
    }
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}