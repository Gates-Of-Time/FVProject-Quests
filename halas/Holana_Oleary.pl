sub EVENT_SAY {
     if ($text=~/hail/i) {
        quest::say("Hmph. Hello. how are ye an' how do ye do? Now, what are ye planning to buy?");
     }
	 if ($text=~/assist/i) {
	 if ($faction <= 4) {
        quest::say("So, ye're the next to be tested, then, eh?! I pray ye're able to return. Ye'll need to take this note to Einhorst in Clan McMannus' fishing village in the Plains o' Karana. He'll hand ye the monthly Karana clover shipment to be returned to me. Just remember, dinnae stop running! Do ye [" . quest::saylink("need directions to Clan McMannus") . "]?");
		quest::summonitem(18831); # Tattered Note identifying as Message to Clan McMannus
     }
	 if ($text=~/need directions to Clan McMannus/i) {
        quest::say("Ye go through Everfrost Peaks and run through Blackburrow. Once in Qeynos Hills, ye'll head to yer left and follow the pathway to the Plains of Karana. In the plains, when the pathway splits, go to yer right. Then just head toward the horizon.");
		}
     }
	}
	sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13962 => 1)) { # Karana Clover Shipment
	if ($faction <= 4) {
		quest::Say("Good work. We Shamans o' Justice are like no other. We must remain in top physical form for we never know when justice must be served. I was commanded to give ye a reward. Take this. It was doing nothing more than collecting dust. Go, and serve justice well.");
		quest::SummonItem::ChooseRandom(15270,15275,15075,15271,15279,15212,15079,15274,15272,2031,2036,2030,2034,2027,2038,2026,2029,2025,2032,2028,2033,2912,5043,6032,6030,7022,7024,94155,6031,2912); # Drowsy, Frost Rift, Sicken, Fleeting fury, Spirit o' the Bear, Cure Blindness, Spirit Sight, Scale Skin, Spirit Pouch, Complete Set of Large Leather Items, tarnished weapon, Polar Bear Cloak
		#:: Set Factions
		quest::faction(33,-1); 		# Circle of Unseen Hands  
		quest::faction(213,1);		# Merchants of Halas 
		quest::faction(294,10);		# Shamen of Justice
		quest::faction(48,-1);		# Coalition of Tradefolk Underground 
		quest::faction(90,-2);		# Ebon Mask
		quest::faction(311,1);		# Steel Warriors
		quest::faction(361,1);		# Wolves of the North
		quest::Ding();
		quest::exp(1600);
        #:: Create a hash for storing cash - 600 to 1100 cp
        my %cash = plugin::RandomCash(600,1100);
        #:: Grant a random cash reward
        quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		}	
		#:: Return unused items
	plugin::return_items(\%itemcount);
}
# Converted to Perl by SS 
