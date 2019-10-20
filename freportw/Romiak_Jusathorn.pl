sub EVENT_ITEM {
	#:: Turn in for 18741 - A Tattered Note
	if (plugin::takeItems(18741 => 1 )) {
		quest::say("Greetings, I am Romiak Jusathorn, Master Enchanter of the Academy. Take this.. it's our guild robe; it will help protect you in this harsh environment. Now, let's get to work!");
		#:: Ding!
		quest::ding();
		#:: Give item 13560 - Old Violet Robe
		quest::summonitem(13560);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Set faction
		quest::faction(361,3);	 	#:: + Arcane Scientists
		quest::faction(281,3); 		#:: + Knights of Truth
		quest::faction(309,1); 		#:: + Silent Fist Clan
	}
	#:: Turn in for Blackened Wand ID-13237 - Blackened Sapphire ID-13238 - Orange Sash of Order ID-10132
	if (plugin::takeItems(132370 => 1, 13238 => 1, 10132 => 1)) {
		quest::say("$Name, Congratulations. With the destruction of these evil items, the wand of the Burning Dead will never bring harm to anyone on Norrath again. It is my honor to present to you, on behalf of Master Closk and the Ashen Order, the red sash. May Quellious be with you always.You have proven yourself a mighty warrior. I am honored to present you, $Name, with the orange Sash of Order.");
		#:: Ding!
		quest::ding();
		#:: Give item 10133 - Red Sash of Order
		quest::summonitem(10133);
		#:: Give a small amount of xp
		quest::exp(400);
		#:: Set faction
		quest::faction(220,100);	 	#:: + Ashen Order
		quest::faction(281,25); 		#:: + Knights of Truth
		quest::faction(296,-15); 		#:: - Opal Darkbriar
		quest::faction(330,-15); 		#:: - The Freeport Militia		
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
	
