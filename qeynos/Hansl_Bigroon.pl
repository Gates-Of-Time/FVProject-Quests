sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name! Are you a [" . quest::saylink("citizen of Qeynos") . "] or are you a [" . quest::saylink("traveler of sorts") . "]?");
	}
	if ($text=~/traveler of sorts/i) {
		quest::say("Ah, yes! Traveling can be truly dangerous. Have you ever been to [" . quest::saylink("Erudin") . "] or do you not care for that place?");
	}
	if ($text=~/Erudin/i) {
		quest::say("The trip to Erudin takes far too long. I have been designing a [" . quest::saylink("titanic bridge") . "] which will shorten the trip. Well, I cannot take full credit, most of the plans are being designed by [" . quest::saylink("three great engineers") . "].");
	}
	if ($text=~/citizen of Qeynos/i) {
		quest::say("Then you are aware of how few ships come and go to the continent of Erudin. The port authority is even planning to tax all passage aboard the ships. You will be happy to know that a few other engineers and I are designing a [" . quest::saylink("titanic bridge") . "].");
	}
	if ($text=~/titanic bridge/i) {
		quest::say("My grand plan has always been to erect a bridge which would span the distance between Qeynos and Odus. It would bypass the city of Erudin. Antonius Bayle would take full control of the bridge and its adjacent territories. This has had some opposition in Erudin, but for the most part, they just believe it is impossible to build such a bridge.");
	}
	if ($text=~/three great engineers/i) {
		quest::say("They are some of the finest engineers in all of Norrath. Young, they may be, but as smart as the wisest architects I have ever met. That reminds me.. I must have a list of the engineers somewhere.. [" . quest::saylink("Where is it") . "]?");
	}
	if ($text=~/Where is it/i) {
		quest::say("Do not concern yourself with the list. It is of no concern to you. I do not even have it. It is tucked away safely at home.");
	}
	if ($text=~/dontation/i) {
		quest::say("I would be pleased to help out such a noble organization. Here you are, my good friend. See you at weekly services!");
		#:: Give item 13290 - A Donation (*Donation 1)
		quest::summonitem(13290);
	}
}

sub EVENT_WAYPOINT_DEPART{
	#:: Establishes NPC Location
	$x = $npc->GetX();
	$y = $npc->GetY();
	if ($wp == 0) {
        quest::emote("drops something as he walks away. He doesn't seems to notice.");
		#:: Sets up a 10 unit distance
		quest::set_proximity($x - 10, $x + 10, $y - 10, $y + 10);
		  
     }
     elsif ($wp == 13) {
        quest::clear_proximity
        #:: Stop the timer "repeat"
		quest::stoptimer("repeat");
     }
	  elsif ($wp == 36) {
        quest::emote("picks up a discarded item from the ground and says 'Don't people have enough respect for our grand city to not throw things onto the streets?!'");
        #:: Set the timer "repeat"
		quest::settimer("repeat", 320000);
     }
}

sub EVENT_ENTER {
  	$client->Message(15,"A note on the ground catches your eye.");
	#:: Pick Up A Sealed List
	quest::summonitem(18835);
	quest::clear_proximity
  }
  

sub EVENT_TIMER {
	quest::emote("picks up a discarded item from the ground and says 'Don't people have enough respect for our grand city to not throw things onto the streets?!'");
}
	
