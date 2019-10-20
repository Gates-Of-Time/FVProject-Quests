sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to Brownloe Bakery. Please try our muffins. One taste and you will yearn for no other. Nothing compares to a Brownloe Muffin!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL { #::Receive Signal 1 from Pandos_Flintside of Freportw
if ($signal == 1) {
	quest::say("You are in luck! I have a fresh batch that just came out of the oven!");
	#:: Signal Pandos Flintside of Freportw
	quest::signalwith(9057, 1, 10);
	}	
	elsif ($signal == 2) {
	quest::say("Farewell, then. I will make sure to have them ready for you tomorrow!");
	#:: Signal Pandos Flintside of Freportw
	quest::signalwith(9057, 2, 10);
	}	
}
