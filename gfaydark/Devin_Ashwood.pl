sub EVENT_SPAWN {
	#:: Create a proximity, 30 units across, 30 units tall, and enable proximity say
	quest::set_proximity($x - 15, $x + 15, $y - 15, $y + 15, $z - 15, $z + 15, 1);
	#:: Also, enable proximity say
	quest::enable_proximity_say();
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Good day to you, $name!  I am Devin Ashwood.  Pleased to make your acquaintance."); 
	}
}

sub EVENT_PROXIMITY_SAY {
	if ($text=~/ganelorn oast/i) {
		quest::say("Ganelorn Oast! For he has single-handedly caught more poachers than any other ranger. He is credited for helping numerous endangered species recover from certain extinction. I suppose I am lucky he is fond of my sister, as I am soon to train under him as an apprentice. Perhaps one day I will even [call upon the flames] in the way that he does.");
	}
	elsif ($text=~/call upon the flames/i) {
		quest::say("Aye, Ganelorn is renowned not only for his abilities as an archer and a master of melee combat, but also for his use of powerful magics. Never before have I seen a forester evoke a fireball of such great force. It would be any ranger's dream to become his pupil just to study that one spell. Ganelorn doesn't train just anyone, though. If you want to learn from him, I'm certain you would have to prove yourself as a forester.");
	}
	elsif ($text=~/i want to learn/i) {
		quest::say("He is a very busy individual. I believe he is currently in the eastern part of the Karanas trying to track down a poacher. Even if you can track him down, don't get your hopes up.");
		#:: Send a signal '2' to The Greater Faydark >> Lily_Ashwood (54086) after a three second delay
		quest::signalwith(54086, 2, 3);
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from gfaydark/Lily_Ashwood.pl
	if ($signal == 1) {
		quest::say("Bah! Why would the greatest forester in all of Norrath ask you to marry him? Between his time spent protecting wildlife, hunting poachers and training me, I doubt he has any spare time for a foolish girl like you, sister.");
		#:: Send a signal '1' to The Greater Faydark >> Lily_Ashwood (54086) after a three second delay
		quest::signalwith(54086, 1, 3)
	}
}
