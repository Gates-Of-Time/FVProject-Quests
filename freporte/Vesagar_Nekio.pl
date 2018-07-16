sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Welcome into our church of rage.  I am Vesagar Nekio. servant of Innoruuk.  If you should need me to [" . quest::saylink("cure poison") . "]. [" . quest::saylink("cure disease") . "]. or if you [" . quest::saylink("require healing") . "]. just let me know.");		
	}
	if ($text=~/require healing/i) {
		if ($faction <= 4 ) {  #::  Match if Amiable or Better
			quest::say("Ally of the Dismal Rage,  Be healed of all your wounds!!");
			quest::cast($spell_12); #:: Casts Healing
			}
			elsif ($faction > 4 ) {
				quest::say("Blasphemer!!  You are no ally of the Dismal Rage.  Run while you still have legs!!");
				}
		}
	if ($text=~/cure disease/i) {
		if ($faction <= 4 ) {	#::  Match if Amiable or Better
			quest::say("Ally of the Dismal Rage,  Be free of disease!!");
			quest::cast($spell_213); #:: Casts Cure Disease
			}
			elsif ($faction > 4 ) {
				quest::say("Blasphemer!!  You are no ally of the Dismal Rage.  Run while you still have legs!!");
				}
		}
	if ($text=~/cure poison/i) {
		if ($faction <= 4 ) {	#::  Match if Amiable or Better
			quest::say("Ally of the Dismal Rage,  Be free of poison!!");
			quest::cast($spell_203); #:: Casts Cure Poison
			}
			elsif ($faction > 4 ) {
				quest::say("Blasphemer!!  You are no ally of the Dismal Rage.  Run while you still have legs!!");
				}
		}
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
