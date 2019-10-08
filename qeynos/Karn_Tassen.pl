sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello $name! Welcome to our humble little bakery. We just got a fresh shipment of supplies in, have a look around!");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from South Qeynos >> Danaria_Hollin (1066)
	if ($signal == 1) {
		quest::say("Ooh yeah! So would I, honey.");
		#:: Send a signal "1" to South Qeynos >> Danaria_Hollin (1066) with no delay
		quest::signalwith(1066, 1, 0);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
