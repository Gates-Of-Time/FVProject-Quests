sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, $name. I am the captain of the Kael militia. I will be watching those of your kind who have come to Kael Drakkel as mercenaries and bounty hunters. You may have come here to serve king Tormax but Kael is my home and I intend to keep it a safe place for the Kromzek. Keep yourself out of trouble or you will end up in a world of pain.");
  }
  elsif ($text =~ /work/i) {
    quest::say("Are you looking for work, $name? I may have a use for one of your kind. I believe that several nobles in this fine city are not all they appear to be. I have suspicions about that filthy Wenglawks. He will do whatever it takes to amass his own wealth. My sources tell me that he may very well be trading with the Coldain, or worse yet, the dragons. If you could find me proof of his underhanded dealings, I would be most pleased.");
  }
  elsif ($text =~ /proof/i) {
    quest::say("The more convincing the proof is, the better. There must be a record of his actions somewhere.");
  }
  elsif ($text =~ /keep safe/i) {
    quest::say("With the influx of mercenaries into Kael Drakkel, I have seen minor crimes increase. I have had to increase my militia patrols. A majority of my militia work longer hours than they did before. There was a time when we only had to watch for the dragons from the sky and the Coldain from the outside. Now we must watch within");
  }
  elsif ($text =~ /mercenaries/i) {
    quest::say("I have several bounties open if you are interested. Bring me the head of a Coldain and I will reward you with a small sum of money and spread the word of your good work. There is also a bounty upon the nefarious Icepaw kobolds who serve the outcast Velketor. I require four of the paws of those little beasts.");
  }
}

sub EVENT_ITEM {
  my $matched_turn_in = 0;

  #:: Match a 30081 - Coldain Head
  if (plugin::takeItems(30081 => 1)) {
    quest::say("Excellent, $name. Here is the bounty as promised.");
    #:: Grant a medium amount of experience
    quest::exp(10000);
    #:: Give cash reward: 5 gold, 10 silver
    quest::givecash(0,0,5,10);
    #:: Set factions
    quest::faction(419, 30);  #:: + Kromrif
    quest::faction(448, 30);  #:: + Kromzek
    quest::faction(429, 30);  #:: + King Tormax
    quest::faction(430, -90); #:: - Claws of Veeshan
  }
  #:: Match a 25301 - Icepaw Kobold's Paw
  elsif (plugin::takeItems(25301 => 4)) {
    quest::say("Excellent, $name. Here is the bounty as promised.");
    #:: Grant a medium amount of experience
    quest::exp(20000);
    #:: Give a random reward item: 25077 - Silvery Mask or 25084 - Antlered Mask
    quest::summonitem(quest::ChooseRandom(25077,25084));
    #:: Set factions
    quest::faction(419, 30);  #:: + Kromrif
    quest::faction(448, 30);  #:: + Kromzek
    quest::faction(429, 30);  #:: + King Tormax
    quest::faction(430, -90); #:: - Claws of Veeshan
  }
  #:: Match a 1718 - Wurmscale Scroll
  elsif (plugin::takeItems(1718 => 1)) {
    quest::say("This indeed points to Wenglawks being a traitor. If only there were more proof I could take this to the king. Thank you, $name, you have done a great service for Kael. Take this mask as a reward for your service to this city.");
    #:: Grant a medium amount of experience
    quest::exp(20000);
    #:: Give a 25024 - Mask of War
    quest::summonitem(25024);
    #:: Set factions
    quest::faction(419, 30);  #:: + Kromrif
    quest::faction(448, 30);  #:: + Kromzek
    quest::faction(429, 30);  #:: + King Tormax
    quest::faction(430, -90); #:: - Claws of Veeshan
  }
  else {
    quest::say("These are not the pieces I need.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}