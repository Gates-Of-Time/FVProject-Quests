sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  #:: Check for 18704 - Old Folded Letter
  if (plugin::check_hasitem($client, 18704)) { 
        $client->Message(15,"A diminutive, but powerful looking gnome stands before you. 'I am Velena Corgtec. The Dark Reflection has called you. Read the note in your inventory and hand it to me when you wish to begin your training. Your destiny awaits!'");
  }
}
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 18704 => 1)) { #Old Folded Letter
        quest::Say("A new wizard pledging to our cause is always welcome. Take this robe and see Tilkzog Mournumder when you are ready to begin your training.");
		quest::summonitem(13524); #Dark Gold Felt Robe*
		quest::faction(76,-10); # Deep Muses
		quest::faction(91,-10); # eldritch collective
		quest::faction(71,100); # Dark Reflection
		quest::faction(115,-10); # gem choppers
		quest::ding();
		quest::exp(100);
    }
    plugin::return_items(\%itemcount); # return unused items
}
# converted to Perl by SS
