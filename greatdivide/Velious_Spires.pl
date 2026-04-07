sub EVENT_SPAWN {
   $x = $npc->GetX();
   $y = $npc->GetY();
   #:: Create a proximity, 240 units across, 0 units tall, default proximity say mode
   quest::set_proximity($x - 120, $x + 120, $y - 120, $y + 120);
}

sub EVENT_ENTER {
	# When we enter the spires, set global true.
   	quest::setglobal("spire_gd", 1, 1, "F");
	$spire_gd = undef;
}

sub EVENT_EXIT {
	# When we leave spires, set global false.
   	quest::delglobal("spire_gd");
	$spire_gd = undef;
}

sub EVENT_SIGNAL {
   #:: Match if signal from greatdivide/A_Mystic_Voice.pl is "101"
   if ($signal == 101) {
      $npc->CastSpell(118058, 2935);
   }
}