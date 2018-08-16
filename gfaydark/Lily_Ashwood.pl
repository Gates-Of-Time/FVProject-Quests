sub EVENT_SPAWN {
	#:: Set the proximity bounds around the NPC on spawn, 30 units across
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x-15,$x+15,$y-15,$y+15);
	quest::enable_proximity_say();
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. You wouldn't by chance happen to be a ranger, would you?'");
	}
	if ($text=~/i am a ranger/i) {
		quest::say("I sure love a strong ranger. Especially Ganelorn Oast. He's so dreamy and handsome. I think one day he's going to ask me to marry him.");
		#:: Send a signal to The Greater Faydark >> Devin_Ashwood (54085)
		quest::signalwith(54085, 1, 3)
	}
}

sub EVENT_PROXIMITY_SAY {
	if ($text=~/I will take him the letter/i) {
		quest::emote("smiles sweetly.");
		quest::say("Thank you sooo much.");
		#:: Give a 20876 - Love Letter (Sealed)
		quest::summonitem(20876);
	}
}

sub EVENT_SIGNAL {
	#:: Signal sent from gfaydark/Devin_Ashwood.pl
	if ($signal == 1) {
		quest::emote("sulks");
	}
	if ($signal == 2) {
		quest::say("Oh! If you're going to see him, would you please take this letter to him? I trust you, since you're a ranger and all.");
	}
}
