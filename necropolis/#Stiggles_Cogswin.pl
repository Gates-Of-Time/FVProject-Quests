sub EVENT_SPAWN {
     quest::setnexthpevent(50);
}

sub EVENT_HP {
     if ($hpevent == 50) {
          #:: Spawn a Dragon Necropolis >> Stiggles_Cogswin (123151), without grid or guild war, at the current location
          quest::spawn2(123151, 0, 0, $x, $y, $z, $h);
          #:: Depop without spawn timer
          quest::depop();
     }
}