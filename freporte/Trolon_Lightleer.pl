sub EVENT_SPAWN {
  #:: Set up a timer
  quest::set_timer("ready", 3000);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings!! I am Trolon Lightleer. Harmonizer of the soul. Please sit and order an ale. I shall be playing soon.");
	}
}

sub EVENT_TIMER {
    #:: Catch the "ready timer
    if ($timer eq "ready") {
	quest::say("What a cheerful crowd.");
	#:: Stop the timer "ready"
    quest::stoptimer("ready");
	}

}

sub EVENT_SIGNAL {
	#Signal From Henna Treghost
	#:: Create a scalar to store a random
		my $singasong = quest::ChooseRandom(1,2);
		#:: Match singasong = 1
		if ($singasong == 1){ 
            quest::say("Here's one for Sir Lucan... He's just a ruler. In a long line of rulers. Looking for a few more orcs to slay. They say that he fights them with one hand tied to his back. And he won't leave Freeport till you remember his name. Thank you.");
			}
        elsif ($singasong == 2){ 
            quest::say("Look around you. Stand up tall!! Feel for the poor and never have a cold heart. Becausee we are all in this. We are not like the rest. We're all here together and know we are the best. So Norrath, can't you see the error in your ways? You're living separated each and every day. Don't be thinking that we don't want you, because, Norrath, we do. Freeport is the only place where your friend can be from afar. I hope you enjoyed that one.");
			quest::signal(10199,1); #:: Send Signal to Sir Edwin Motte of East Freeport
			quest::signal(10182,3); #:: Send Signal to Talym Shoontar of East Freeport
		}	
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
