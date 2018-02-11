sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  #:: Check for 18702 - Old Folded Letter
  if (plugin::check_hasitem($client, 18702)) { 
        $client->Message(15,"An evil cackle echoes throughout the mines as you get your bearings. Vaenor Husga turns his gaze upon you. 'Why do you stand about young apprentice?! There is much to learn. Read the note in your inventory and then hand it to me so that we can begin your training! The Dark Reflection will have its revenge!'");
  }
}
sub EVENT_ITEM {
    if (plugin::check_handin(%itemcount, 18702 => 1)) { #Old Folded Letter
        quest::Say("A new initiate I see. Take this robe you will surely need it in the winter months.");
		quest::summonitem(13524); #Dark Gold Felt Robe*
		quest::faction(76,-10); # Deep Muses
		quest::faction(91,-10); # eldritch collective
		quest::faction(71,100); # Dark Reflection
		quest::faction(115,-10); # gem choppers
		quest::ding();
		quest::exp(100);
    }
    plugin::return_items(%itemcount); # return unused items
}
# converted to Perl by SS
