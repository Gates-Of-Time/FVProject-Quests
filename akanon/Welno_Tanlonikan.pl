sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  #:: Check for 18776 - Recruitment Summons
  if (plugin::check_hasitem($client, 18776)) { 
        $client->Message(15,"A voice echoes throughout the room as you take in your surroundings. 'Hey you! This is Welno Tanlonikan. Remember me? Read the note in your inventory and then hand it to me. Hurry up! We don't have all day! You owe me a lot of money!'");
  }
}
sub EVENT_ITEM {
    if (plugin::check_handin(%itemcount, 18776 => 1)) { #Recruitment Summons
        quest::Say("Welcome to Library Mechanimagica. I am Master Magician Wuggan Azusphere. and I will help to teach you the ways of summoning. Here is our guild tunic, make us proud.");
		quest::summonitem(13519); #Scuffed Tunic*
		quest::faction(76,100); # Deep Muses
		quest::faction(210,15); # Merchants of Ak'Anon
		quest::faction(71,-15); # Dark Reflection
		quest::faction(115,15); # gem choppers
		quest::ding();
		quest::exp(100);
    }
    plugin::return_items(%itemcount); # return unused items
}
# converted to Perl by SS
