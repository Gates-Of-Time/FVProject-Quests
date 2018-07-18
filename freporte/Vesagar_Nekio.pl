sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Welcome into our church of rage.  I am Vesagar Nekio. servant of Innoruuk.  If you should need me to [" . quest::saylink("cure poison") . "]. [" . quest::saylink("cure disease") . "]. or if you [" . quest::saylink("require healing") . "]. just let me know.");		
	}
	if ($text=~/require healing/i) {
		#::  Match if Amiable or better
		if ($faction <= 4 ) {
			quest::say("Ally of the Dismal Rage,  be healed of all your wounds!!");
			#:: Cast spell 12 - Healing
			$npc->CastSpell(12,$client);
		}
		#:: Match if faction is Indifferent or worse
		elsif ($faction > 4 ) {
			quest::say("Blasphemer!!  You are no ally of the Dismal Rage.  Run while you still have legs!!");
		}
	}
	if ($text=~/cure disease/i) {
		#::  Match if Amiable or better
		if ($faction <= 4 ) {
			quest::say("Ally of the Dismal Rage,  be free of disease!!");
			#:: Cast spell 213 - Cure Disease
			$npc->CastSpell(213,$client);
		}
		#:: Match if faction is Indifferent or worse
		elsif ($faction > 4 ) {
			quest::say("Blasphemer!!  You are no ally of the Dismal Rage.  Run while you still have legs!!");
		}
	}
	if ($text=~/cure poison/i) {
		#::  Match if Amiable or better
		if ($faction <= 4 ) {
			quest::say("Ally of the Dismal Rage,  Be free of poison!!");
			#:: Cast spell 203 - Cure Poison
			$npc->CastSpell(203,$client);
		}
		#:: Match if faction is Indifferent or worse
		elsif ($faction > 4 ) {
			quest::say("Blasphemer!!  You are no ally of the Dismal Rage.  Run while you still have legs!!");
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
