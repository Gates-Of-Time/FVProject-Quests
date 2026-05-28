sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::emote("eyes you malevolently.");
			quest::say("I seek those who practice the dark magicks. I seek those who call themselves necromancers. Are you what I seek?");
		}
		elsif ($text =~ /i am a necromancer/i) {
			quest::say("Excellent. Are you sure enough of your skills to undertake my tasks? If not, get out of my sight weakling!");
		}
		elsif ($text =~ /undertake your tasks/i) {
			quest::say("I thought so. I have several tasks for you accomplish. Once you have completed them I will have a cap, a robe, sleeves, wristbands, gloves, leggings and boots to reward you with.");
		}
		elsif ($text =~ /cap/i) {
			quest::say("For you to receive my gift, I shall require three crushed flame opals and a tattered silk turban.");
		}
		elsif ($text =~ /robe/i) {
			quest::say("This exquisite robe shall be yours in exchange for a tattered silk robe and three pristine emeralds.");
		}
		elsif ($text =~ /sleeves/i) {
			quest::say("For these durable sleeves, you must fetch me a pair of tattered silk sleeves and three flawed topaz.");
		}
		elsif ($text =~ /wristband/i) {
			quest::say("The crafting of this wristband requires that you bring me a tattered silk wristband and three crushed onyx sapphires.");
		}
		elsif ($text =~ /glove/i) {
			quest::say("For this fine pair of gloves you must seek out and return to me a pair of tattered silk gloves and three crushed topaz.");
		}
		elsif ($text =~ /leggings/i) {
			quest::say("This pair of leggings will be yours provided you supply me with a pair of tattered silk pantaloons and three nephrite.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("These supple boots shall be yours upon receipt of a pair of tattered silk boots and three crushed jaundice gems.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25837 - Crushed Flame Opal, and a 24982 - Tattered Silk Turban
		if (plugin::takeItems(25837 => 3, 24982 => 1)) {
			#:: Give a 31161 - Rotting Crown
			quest::summonitem(31161);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25807 - Pristine Emerald, and a 24977 - Tattered Silk Robe
		elsif (plugin::takeItems(25807 => 3, 24977 => 1)) {
			#:: Give a 31162 - Rotting Robe
			quest::summonitem(31162);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25818 - Flawed Topaz, and a 24979 - Tattered Silk Sleeves
		elsif (plugin::takeItems(25818 => 3, 24979 => 1)) {
			#:: Give a 31163 - Rotting Sleeves
			quest::summonitem(31163);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25841 - Crushed Onyx Sapphire, and a 24981 - Tattered Silk Wristband
		elsif (plugin::takeItems(25841 => 3, 24981 => 1)) {
			#:: Give a 31164 - Rotting Wristguard
			quest::summonitem(31164);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25832 - Crushed Topaz, and a 24983 - Tattered Silk Gloves
		elsif (plugin::takeItems(25832 => 3, 24983 => 1)) {
			#:: Give a 31165 - Rotting Gloves
			quest::summonitem(31165);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25816 - Nephrite, and a 24978 - Tattered Silk Pantaloons
		elsif (plugin::takeItems(25816 => 3, 24978 => 1)) {
			#:: Give a 31166 - Rotting Trousers
			quest::summonitem(31166);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25829 - Crushed Jaundice Gem, and a 24980 - Tattered Silk Boots
		elsif (plugin::takeItems(25829 => 3, 24980 => 1)) {
			#:: Give a 31167 - Rotting Boots
			quest::summonitem(31167);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		else {
			quest::say("I can do nothing with these items, $name.");
		}
	}
	else {
		quest::say("I do not know you well enough to entrust such an item to you, yet.");
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}


