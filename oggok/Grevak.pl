sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Need new members we do not. Powerful enough are we with Grevak. Still, peons needed. Are you a [new peon] or are you an [outsider]? Speak up!! Fool!! No time Grevak has!!");
	}
	if ($text=~/new peon/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("So you think you can be greater than Grevak!! Touch you not and still I can smash you. I am a Greenblood shadowknight!! Peon are you. Peons go to swamps and slay lizardmen. You return with four lizardmen tails and a reward is yours. You return with two lizardman shaman dolls and a great reward is yours.");
		}
		#:: Match if faction is Apprehensive or worse
		else {
			quest::say("Foe of the Greenbloods are you. I will rip you in two.");
		}
	}
	if ($text=~/outsider/i) {
		quest::say("Go away or soon your pain will find you.");
	}
}

sub EVENT_ITEM {
	#:: Match four 13354 - Lizard Tail
	if (plugin::takeItems(13354 => 4)) {
		quest::say("Now I shall take the lizard tails to shamans I will. Healing spells will this help create. You continue to slay. Continue to be the peon. Continue to live.");
		#:: Give a random reward: 2130 - Large Patchwork Cloak, 2132 - Large Patchwork Sleeves, 2127 - Large Tattered Gorget, 2126 - Large Tattered Mask, 2129 - Large Tattered Shoulderpads, 2125 - Large Tattered Skullcap, 2133 - Large Tattered Wristbands, 9016 - Large Buckler
		quest::summonitem(quest::ChooseRandom(2130, 2132, 2127, 2126, 2129, 2125, 2133, 9016));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp("500");
		#:: Create a hash for storing cash - 100 to 200cp
		my %cash = plugin::RandomCash(100,200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(261, 10);	#:: + Green Blood Knights
		quest::faction(228, 5);		#:: + Clurg
		quest::faction(312, -1);	#:: - Storm Guard
		quest::faction(308, -1);	#:: - Shadowknights of Night Keep
	}
	#:: Match two 13367 - Mystic Doll
	elsif (plugin::takeItems(13367 => 2)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("A shaman doll! A great knight you some day become. A gift I give to help you on your way. The fight you will continue. All hail the Greenbloods!");
			#:: Give a random reward: 17005 - Backpack, 2136 - Large Patchwork Boots, 2135 - Large Patchwork Pants, 2132 - Large Patchwork Sleeves, 2129 - Large Tattered Shoulderpads, 2133 - Large Tattered Wristbands, 15235 - Spell: Invisibility vs Undead
			quest::summonitem(quest::ChooseRandom(17005, 2136, 2135, 2132, 2129, 2133, 15235));
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp("500");
			#:: Create a hash for storing cash - 300 to 400cp
			my %cash = plugin::RandomCash(300,400);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Set factions
			quest::faction(261, 10);	#:: + Green Blood Knights
			quest::faction(228, 5);		#:: + Clurg
			quest::faction(312, -1);	#:: - Storm Guard
			quest::faction(308, -1);	#:: - Shadowknights of Night Keep
		}
		#:: Match if faction is Apprehensive or worse
		else {
			quest::say("Help Greenbloods you will. Give lizard tails to Grevak. Den maybe we trust.");
			#:: Give back the two 13367 - Mystic Doll
			quest::summonitem(13367);
			quest::summonitem(13367);
		}
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
