sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Correct. Toxdil is my name. No last name. I swear allegiance to no house nor guild. What brings you down here? Perhaps you seek my [" . quest::saylink("deadly liquid") . "], perhaps not. Whatever your reasons, I warn you to keep an eye out for the militia. They have begun to patrol the sewers.");
	}
	if ($class == rogue) {
		if ($text=~/deadly liquid/i) {
			quest::say("The deadly liquid I offer to rogues is called spider venom. I will be glad to make it for you, but first you must supply me with two snake venom sacs and my fee of 20 gold pieces. You may find the sacs upon the giant snakes of the Commonlands.");
			} 
			else {
				quest::say("Correct. Toxdil is my name. No last name. I swear allegiance to no house nor guild. What brings you down here? Perhaps you seek my [" . quest::saylink("deadly liquid") . "], perhaps not. Whatever your reasons, I warn you to keep an eye out for the militia. They have begun to patrol the sewers.");
			}
		if ($text=~/gem of righteousness/i) {
			quest::say("That gem is worthless!! If you want it, you can have it. Oh, but I forgot! I sold it to some gem merchant. I can't seem to remember her name, but she paid highly for it. Ha!! Imagine that. Worthless hunk of crystal. Do not bother looking for it.");
			} 
			else {
				quest::say("Correct. Toxdil is my name. No last name. I swear allegiance to no house nor guild. What brings you down here? Perhaps you seek my [" . quest::saylink("deadly liquid") . "], perhaps not. Whatever your reasons, I warn you to keep an eye out for the militia. They have begun to patrol the sewers.");
			}
	}		
} 

sub EVENT_ITEM {
	#:: Turn in for 12353 - A Sparkling Sapphire
	if (plugin::takeItems(12353 => 1 )) {
		quest::say("The gem!! I would notice it's sparkle anywhere!! I cannot believe you are handing it back to me!! What a fool. Here you are fool. You can have this worthless key now.");
		#:: Give item 12351 - A Tiny Key
		quest::summonitem(12351);
		#:: Give xp
		quest::exp(15000);
		#:: Ding!
		quest::ding();
	}
	#:: Turn in for 12353 - 20 gold and 2 Snake venom sacs
	if (plugin::takeItemsCoin(0,0,20,0, 14017 => 2)) {
		quest::say("Here is your snake venom. May you... shall we say... apply it to good use.");
		#:: Give item 14016 - Snake venom
		quest::summonitem(14016);
		#:: Give xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
