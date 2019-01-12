sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh. hi.  Listen. um.. $name. was it?  Listen. pal.  I really don't have time for the friendly-friendly. so why don't you just move on?");
	}
	if ($text=~/new dishwasher/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("Dishwasher, huh?  You must not mind getting your feet wet then, huh?  Well, I do have a job for you.  It seems one of our younger employees got a little nevous around a Deputy and ditched his um..  recent purchase into the river.  We sent the fool after it but ol' [" . quest::saylink("Chomper") . "] got him.  He said he had dropped it off the docks but the currents might have moved it from there.  It should be in an old pouch.  Return the merchandise to me.  Well?  Get going!");
		}
		#:: Match if faction is indifferent
		elsif ($faction == 5) {
			quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("Oh. hi.  Listen. um.. $name. was it?  Listen. pal.  I really don't have time for the friendly-friendly. so why don't you just move on?");
		}
	}
	if ($text=~/Chomper/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("Chomper is a big, mean ol' fish.  He looks like a normal fish, but a little bigger, and boy, oh boy, is he mean!");
		}
		#:: Match if faction is indifferent
		elsif ($faction == 5) {
			quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("Oh. hi.  Listen. um.. $name. was it?  Listen. pal.  I really don't have time for the friendly-friendly. so why don't you just move on?");
		}
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13785 - Torn Old Pouch
	if (plugin::takeItems(13785 => 1 )) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {		
			quest::say("What is this?  The pouch is empty!  Where is the Ruby?!  What do you mean you don't have it?  Oh no.  I bet [" . quest::saylink("Chomper") . "] swallowed it!  Get it back and bring it to me.");
			#:: Give a small amount of xp
			quest::exp(1500);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(77, 5);		#:: + Deeppockets
			quest::faction(33, 5);		#:: + Circle of Unseen Hands
			quest::faction(218,-5);		#:: - Merchants of Rivervale
			quest::faction(31, 5);		#:: + Carson McCabe
			quest::faction(48, 5);		#:: + Coalition of Tradefolk Underground
			#:: Create a hash for storing cash - 900 to 2000cp
			my %cash = plugin::RandomCash(900,2000);
				#:: Grant a random cash reward
				quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("Oh. hi.  Listen. um.. $name. was it?  Listen. pal.  I really don't have time for the friendly-friendly. so why don't you just move on?");
		}
	}
	#:: Turn in for 13786 - Large Ruby
	if (plugin::takeItems(13786 => 1 )) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {		
			quest::say("You found it!  Heh.  Good thing you brought it back bub.  This thing isn't priceless, its worthless but at least you proved you are loyal.  Poor ol' Chomper..");
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(77, 10);		#:: + Deeppockets
			quest::faction(33, 10);		#:: + Circle of Unseen Hands
			quest::faction(218,-10);		#:: - Merchants of Rivervale
			quest::faction(31, 10);		#:: + Carson McCabe
			quest::faction(48, 10);		#:: + Coalition of Tradefolk Underground
			#:: Create a hash for storing cash - 900 to 2000cp
			my %cash = plugin::RandomCash(1800,4000);
				#:: Grant a random cash reward
				quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		#:: Match if faction is worse than indifferent
		elsif ($faction > 5) {
			quest::say("Oh. hi.  Listen. um.. $name. was it?  Listen. pal.  I really don't have time for the friendly-friendly. so why don't you just move on?");
		}
	}	
	#:: Return unused items
	plugin::returnUnusedItems();
}
