sub EVENT_SPAWN {
	#:: Set a timer that loops every 900 seconds (15 min)
	quest::settimer("despawn", 900);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest:say("Hello there!");
	}
	elsif ($text=~/come back to the closet/i) {
		quest::say("Darn!! I was just starting to have fun. Tell you what. You find me a nice Ogre Butcher Apron and I will gladly go back to my cramped quarters.");
	}
}

sub EVENT_TIMER {
	#:: Match the timer "despawn"
	if ($timer eq "despawn") {
		#:: Stop the timer from looping over and over
		quest::stoptimer("despawn")
		#:: Depop
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Match a 12217 - Ogre Butcher Apron
	if (plugin::takeItems(12217 => 1) {
		quest::say("Thanks!! Now I'm a real butcher just like Carver Cagrek!! Ok, before you take me back, we need to find my friend The Captain. Last I heard, he was boating around the swamp. Ask the guards outside if they have [seen the captain].");
		#:: Give a 12214 - The Butcher
		quest::summonitem(12214);
		#:: Ding!
		quest::ding();
		#:: Stop the timer from looping over and over
		quest::stoptimer("despawn")
		#:: Depop
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
