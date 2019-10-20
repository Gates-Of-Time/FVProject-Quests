sub EVENT_SAY {
	if ($text=~/coffin/i) {
		quest::say("Greetings. I am Puab Closk, Master of the Ashen Order.  Our home is your home, friend. Feel free to stay as long as you like.  Learn our ways as many have done in the past.  To fight like the tiger and strike like the cobra are your goals.");
	}
	elsif($text=~/treant fists/i) {
		#:: Match if faction with Ashen Order is better than Amiable
		if ($faction < 5) {
		quest::say("You desire the treant fists?  I have them and I will offer them to any [" . quest::saylink("skilled monk of the Ashen House") . "].");
		}
	}
	elsif($text=~/Clawfist/i) {
		#:: Match if faction with Ashen Order is better than Amiable
		if ($faction < 5) {
		quest::say("Clawfist is a Kerran, a catman. He braved the dangers of Norrath to reach the Ashen Order. He sought knowledge of our disiples. He learned well.");
		}
	}
	elsif($text=~/where/i) {
		#:: Match if faction with Ashen Order is better than Amiable
		if ($faction < 5) {
		quest::say("Clawfist has been banished by the Kerrans of Odus. Where they have sent him I am unsure.");
		}
	}
	elsif($text=~/skilled monk of the Ashen House/i) {
		#:: Match if faction with Ashen Order is better than Amiable
		if ($faction < 5) {
		quest::say("Then you shall aid our family. My former pupil [" . quest::saylink("skilled monk of the Clawfist") . "] has been banished by his people. You will go to him and hand him this token as proof of your origin. He shall be expecting you.");
		#:: Give item 12369 - Puab's Token
		quest::summonitem(12369);
		}
	}
} 

sub EVENT_ITEM {
	#:: Turn in for 18746 - A Tattered Note
	if (plugin::takeItems(18746 => 1 )) {
		quest::say("Oh my! Opal? She is providing these agents of Neriak with information regarding the Acedemy's secrets. I can not tell Cain about this. He will be furious. Show this to Toala. She will know what to do.");
		#:: Ding!
		quest::ding();
		#:: Give item 13507 - Torn Cloth Tunic
		quest::summonitem(13507);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Set faction
		quest::faction(361,10); 		#:: + Ashen Order
		quest::faction(281,5); 			#:: + Knights of Truth
		quest::faction(309,5); 			#:: + Silent Fist Clan
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
