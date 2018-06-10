sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! Ye've come to [" . quest::saylink("serve Halas") . "] have ye not? We're the Wolves o' the North and it is our task to defend our city from harm.");
		}
	if ($text=~/serve Halas/i) {
		quest::say("The Wolves o' the North show ye no ill will, but there's much ye must do to earn our trust. Perhaps ye should inquire o' the [" . quest::saylink("gnoll bounty") . "].");
		}
	if ($text=~/gnoll bounty/i) {		
		quest::say("I've placed a bounty on the gnolls o' Blackburrow. Their whelps have invaded our land and we must carry the fight into their dens. Join the fight and return three gnoll fangs as proof of yer victory in Blackburrow. Do so, and earn the respect o' the Wolves o' the North.");
		}
	if ($text=~/orc troopers/i) {
		quest::say("So. Ye think yerself strong enough to battle the snow orc troopers?  I pray to the Tribunal that ye are.  If ye can return to me four wrath orc wristbands  from the troopers' bodies. I'll reward ye with the [" . quest::saylink("Seax") . "].");
		}
	if ($text=~/Seax/i) {
		quest::say("The Seax is a Northman warrior's piercing weapon.  Dinnae confuse this with another [weapon] related to the Seax called the Langseax.  The local rogues have also learned to master the Seax.  I'll only offer it to those who battle the [" . quest::saylink("orc troopers") . "].");
		}
	if ($text=~/ice goblins/i) {
		quest::say("The ice goblins have plagued our community fer some time now. At times, they even manage to get inside our walls. Fer the most part, they prey on travelers who pass through Everfrost Peaks. Since they're a weak race, we employ our youngest warriors to [" . quest::saylink("protect the pass") . "]."); 
		}
		if ($text=~/protect the pass/i) {
		quest::say("Then travel to the Everfrost Peaks and take this pack with ye. I want ye to return this pack to me when it is filled with the beaded ice necklaces o' the ice goblins. When it is filled, combine the items and return it to me and I'll decide whether ye deserve a reward fer yer deed."); 
		quest::SummonItem(17944); # Empty Bag (*Bag for Ice Necklaces) 
		}
	}	
	
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13915 => 3)) { # Gnoll Bounty - Return 3 Gnoll Fangs
		quest::Say("Fine work, fine work!  The gnoll threat must be extinguished before it can ever fully grow.  Ye've done yer part to aid our cause.  Please allow me to repay ye with a few provisions and a wee bit o' coin.  Then, continue with yer good deeds. Halas is surrounded by barren arctic tundra. We've many foes. Among them are the [" . quest::saylink("orc troopers") . "], [" . quest::saylink("ice goblins") . "] and the ever-present polar bears.");
		$GBreward = quest::ChooseRandom(13005, 13007, 13002, 13006); #Gnoll Bounty Random Loot, Iron ration, ration, torch, water flask
        quest::summonitem($GBreward);
		#:: Set Factions
		quest::faction(213,3); 		# Merchants of Halas
		quest::faction(361,15);		# Wolves of the North
		quest::faction(294,3);		# Shamen of Justice
		quest::faction(311,1);		# Steel Warriors
		quest::faction(275,-5);		# Rogues of the White Rose
		quest::Ding();
		quest::exp(200);
		quest::givecash(0,0,5,0);
		}
	if (plugin::check_handin(\%itemcount, 12223 => 4)) { # Wrath Orc Wristbands
		quest::Say("Well done! You've proved yerself worthy o' this!");
		quest::summonitem(7322); # Seax (Barbarian Seax)
		#:: Set Factions
		quest::faction(213,5); 		# Merchants of Halas
		quest::faction(361,20);		# Wolves of the North
		quest::faction(294,4);		# Shamen of Justice
		quest::faction(311,1);		# Steel Warriors
		quest::faction(275,-5);		# Rogues of the White Rose
		quest::Ding();
		quest::exp(800);
		quest::givecash(0,0,0,0);
		}
    if (plugin::check_handin(\%itemcount, 13898 => 1)) { # Bag of Ice Necklaces (*Bag of Goblin Beads)
		quest::Say("Ye've done well, me young $name.  We've gathered these to add to yer provisions.  While in the Everfrost Peaks, be on the watch fer any gnolls ye may find.  I declare there to be a [" . quest::saylink("gnoll bounty") . "].");
		$IGNreward = quest::ChooseRandom(13005, 13007, 13002, 13006, 13003); #Gnoll Bounty Random Loot, Iron ration, ration, torch, water flask, small lantern
        quest::summonitem($IGNrewardreward);
		#:: Set Factions
		quest::faction(213,2); 		# Merchants of Halas
		quest::faction(361,10);		# Wolves of the North
		quest::faction(294,2);		# Shamen of Justice
		quest::faction(311,1);		# Steel Warriors
		quest::faction(275,-5);		# Rogues of the White Rose
		quest::Ding();
		quest::exp(500);
		quest::givecash(0,0,4,0);
		}
		
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
