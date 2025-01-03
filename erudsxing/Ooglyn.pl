sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i)
		{
			quest::say("Ooooh, it you, $name. Me's been waitin for you cuz our frenz say you comin an need da test. So's I gib you da test. Hmm, now where me put it? Ooglyn been waiting for sign for so long dat me forget where me put test. Keep your eyes out for sign while me look for test. Oh, hey, $name, they gib you gem? I need dat gem, please, heheh.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1666 - Opaque Gem
		if(plugin::takeItems(1666 => 1))
		{
			quest::say("Ahhh, tank you, now me can...OH LOOK!! DA SIGN!!!! Oh, sorry you missed it. The sign show you where to wait for da test. Follow me...I like you so I take you there. We goin for a swim, $name!");
			quest::say("Ok shaman, let us be off.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(342, 50); 	#:: + Truespirit
			#:: Grant a small amount of experience
			quest::exp(1000);
			#:: Start Grid 57
			quest::start(57);
			#:: Create a timer 'Speak' that triggers every 105 seconds
			quest::settimer("Speak",105);
		}
	}
}

sub EVENT_TIMER {
	if ($timer eq "Speak") {
		quest::say("Ok, here is place for you to for waiting. Hab fun shaman!");
		#:: Stop the timer 'Speak'
		quest::stoptimer("Speak");
		#:: Create a timer 'Depart' that triggers every 120 seconds (2 min)
		quest::settimer("Depart",120);
	}
	elsif ($timer eq "Depart") {
		#:: Start Grid 58
		quest::start(58);
		#:: Stop the timer 'Depart'
		quest::stoptimer("Depart");
		#:: Create a timer 'OoglynDepop' that triggers every 241 seconds
		quest::settimer("OoglynDepop",241);
		#:: Create a timer 'SrafenSpawn' that triggers every 240 seconds (4 min)
		quest::settimer("SrafenSpawn",240);
	}
	elsif ($timer eq "SrafenSpawn") {
		#:: Spawn a Erud's Crossing >> Srafen_the_Soaked (98046), without grid or guild war, at the specified location
		quest::spawn2(98046,0,0,4209.4,-1575.5,-289.4,181);
		#:: Stop the timer 'SrafenSpawn'
		quest::stoptimer("SrafenSpawn");
	}
	elsif ($timer eq "OoglynDepop") {
		#:: Depop with spawn timer active
		quest::depop_withtimer();
		#:: Stop the timer 'OoglynDepop'
		quest::stoptimer("OoglynDepop");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}