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
		quest::say("Greeetingsssssssssss. What brings sssssuch asssss you to the heart of the Feerrott? Do you know [" . quest::saylink("know fear") . "]?");
	}
	if ($text=~/know fear/i) {
		quest::say("Yesssss. I can tassssste the fear in your pitiful heart. I am Roror, High Priessst of Cazic-Thule! I sssseek to sssssspread terror acrossssss all of Norrath! I ssssshall let you live thisss day so you can sssshare the fear that liessss within you.");
	}
	if ($text=~/know no fear/i) {
		quest::say("YOU SSSSSSHALL! For I, Roror, High Prissst of Cazic-Thule, I sssshall teach you!");
		quest::attack($name);
	}
	if ($text=~/bless my hay/i) {
		quest::say("You sssseek the blesssssssing of the Lord of Fear?! Give me what you have and 66 gold piecesss as an offering to Cazic-Thule.");
	}
}
							
sub EVENT_ITEM {
	#:: Create a scalar variable for storing money
	my $cash = 0;
	$cash = ($platinum * 1000) + ($gold * 100) + ($silver * 10) + $copper;
	#:: Match 13990 - Bale of Hay and 66gp
	if ($cash >= 6600) {
		if (plugin::check_handin(\%itemcount, 13990 => 1)) {
			quest::say("'Whatsssss thisssss? You sssseek my blessssssssing? Heh heh heh... Very well... CAZIC-THULE! Take this fruit of Karana into horror'sss dark embrace. Fear and death made manifesssssst. A harvesssst of terror! Here, take your gift of blood and sssstraw. Use its dark powersssss in the name of the Fear Lord!' ");
			#:: Give a 14320 - Sack of Cursed Hay
			quest::summonitem(14320);
			quest::exp(300);
			quest::ding();
			#:: Set Faction
			quest::faction(18,10);		#:: +Beta Neutral
		}
	}
	else {
		quest::givecash($copper, $silver, $gold, $platinum);
	}
	plugin::return_items(\%itemcount);
}
