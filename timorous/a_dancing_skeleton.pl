my $Counter;

sub EVENT_SIGNAL {
	#:: Match a signal '5' from /timorous/The_Great_Oowamp.pl
	if ($signal == 5) {
		quest::emote("begins to dance with a loud clatter. A cloud of dust is created. Teedle dee. Teedle doo.");
		#:: Set a timer 'Dialogue' that triggers every eight seconds
		quest::settimer("Dialogue", 8);
		#:: Reset the counter
		$Counter = 0;
	}
}

sub EVENT_TIMER {
	if ($timer eq "Dialogue") {
		if ($Counter == 0) {
			quest::say("A dancing skeleton am I.");
			quest::doanim(58);
			$Counter++;
		}
		elsif ($Counter == 1) {
			quest::say("Dancing for you and dancing for me.");
			quest::doanim(45);
			$Counter++;
		}
		elsif ($Counter == 2) {
			quest::say("Dancing for the great Oowomp!! Wheee!!");
			quest::doanim(58);
			$Counter++;
		}
		elsif ($Counter == 3) {
			quest::say("Dancing and singing is my life!!");
			quest::doanim(45);
			$Counter++;
		}
		elsif ($Counter == 4) {
			quest::doanim(16);
			$Counter++;
		}
		else {
			quest::stoptimer("Dialogue");
			quest::depop();
		}
	}
}

sub EVENT_SAY {
	if ($text=~/gomoz/i) {
		quest::say("Gomoz!! Why, that is me! I was heading off to be with the elements when I was captured by this smelly ogre. Actually, he is not as smelly as most.");
	}
	elsif ($text=~/talon southpaw/i) {
		quest::say("Master Talon Southpaw!! He was my master. Dead, he became. Off to the elements. I keep his special hand with me. Perhaps I should have it returned. Maybe I shall find a young adventurer to [return the hand to Cabilis].");
	}
	elsif ($text=~/return the hand to cabilis/i) {
		quest::say("Yes!! Return the hand. Here it is. Missing four it is. Within the tower of past pain and torture is where the four lie. Taken by bones similar to myself.");
		#:: Give a 17037 - Hand With Only a Thumb
		quest::summonitem(17037);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
