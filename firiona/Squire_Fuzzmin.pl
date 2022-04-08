sub EVENT_SIGNAL {
	#:: Match a signal from /firiona/Sir_Hobble.pl
	quest::follow($signal);
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::emote("awakens from a quick shuteye. 'Yawn.. Oh!! Hello. Don't mind the rusty old tin can. Sir Hobble is on a [quest] of sorts. I tell you, I would leave if he did not pay such good wages to carry his equipment.'");
	}
	elsif ($text=~/quest/i) {
		quest::say("Sir Hobble is searching for [three special dragons]. For all I know they are not even dragons. He can't see or hear very well. He still thinks I am the only troll squire around.");
	}
	elsif ($text=~/three special dragons/i) {
		quest::say("Apparently he is after three dragons which are supposedly named Azdalin, Gylton, and Xyfl. He will not rest until he holds their scales. I wish you could [find the dragons].");
	}
	elsif ($text=~/find the dragons/i) {
		quest::say("If you bring me the three scales I will be able to place them upon the next three victims of Sir Hobble. Then we can part from this accursed isle. He would never know the difference. Do this and I will give you a warrior weapon out of the old knight's armory.");
	}
}

sub EVENT_ITEM {  
	#:: Match a 12950 - Dragon Scales (Azdalin), a 12951 - Dragon Scales (Gylton), and a 12952 - Dragon Scales (Xyfyl)
	if (plugin::takeItems(12950 => 1, 12951 => 1, 12952 => 1)) {
		quest::doanim(20);
		quest::emote("tumbles around and stands on his hands. With his feet, he pulls a long polearm from a nearby weapons cache. 'Woohoo!! I can taste the brew in Freeport already. Here you are, my friend. A real Wurmslayer!!'");
		#:: Give a 5057 - Wurmslayer
		quest::summonitem(5057);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);			#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);			#:: + Emerald Warriors
		quest::faction(312, 3);			#:: + Storm Guard
		quest::faction(441, -1);		#:: - Legion of Cabilis
		quest::Faction(313, -1);		#:: - Pirates Of Gunthak
		#:: Grant a large amount of experience
		quest::exp(7000);
	}
	#:: Match a 12950 - Dragon Scales (Azdalin)
	elsif (plugin::takeItems(12950 => 1)) {
		quest::say("I need the three dragon scales of Azdalin, Gylton and Xyfyl.");
		#:: Give a 12950 - Dragon Scales (Azdalin)
		quest::summonitem(12950);
	}
	#:: Match a 12951 - Dragon Scales (Gylton)
	elsif (plugin::takeItems(12951 => 1)) {
		quest::say("I need the three dragon scales of Azdalin, Gylton and Xyfyl.");
		#:: Give a 12951 - Dragon Scales (Gylton)
		quest::summonitem(12951);
	}
	#:: Match a 12952 - Dragon Scales (Xyfyl)
	elsif (plugin::takeItems(12952 => 1)) {
		quest::say("I need the three dragon scales of Azdalin, Gylton and Xyfyl.");
		#:: Give a 12952 - Dragon Scales (Xyfyl)
		quest::summonitem(12952);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
