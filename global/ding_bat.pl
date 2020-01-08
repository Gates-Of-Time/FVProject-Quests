sub EVENT_SPAWN {
	quest::settimer("follow",10);
	quest::say("Ding!");
}

sub EVENT_TIMER {
	if ($timer eq "follow") {
		my $OpponentID = 2161;
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID($OpponentID);
		my $follow_target = $getmobbynpctype->GetID();
		quest::follow($follow_target);
		quest::stoptimer("follow");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i){
		quest::ding();
		quest::say("Would you like to change your [level]?");
	}
	elsif ($text=~/level/i) {
		quest::say("What level would you like to be?  10, 15, 20, 25, 30, 35, 40, 45, or 50?");
	}
	elsif ($text=~/10/) {
		quest::level(10);
		quest::say("Ding!");
	}
	elsif ($text=~/15/) {
		quest::level(15);
		quest::say("Ding!");
	}
	elsif ($text=~/20/) {
		quest::level(20);
		quest::say("Ding!");
	}
	elsif ($text=~/25/) {
		quest::level(25);
		quest::say("Ding!");
	}
	elsif ($text=~/30/) {
		quest::level(30);
		quest::say("Ding!");
	}
	elsif ($text=~/35/) {
		quest::level(35);
		quest::say("Ding!");
	}
	elsif ($text=~/40/) {
		quest::level(40);
		quest::say("Ding!");
	}
	elsif ($text=~/45/) {
		quest::level(45);
		quest::say("Ding!");
	}
	elsif ($text=~/50/) {
		quest::level(50);
		quest::say("Ding!");
	}
}
