sub EVENT_SPAWN {
	#:: Create a proximity, 30 units across, 30 units tall, and enable proximity say
	quest::set_proximity($x - 15, $x + 15, $y - 15, $y + 15, $z - 15, $z + 15, 1);
	#:: Also, enable proximity say
	quest::enable_proximity_say();
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. You wouldn't by chance happen to be a [ranger], would you?'");
	}
	elsif ($text=~/ranger/i) {
		#:: "Ganelorn Oast" is matched by gfaydark/Devin_Ashwood.pl
		quest::say("I sure love a strong ranger. Especially [Ganelorn Oast]. He's so dreamy and handsome. I think one day he's going to ask me to marry him.");
		#:: Send a signal '1' to The Greater Faydark >> Devin_Ashwood (54085) after a three second delay
		quest::signalwith(54085, 1, 3)
	}
}

sub EVENT_PROXIMITY_SAY {
	if ($text=~/letter/i) {
		quest::emote("smiles sweetly.");
		quest::say("Thank you sooo much.");
		#:: Give a 20876 - Love Letter (Sealed)
		quest::summonitem(20876);
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from gfaydark/Devin_Ashwood.pl
	if ($signal == 1) {
		quest::emote("sulks");
	}
	#:: Match a signal '2' from gfaydark/Devin_Ashwood.pl
	elsif ($signal == 2) {
		quest::say("Oh! If you're going to see him, would you please take this  [letter] to him? I trust you, since you're a ranger and all.");
	}
}
