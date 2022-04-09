sub EVENT_SPAWN {
	#:: Create a timer 'sit' that triggers every 10 seconds
	quest::settimer("sit", 10);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("If you were sent to me, show proof or be gone from my sight!");
	}
}

sub EVENT_TIMER {
	#:: Match timer 'Depop'
	if ($timer eq "Depop") {
		quest::stoptimer("Depop");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	elsif ($timer eq "sit") {
		#:: Appearance 1 - sit
		$npc->SetAppearance(1);
		quest::stoptimer("sit");
	}
}

sub EVENT_ITEM {
	#:: Match a 3892 - Bottle of Liquid Deklium
	if (plugin::takeItems(3892 => 1)) {
		quest::say("If Heirophant Oxyn has sent this with you, I can assume that our visions were corect. The new age is calling us from the heavens. Prepare for battle. I will take this solution to the Outlander's gates and use it to reveal the location of the metal of prophecy. Should I not return, you will only need to find the creature that glows without the use of a torch. Deklium glows when it gets near the smallest trace of tynnomium. Prepare for battle, Crusader... I am off!");
		quest::stoptimer("sit");
		#:: Start pathing grid 273
		quest::start(273);
		#:: Create a timer 'Depop' that triggers every 8 seconds
		quest::settimer("Depop", 8);
		#:: Spawn a The Overthere >> a_glowing_cliff_golem (93190) without grid or guild war, at the specified coordinates
		quest::spawn2(93190, 0, 0, 1955, 2825, -49, 380);
		#:: Spawn three The Overthere >> #an_undead_marine (93303) without grid or guild war, at the specified coordinates
		quest::spawn2(93303, 0, 0, 1955, 2794, -49, 380); # NPC: #an_undead_marine
		quest::spawn2(93303, 0, 0, 1954, 2855, -49, 380); # NPC: #an_undead_marine
		quest::spawn2(93303, 0, 0, 1915, 2825, -49, 380); # NPC: #an_undead_marine
		#:: Send a signal '1' to The Overthere >> a_cliff_golem (93077) with no delay
		quest::signalwith(93077, 1, 0);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
