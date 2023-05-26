sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good day, I have discovered something truly wonderful! If I only had the materials required so I can copy my notes and send them to my teacher.");
	} elsif ($text=~/discover/i) {
		quest::say("I was researching a new spell, and discovered new information concerning the history of the Serpent.");
	} elsif ($text=~/materials/i) {
		quest::say("The materials I need are a mechanical pen, ink of the dark, and white paper. Bring me those and I will give you a copy of this information.");
	} elsif ($text=~/teacher/i) {
		quest::say("My teacher is Jeb Lumsed. He was last seen in the regions of the newly discovered lands of Kunark. If you wish to find him that is where you must seek him out.");
	} elsif ($text=~/ink of the dark/i) {
		quest::say("Dark illusions, thievery, and the plague of the living will guide you. These are the only hints I can provide. Safe travels and may you be protected from all maladies.");
	} elsif ($text=~/mechanical pen/i) {
		quest::say("The answer you seek is in your question. If you are unable to figure it out, then perhaps you are not ready to travel along this path.");
	} elsif ($text=~/white paper/i) {
		quest::say("It may seem like ordinary paper at first. However, this paper was enchanted by a friend of mine. This paper was given to a lass in the Karanas to help with her writings. The paper will guide her hands and draw forth the thoughts in her mind. I no longer have any and I have not had contact with my friend in some time. Search them out.");
	}
}

sub EVENT_ITEM {
	#:: Match a 10600 - Mechanical Pen, 10601 - Ink of the Dark, and 10602 - White Paper
	if (plugin::takeItems(10600 => 1, 10601 => 1, 10602 => 1)) {
		quest::say("Yes, that is what I wanted. Here, take these notes. My teacher will be very interested if he is shown what I have found.");
		#:: Ding!
		quest::ding();
		quest::faction(404, 10, 0); # Faction: +10 Truespirit
		#:: Give a 10603 - Copy of Notes
		quest::summonitem(10603);
		#:: Give 50,000 experience
		quest::exp(50000);
	#:: Match a 54008 - Dimly Glowing Ring, and a 54007 - Note to Stofo
	} elsif(plugin::takeItems(54008 => 1, 54007 => 1)) {
		quest::emote("scans the note quickly and gasps. Hardly glancing at you, he begins examining the ring, tearing through notes and books scattered about his dark room. As he pores over a scroll of parchment covered in strange texts his eyes light up, 'Yes, yes this is it! Ofala really found something quite remarkable in this one! Watch my friend.' The slim Erudite slips the ring onto his finger and the gem begins to throb, Stofo seems to draw the power into himself for a moment then carefully places the ring back onto his desk. He closes his eyes a moment then turns to you, the darkness in his eyes almost lends fear for a moment before he smiles. 'Thank you my friend, this stone is very dangerous, but I believe that I have accessed the powers within me through it. Take these words and use them well, perhaps the power shall work for you as well, and please tell my dear sister hello.'");
		#:: Ding!
		quest::ding();
		#:: Give a 59016 - Spell: Scryer's Trespass
		quest::summonitem(59016);
		#:: Give a large amount of experience (1,750,000)
		quest::exp(1750000);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}