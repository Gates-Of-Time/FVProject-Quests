sub EVENT_SPAWN {
	#:: Create a timer 'ready' that loops every 30 seconds
	quest::set_timer("ready", 30);
}

sub EVENT_TIMER {
	#:: Match timer 'ready'
	if ($timer eq "ready") {
		quest::say("What a cheerful crowd.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good day to you! Sit and have a drink. I shall be playing soon enough.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /freporte/Henna_Treghost.pl
	if ($signal == 1) {
		#:: Create a scalar to store a random number
		my $singasong = quest::ChooseRandom(1, 2, 3);
		#:: Match singasong = 1
		if ($singasong == 1) {
			quest::say("Look around you. Stand up tall!! Feel for the poor and never have a cold heart. Becausee we are all in this. We are not like the rest. We're all here together and know we are the best. So Norrath, can't you see the error in your ways? You're living separated each and every day. Don't be thinking that we don't want you, because, Norrath, we do. Freeport is the only place where your friend can be from afar. I hope you enjoyed that one.");
			#:: Send a signal '1' to East Freeport >> Sir_Edwin_Motte (10199) with no delay
			quest::signalwith(10199, 1, 0);
			#:: Send a signal '1' to East Freeport >> Talym_Shoontar (10182) with a 3 second delay
			quest::signalwith(10182, 1, 3);
		}
		#:: Match singasong = 2
		elsif ($singasong == 2) {
			quest::say("Within my head and inside my brain, I hold the key. It is not much more than the size of a pea. With it, I have the power to set free Oggok city. Open up its doors to all that is pretty. Instead, here I am in a pile of my own dung, smelling quite dingy. Drinking ogre swill with which I am stingy. I may have the key, but the point is quite moot. For you see, I am nothing more than a dumb, smelly, ogre brute. Thank you. I hope you enjoyed that one.");
			#:: Send a signal '1' to East Freeport >> Imxil_Tbrow (10012) with no delay
			quest::signalwith(10012, 1, 0);
		}
		#:: Match singasong = 3
		elsif ($singasong == 3) {
			quest::say("All clap and pass the ale. Sir Lucan is in charge so don't set sail. All clap and pass the ale. Sir Lucan is in charge and he shall never fail. He saved our fair city when the others had fled. Off on a crusade, or so they said. All clap and pass the ale, Sir Lucan is in charge so don't you bail. All clap and pass the ale, Sir Lucan is in charge so sing or go to jail. All clap and pass the ale, Sir Lucan beat the orcs and next is Bayle. Thank you. I hope the Freeport citizens liked that one.");
			#:: Send a signal '1' to East Freeport >> Sir_Edwin_Motte (10199) with no delay
			quest::signalwith(10199, 1, 0);
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
