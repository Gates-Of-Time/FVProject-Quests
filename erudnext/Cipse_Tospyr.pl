sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. I welcome you to the Temple of Divine Light. I am the resident healer. If you should ever require the power of Quellious to [" . quest::saylink("bind wounds") . "], [" . quest::saylink("cure disease") . "] or [" . quest::saylink("cure poison") . "], speak with me and I shall help you.");
	}
	if ($text=~/bind wounds/i) {
		quest::say("I shall be pleased to help you with your wounds. The Temple of Divine Light requires a tribute of four gold before I may perform the service.");
	}
	if ($text=~/cure disease/i) {
		quest::say("Your malady will be nothing more than a memory, but before that can be, we ask that a donation of two gold coins be offered.");
	}
	if ($text=~/cure poison/i) {
		quest::say("You must pay the tribute of three gold before I cast the toxin from your body.");
	}
}

sub EVENT_ITEM {
	#:: Create a scalar variable for storing money
	my $cash = 0;
	$cash = ($platinum * 1000) + ($gold * 100) + ($silver * 10) + $copper;
	#:: Match 400 copper - 4gp
	if ($cash == 400) {
		#:: Cast spell 12 - Healing
		$npc->CastSpell(12,$userid);
	}
	#:: Match 300 copper - 3gp
	elsif ($cash == 300) {
		#:: Cast spell 203 - Cure Poison
		$npc->CastSpell(203,$userid);
	}
	#:: Match 200 copper - 2gp
	elsif ($cash == 200) {
		#:: Cast spell 213 - Cure Disease
		$npc->CastSpell(213,$userid);
	}
	else {
    		quest::givecash($copper, $silver, $gold, $platinum);
	}
	plugin::return_items(\%itemcount);
}
