sub EVENT_TIMER {
	#:: Match timer "return"
	if ($timer eq "return") {
		quest::stoptimer("checkloc");
		quest::stoptimer("return");
		$npc->MoveTo($npc->GetSpawnPointX(), $npc->GetSpawnPointY(), $npc->GetSpawnPointZ(), $npc->GetSpawnPointH());
	}
	#:: Match timer "checkloc"
	elsif ($timer eq "checkloc") {
		#:: Library
		if (($x == -771) && ($y == 1210)) {
			#:: Create a timer "return" that loops every 1 second
			quest::settimer("return", 1);
		}
		#:: Abbey
		elsif (($x == -606) && ($y == 1207)) {
			quest::settimer("return", 1);
		}
		#:: Forge
		elsif (($x == -739) && ($y == 1239)) {
			quest::settimer("return", 1);
		}
		#:: Gemchopper
		elsif (($x == -471) && ($y == 957)) {
			quest::settimer("return", 1);
		}
		#:: Palace
		elsif (($x == -365) && ($y == 902)) {
			quest::settimer("return", 1);
		}
		#:: Great Wheel
		elsif (($x == -544) && ($y == 1420)) {
			quest::settimer("return", 1);
		}
		#:: Exit
		elsif (($x == -35) && ($y == 5)) {
			quest::settimer("return", 1);
		}
		#:: Works
		elsif (($x == 151) && ($y == 717)) {
			quest::settimer("return", 1);
		}
	}	
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, lost soul. I am a guide, automaton, series G. I can assist you by leading you to all the important destinations in Ak'Anon. All you need to do is ask 'where' and state a valid destination. ..Bzzz.. Click!");
	}
	elsif (($text=~/library/i) || ($text=~/wizard/i) || ($text=~/enchanter/i) || ($text=~/magician/i)) {
		$npc->MoveTo(-771, 1210, -25.50, 341);
		quest::say("The Library of Mechanimagica is the home of the Eldritch Collective, the practitioners of all positive circles of magic. The Eldritch Collective's members are the chief designers of all of Ak'Anon's wondrous machines. Enjoy your visit.");
		#:: Create a timer "checkloc" that loops every 1 second
		quest::settimer("checkloc", 1);
	}
	elsif (($text=~/abbey of deep musing/i) || ($text=~/cleric/i) || ($text=~/priest/i)) {
		$npc->MoveTo(-541, 1404, -39, 507);
		quest::say("The Abbey of Deep Musing serves as a shrine to both Brell Serillis and Fizzlethorpe Bristlebane. It is here that one can find healing, if desired. Enjoy your visit.");
		quest::settimer("checkloc", 1);
	}
	elsif ($text=~/forge/i) {
		$npc->MoveTo(-739, 1239, -25.5, 164);
		quest::say("Welcome to the Forge of Defiance. Within these walls, the finest armor in all of Norrath is shaped. Prices are reasonable and the smiths are friendly. Spend wisely!");
		quest::settimer("checkloc", 1);
	}
	elsif (($text=~/gemchopper hall/i) || ($text=~/warrior/i) || ($text=~/fighter/i)) {
		$npc->MoveTo(-471, 957, -28.50, 241);
		quest::say("Gemchopper Hall is the headquarters of the Gemchoppers, the warriors of Ak'Anon. All clockworks and Watchmen operations are directed by the great Gemchopper guild masters. Have a grand visit!");
		quest::settimer("checkloc", 1);
	}
	elsif ($text=~/zoo/i) {
		$npc->MoveTo(-845, 1299, -29.50, 126);
		quest::say("Click.. The Grand Zoo of Ak'Anon is home to some of the rarest creatures in Norrath. Inside you will find the likes of minotaurs, tigers and bears, among others. Please do not feed the animals. City Code, Section 3465.");
		quest::settimer("checkloc", 1);
	}
	elsif (($text=~/palace/i) || ($text=~/king/i)) {
		$npc->MoveTo(-365, 902, -7.50, 127);
		quest::say("Click! Whirr.. Ak'Anon Palace is home to the throne of his majesty, King Ak'Anon. All visitors to the palace must first report to Receptionist VI. Click. The palace can be found to the right of the forward structure. Have a pleasant visit.");
		quest::settimer("checkloc", 1);
	}
	elsif ($text=~/great wheel/i) {
		$npc->MoveTo(-544, 1420, -78.94, 0);
		quest::say("The Great Wheel is located down the path and through the tunnel to the right. The Great Wheel provides ninety-eight percent of the energy employed in Ak'Anon. It was designed by King Ak'Anon himself. Watch your step.");
		quest::settimer("checkloc", 1);
	}
	elsif ($text=~/exit/i) {
		$npc->MoveTo(-35, 5, 2.5, 509);
		quest::say("Click... The Steamfont Mountains may be accessed through the tunnel.  Please come back.");
		quest::settimer("checkloc", 1);
	}
	elsif ($text=~/works/i) {
		$npc->MoveTo(151, 717, -25.5, 0);
		quest::say("Click! The Works is the main supplier of all essentials for venturing into the wilds of the Steamfont Mountains and beyond... Spend wisely.");
		quest::settimer("checkloc", 1);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_AGGRO {
	quest::say("Click... Tick... City violation. Code 5150. This unit is authorized to execute punishment. Please stand still. Thank you.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Bzzzz... Click... This unit is terminally damaged. Destruction of city property is a violation of city code 22468. All units shall be notified of your offense...");
	#:: Spawn a Ak'Anon >> Clockwork_MM (55164) at the current coordinates
	quest::spawn2(55164, 0, 0, $x, $y, $z, $h+256);
}
