sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  #:: Check for 18772 - Recruitment Summons
  if (plugin::check_hasitem($client, 18772)) { 
        $client->Message(15,"An older, male gnome stands before you. 'Welcome young apprentice to the Library Mechanimagica. I am Wuggan Azusphere. Read the note in your inventory and then hand it to me so that we can begin your training.'");
  }
}
sub EVENT_ITEM {
    if (plugin::check_handin(%itemcount, 18772 => 1)) { #Recruitment Summons
        quest::Say("Welcome to Library Mechanimagica. I am Master Magician Wuggan Azusphere. and I will help to teach you the ways of summoning. Here is our guild tunic, make us proud.");
		quest::summonitem(13521); #Dusty Gold Robe*
		quest::faction(91,100); # eldritch collective
		quest::faction(71,-15); # Dark reflection
		quest::faction(322,-5); # the dead
		quest::faction(115,15); # gem choppers
		quest::faction(176,15); # king ak'anon
		quest::ding();
		quest::exp(100);
    }
    plugin::return_items(%itemcount); # return unused items
}
#converted to Perl by SS
