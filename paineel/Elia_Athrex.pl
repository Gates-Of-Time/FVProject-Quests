#:: Create a scalar variable to store a state
my $FlavorTrigger;

sub EVENT_SPAWN {
	#:: Create a proximity 500 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 250, $x + 250, $y - 250, $y + 250, $z - 50, $z + 50, 0);
	#:: Set the state to false
	$FlavorTrigger = 0;
}

sub EVENT_ENTER {
	#:: Match if the flavor text has not been triggered
	if ($FlavorTrigger == 0) {
		#:: Create a timer 'mangler_client_check' that triggers every 60 seconds (1 min)
		quest::settimer("elia_client_check", 60);
		#:: Create a timer 'mangler' that triggers every 720 seconds (12 min)
		quest::settimer("elia", 720);
		#:: Set the flavor text trigger state to true
		$FlavorTrigger = 1;
		quest::say("The cold of souls and stench of death!  Always, here, do I find it...");
	}

}

sub EVENT_TIMER {
	#:: Match timer 'elia_client_check'
	if ($timer eq "elia_client_check") {
		#:: Pull a list of clients from the entity list
		my @ClientList = $entity_list->GetClientList();
		#:: Match if the ClientList array is empty
		if (scalar @ClientList == 0) {
			#:: Set the flavor text trigger state to false
			$FlavorTrigger = 0;
			#:: Stop the timer 'elia'
			quest::stoptimer("elia");
		}
		else {
			#:: Set the flavor text trigger state to true
			$FlavorTrigger = 1;
		}
	}
	#:: Match timer 'elia'
	elsif ($timer eq "eliz") {
		#:: Match if the flavor trigger state is set to true
		if ($FlavorTrigger == 1) {
			quest::say("The cold of souls and stench of death!  Always, here, do I find it...");
		}
		else {
			#:: Stop the timer 'elia'
			quest::stoptimer("elia");
		}
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello.  Do you need something or did you merely wish to grace me with your oh-so-delightfully perfumed breath?");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
