sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say("Hello. $name!  I am practicing the arcane art of [" . quest::saylink("teleportation") . "].  Would you like to try teleporting?");
	}
	elsif ($text =~ /teleportation/i) {
		quest::say("I have mastered teleporting adventurers to [" . quest::saylink("Antonica") . "], [" . quest::saylink("Faydwer") . "], and [" . quest::saylink("Odus") . "].  Where would you like to travel?");
	}
	elsif ($text =~ /Antonica/i) {
		quest::say("I have mastered transport to [" . quest::saylink("Nektulos Forest") . "], [" . quest::saylink("The Northern Desert of Ro") . "], [" . quest::saylink("The Northern Plains of Karana") . "], [" . quest::saylink("The Temple of Cazic Thule") . "], [" . quest::saylink("The Western Commonlands") . "]and [" . quest::saylink("The Western Plains of Karana") . "].  Where would you like to go?");
	}
	elsif ($text =~ /Faydwer/i) {
		quest::say("I have mastered transport to [" . quest::saylink("The Greater Faydark") . "].  Where would you like to go?");
	}
	elsif ($text =~ /Odus/i) {
		quest::say("I have mastered transport to [" . quest::saylink("Toxxulia Forest") . "].  Where would you like to go?");
	}
	elsif ($text =~ /Nektulos Forest/i) {
		quest::say("Begone!");
		$npc->CastSpell(1371, $ClientID);
	}
	elsif ($text =~ /The Northern Desert of Ro/i) {
		quest::say("Begone!");
		$npc->CastSpell(1373, $ClientID);
	}
	elsif ($text =~ /The Northern Plains of Karana/i) {
		quest::say("Begone!");
		$npc->CastSpell(1338, $ClientID);
	}
	elsif ($text =~ /The Temple of Cazic Thule/i) {
		quest::say("Begone!");
		$npc->CastSpell(1375, $ClientID);
	}
	elsif ($text =~ /The Western Commonlands/i) {
		quest::say("Begone!");
		$npc->CastSpell(1372, $ClientID);
	}
	elsif ($text =~ /The Western Plains of Karana/i) {
		quest::say("Begone!");
		$npc->CastSpell(1374, $ClientID);
	}
	elsif ($text =~ /The Greater Faydark/i) {
		quest::say("Begone!");
		$npc->CastSpell(1336, $ClientID);
	}
	elsif ($text =~ /Toxxulia Forest/i) {
		quest::say("Begone!");
		$npc->CastSpell(1337, $ClientID);
	}

}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
