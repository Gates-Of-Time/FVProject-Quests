sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("What's a kid like you doing in a dangerous place like this?  Shouldn't you be at home having bread, cakes and milk?"); 
	}
	elsif ($text=~/lizardtown/i) {
		quest::say("Just like it sounds. A town full of those lizardmen called Iksar. I thought they were extinct along with raptors, the Combine Empire, and cheap booze.");
	}
	elsif ($text=~/blue beast/i) {
		quest::emote("throws his mug out the nearby window. 'Blasted Gunthak Pirates! We rammed into one of their sloops at night. Took me two days to repair the damage! Would have seen them if we hadn't taken that shoddy boat beacon from that bum in Freeport.'");
		#:: Send a signal '1' to Firiona Vie >> Lenka_Stoutheart (84130) with a one second delay
		quest::signalwith(84130, 1, 1);
	}
	elsif ($text=~/cabby pale ale/i) {
		quest::emote("takes a bottle from his pack and shows you. 'This is Cabby Pale Ale. CPA for short or, as they say in lizardtown, Cabilis Pale Ale. I got it off a drunken dwarf. He said he bought it off a dark elf. Where he really got it, I am not sure.'");
		#:: Send a signal '3' to Firiona Vie >> Lenka_Stoutheart (84130) with a one second delay
		quest::signalwith(84130, 3, 1);
	}
	elsif ($text=~/lizardtown/i) {
		quest::say("Just like it sounds. A town full of those lizardmen called Iksar. I thought they were extinct along with raptors, the Combine Empire, and cheap booze.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /firiona/Lenka_Stoutheart.pl
	if ($signal == 1) {
		quest::emote("puts his head over your head as if measuring you. 'Heh!! Going to have to grow up before the General lets him out to play in Kunark!'");
		#:: Send a signal '2' to Firiona Vie >> Lenka_Stoutheart (84130) with a one second delay
		quest::signalwith(84130, 2, 1);
	}
	#:: Match a signal '2' from /firiona/Lenka_Stoutheart.pl
	elsif ($signal == 2) {
		quest::say("No way, Lenka! This place is too dangerous for this kid. Why don't you just stay here and drink it up with us? the Samson couldn't even brew bog juice right, but every once in a while a bashed-up explorer comes in carrying [Cabby Pale Ale].");
	}
}	

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
