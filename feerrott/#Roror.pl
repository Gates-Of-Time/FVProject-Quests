sub EVENT_COMBAT {
	#:: Set a scalar variable for random aggro text
	my $random = int(rand(100));
	#:: When entering combat
	if ($combat_state == 1) {
		if ($random <= 50) {
			quest::say("a $race like you is better left dead than alive.");
		}
        	if ($random > 50) {
			quest::say("You ssssshall know the horror of Cazic-Thule!");
		}
        }
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Do you [" . quest::saylink("know fear") . "]?");
	}
	if ($text=~/know fear/i) {
		quest::say("That's great!");
	}
	if ($text=~/know no fear/i) {
		quest::say("YOU SSSSSSHALL! For I, Roror, High Prissst of Cazic-Thule, I sssshall teach you!");
		quest::attack($name);
	}
	if ($text=~/curse my hay/i) {
		quest::say("I require 66 gold coin and the hay in order to curse it.");
	}
}
							
sub EVENT_ITEM {
	#:: Create a scalar variable for storing money
	my $cash = 0;
	$cash = ($platinum * 1000) + ($gold * 100) + ($silver * 10) + $copper;
	#:: Match 13990 - Bale of Hay and 66gp
	if ($cash >= 6600) {
		if (plugin::check_handin(\%itemcount, 13990 => 1)) {
			#:: Give a 14320 - Sack of Cursed Hay
			quest::summonitem(14320);
			quest::exp(300);
			quest::ding();
			#:: Set Faction
			quest::setfaction(18,10);	#:: +Beta Neutral
		}
	else {
		quest::givecash($copper, $silver, $gold, $platinum);
	}
	plugin::return_items(\%itemcount);
}
