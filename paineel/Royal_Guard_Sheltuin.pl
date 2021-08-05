sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::emote("appears to be ignoring you completely.");
	}
	elsif ($text=~/i wish an audience with the overlord/i) {
		quest::say("The Overlord is not seeing anyone at this time, however. I may have work for you. You seem to have some experience with the kobold annoyance in the region. Are you [interested], $name?");
	}
	elsif ($text=~/interested/i) {
		quest::say("Then I shall give you a task. I assume you are aware of the kobold lair nearby. Many of our adventurous knights and priests crusade to destroy those pests so seeing many Erudites frequent the area is normal. However, it is not normal to see someone carry large crates into the lair and return empty handed. This person's movements also show he is attempting to remain unseen.....the [fool].");
	}
	elsif ($text=~/fool/i) {
		quest::say("Whoever it is, obviously is not an Erudite, even though he appears to be. Only an outsider would take us to be such idiots as to fall for their pitiful attempt at disguise. Or perhaps....well, never mind that. I want you to enter the kobold lair and find these crates. Return one to me and we'll decide what to do from there.");
	}
	elsif ($text=~/important task/i) {
		quest::say("According to the evidence we've uncovered, it appears the kobolds are nothing but pawns to harass us. Or perhaps even all of Odus. If they wish to play these games, then we'll humor them. We'll take their pawn with one of our knights. Will you be the knight, $name?");
	}
	elsif ($text=~/knight/i) {
		quest::say("Then you will deliver this chest for us. Don't worry about what's inside it. Although we enjoy our solitude, we do make allies. We also make use of those allies. We will do so now. Take the chest to Lyris Moonbane below the human city of Qeynos. You will then follow her instructions and complete any tasks she assigns you. In return, she will send you back with what we wish. Fear is our armor.");
		#:: Give a 1792 - Heavy Locked Chest
		quest::summonitem(1792);
	}
}

sub EVENT_ITEM {
	#:: Match a 1773 - Large Empty Crate
	if (plugin::takeItems(1773 => 1)) {
		quest::say("Hmmm. Very odd. The dust in the crate implies some sort of stone was transported in it. Perhaps our brothers of the Arcane will be able to find out where this dust came from and what it?s used for. Take this dust sample and note to Keletha Nightweaver. She will examine the dust and send you back with a report. Make haste.");
		#:: Ding!
		quest::ding();
		#:: Give a 1774 - Envelope with dust sample
		quest::summonitem(1774); 
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Match a 1775 - Heretic's Report
	elsif (plugin::takeItems(1775 => 1)) {
		quest::emote("'s eyes redden with intense anger after reading the report. When he speaks, his voice is suprisingly calm and measured.");
		quest::say("'Listen close $race. When you leave this building, you will find the courier who is bringing the ore. You will kill him, and collect his head and a box of the ore. You will then find the supplier, and collect his head and any other information you find on him. Bring me these four things and you will be rewarded. Do not fail.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Match a 1776 - Crate full of Ore, 1777 - Courier's Head, 1778 - Supplier's Head, 18174 - Sealed Letter
	elsif (plugin::takeItems(1776 => 1, 1777 => 1, 1778 => 1, 18174 => 1)) {
		quest::say("'Honestly $name, I thought you would not return. Such strength and intelligence in a Knight of Fear I have not seen for quite some time. Wear this in pride of the ancient Ridossan. Perhaps when you are ready, i will give you a more [important task]. This conspiracy must be stopped.'");
		#:: Ding!
		quest::ding();
		#:: Give a 1764 - Leggings of Ridossan
		quest::summonitem(1764);
		#:: Set factions (confirmed)
		quest::faction(265, 20);  		#:: + Heretics
		quest::faction(242, -20);  		#:: - Deepwater Knights
		quest::faction(254, -20); 		#:: - Gate Callers
		quest::faction(231, -20);  		#:: - Craftkeepers
		quest::faction(233, -20);  		#:: - Crimson Hands
		#:: Grant a large amount of experience
		quest::exp(137180);
	}
	#:: Match a 1892 - Empty Jar
	elsif (plugin::takeItems(1892 => 1)) {
		quest::say("Well done, $name! Now we need only wait for the kobolds to start dying off and our plan will be complete. Should only take 8 years or so. One such as yourself will wear this ancient armor well. The Tunic of the crusader Ridossan is now yours. He shall watch over and praise you in your triumphs... your defeats on the other hand... well, never mind that.");
		#:: Give a 1765 - Tunic of Ridossan
		quest::summonitem(1765);
		#:: Ding!
		quest::ding();
		#:: Set factions (confirmed)
		quest::faction(265, 40);  		#:: + Heretics
		quest::faction(242, -40);  		#:: - Deepwater Knights
		quest::faction(254, -40); 		#:: - Gate Callers
		quest::faction(231, -40);  		#:: - Craftkeepers
		quest::faction(233, -40);  		#:: - Crimson Hands
		#:: Grant a large amount of experience
		quest::exp(137180);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
