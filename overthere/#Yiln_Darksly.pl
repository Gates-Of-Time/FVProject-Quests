sub EVENT_SAY { 
	if($text=~/Hail/i){
		quest::emote("looks up at you and tries to talk, but instead coughs up a large amount of water. He is soaking wet and covered in sand.");
		quest::say("Those damned [trolls]! They stole everything and destroyed my ship! The [House] will have my head over this!");
		quest::emote("coughs violently.");
	}	
	elsif ($text=~/house/i) {
		quest::say("I work for a trading house run by a group of nobles in Neriak. They are not known for being too forgiving when their [valuables] are lost.");
	}	
	elsif ($text=~/valuables/i) {
		quest::say("We were hauling many things. The one thing in particular that I am worried about was a trunk full of tomes. I do not know what they were about exactly, but my masters explicitly told me not to let them leave my sight.' Yiln coughs. 'I have got to find those tomes!' Yiln tries to move but yells out in excruciating pain. I cannot get up. You must go to Paineel and find [Jerith]. Tell him I sent you and tell him about Osaftars. You will be rewarded well for your time. If you recover the books bring them back to me.");
	}	
	elsif ($text=~/jerith/i) {
		quest::say("Jerith works for me. He sells many of the items that I acquire in my travels. He also is familiar with many of the pirates that sail the seas attacking merchant ships. He should hopefully know what to do.");
	}
}

sub EVENT_ITEM {  
	#:: Match a 12950 - Trunk of Missing Tomes
	if (plugin::takeItems(55001 => 1) {
    	quest::emote("looks a bit better now, having cleaned most of the sand from his body and drying off a bit.");
		quest::say("I hope you made those pirate scum pay with their lives! When I get back to Neriak, I assure you that my first priority will be planning my revenge. You're lucky, this item washed up on shore from the wreckage of my ship. You can have it. Farewell.");
		#:: Give a 55025 - Glowing Fluorite Stone Necklace
		quest::summonitem(55025);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(236, 30);	#:: + Dark Bargainers better
		quest::faction(370, 30);	#:: + Dreadguard Inner better
		quest::faction(334, 30); 	#:: + Dreadguard Outer better
		#:: Grant a large amount of experience
		quest::exp(243890);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}