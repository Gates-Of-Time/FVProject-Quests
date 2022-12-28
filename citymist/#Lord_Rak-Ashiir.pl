sub EVENT_ITEM {
	#:: Match a 1673 - Child's Tear
	if (plugin::takeItems(1673 => 1)) {
		#:: Match if faction is Ally
		if ($faction == 1) {
			quest::emote("looks down at the tear in his hand and says 'A minion of my god came to me one night. I knew it was of Cazic-Thule as I was frozen in terror. My mind screamed for me to flee but my body would not respond. The being took my daughter and vanished to only he knew where. When I regained control of my body and thoughts, I felt nothing but betrayal. I don't care anymore about anything. If you want repentance then slay me, $name.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(404, 100);		#:: + Truespirit
			#:: Spawn a City of Mist >> #Lord_Rak`Ashiir_  (90183), without grid or guild war, at the current location
			quest::spawn2(90183, 0, 0, $x, $y, $z, 0);
			#:: Depop without spawn timer
			quest::depop();
		}
	}
	else {
		quest::say("Go away! We don't have time for the likes of you.");
		#:: Return a 1673 - Child's Tear
		quest::summonitem(1673);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
