sub EVENT_SPAWN {
	#set 20 mins before despawn
	quest::settimer("depop",12000);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Please, let me go. I shall leave the  [" . quest::saylink("Freeport Militia") . "]. I did not know they were such a vile group.");
		quest::stoptimer("depop");
		quest::settimer("cry",30);
	}
	if ($text=~/Freeport Militia/i) {
		quest::say("I thought they were nothing more than the local militia. Little did I know they were so vile. Now I am stuck [" . quest::saylink("here") . "] and I ask for your forgiveness.");
	}
	if ($text=~/here/i) {
		quest::say("I came here to escape the militia and ask [" . quest::saylink("Merko to forgive") . "] me.");
	}
	if ($text=~/Merko to forgive/i) {
		quest::say("I had a small encounter with his wife, my aunt. She was quite red after that altercation. I guess I upset her in a great way, somehow. Could you please go ask Merko to forgive Willia. I shall wait here for his answer..");
	}
}


sub EVENT_TIMER {
    #:: Catch the "depop" timer
    if ($timer eq "depop") {
        #:: Stop the timer "depop"
        quest::stoptimer("depop");
        #:: Depop with spawn timer active
        quest::depop_withtimer();
    }
	#:: Catch the "cry" timer
    if ($timer eq "cry") {
		quest::say("Please do not harm me!! I am a lady underneath this garb. I just wanted to join the [" . quest::saylink("Freeport Militia") . "] to help my people.. Please.. Please.. I am nobody. Marr have mercy. I give you the truth. Is that not what you stand for? Merko is my Uncle!!");
        #:: Stop the timer "cry"
        quest::stoptimer("cry");
        #:: Set 1 min before she runs and despawns
        quest::settimer("run",60);
    }
   #:: Catch the "run" timer
    if ($timer eq "run") {
		quest::say("Thank you, my friend. I shall mend my ways.. maybe.");
        #:: Stop the timer "run"
        quest::stoptimer("run");
        #:: Set 1 min before she runs and despawns
        quest::settimer("cry",60);
		#:: Start running
		quest::SetRunning(1);
		#:: Start pathing grid 14
		Quest::start(14)
    }		
}
sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
