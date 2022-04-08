sub EVENT_SAY {
	if ($text=~/news of the charasis tome/i) {
		quest::say("The Charasis Tome has been scribed and now another copy exists. The traitor obviously wants to keep a copy for himself. I am told you will deliver both copies to Lord Qyzar along with your zealot khukri and you shall be awarded that of a crusader. Let us rest for a minute and then I shall show you the meeting place.");
		#:: Start pathing grid 215
		quest::start(215);
		$npc->SetAppearance(1); 
		quest::say("Come along. If we get separated, look for the humanoid wolf camp and beyond the tunnel, you shall find the meeting place of the spider riders and the traitor.");
		#:: Create a timer 'Talk1' that triggers every 180 seconds (3 min)
		quest::settimer("Talk1", 180);
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal from /firiona/a_drachnid_spy.pl
	if ($signal == 1) {
		#:: Spawn a Firiona Vie >> #Hero_Goxnok (84401)
		quest::spawn2(84401, 0, 0, $x, $y, $z, $h);
		quest::depop();
	}
}

sub EVENT_TIMER {
	if ($timer eq "Talk1") {
		quest::emote("stops abruptly and shudders with fear. 'Look!! There, past the wolf people. Near an ancient tunnel can be found the meeting place. I fear we may be too late. I thought I saw a shadow dash from the tunnels, but I did not see any spider riders. We'll see when we reach it.'");
		quest::stoptimer("Talk1");
		#:: Create a timer 'Talk2' that triggers every 30 seconds
		quest::settimer("Talk2", 30);
	}
	elsif ($timer eq "Talk2") {
		quest::emote("looks over at you and sizes you up before continuing on. He says, 'We should continue, follow me.'");
		quest::stoptimer("Talk2");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
