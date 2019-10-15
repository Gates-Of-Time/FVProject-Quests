sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh look.. another gnoll pup. This bar is too rough for the likes of you. Why don't you try Fish's. We don't need any more regulars here, chump!");
	}
	elsif ($text=~/mira sayer's tax/i) {
		#:: Data bucket to verify quest has been started appropriately
		$key = $client->CharacterID() . "-tax-collection";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Ha! Yeah, I took their tax money. What are you going to do about it, little gnoll pup? Tell you what.. I will cut you a deal. You tell me you are a [gnoll loving weakling who isn't fit to comb my feet] and I will give you that merchant's tax money.");
		}
	}
	elsif ($text=~/i am a gnoll loving weakling who isn't fit to comb my feet/i) {
		#:: Data bucket to verify quest has been started appropriately
		$key = $client->CharacterID() . "-tax-collection";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("BWAH! HA HA HA! Did you all hear that?! $name is a gnoll loving weakling who isn't fit to comb my feet! BWAH HA HA! MY FEET! HA HA HA! Oh.. too rich.. Heh.. HA HA HA! Oh.. Heh heh heh");
			#:: Give a 13174 - Sayer's Tax Payment
			quest::summonitem(13174);
			#:: Set faction
			quest::faction(291,-1);		#:: - Merchants of Qeynos
			#:: Send a signal "4" to North Qeynos >> Crow (2063) with no delay
			quest::signalwith(2063, 4, 0);
			#:: Send a signal "6" to North Qeynos >> Sabnie_Blagard (2083) with no delay
			quest::signalwith(2083, 6, 0);
		}
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from qeynos2/Moodoro_Finharn.pl
	if ($signal == 1) {
		quest::say("HA! You Erudites never could handle your liquor. Go feed the fish.");
		#:: Send a signal "1" to North Qeynos >> Moodoro_Finharn (2040) with no delay
		quest::signalwith(2040, 1, 0);
	}
}
	
sub EVENT_ITEM {
	#:: Match a 13122 - Erud's Tonic
	if (plugin::takeItems(13122 => 1)) {
		quest::say("Well, now... That's cutting out the middle man. Thanks, chum! Now, beat it!");
		#:: Give a 13123 - Label of Erud's Tonic
		quest::summonitem(13123);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, -20);		#:: - Circle Of Unseen Hands
		quest::faction(291, 3);			#:: + Merchants of Qeynos
		quest::faction(230, -3);		#:: - Corrupt Qeynos Guards
		quest::faction(262, 3);			#:: + Guards of Qeynos
		quest::faction(273, -2);		#:: - Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
