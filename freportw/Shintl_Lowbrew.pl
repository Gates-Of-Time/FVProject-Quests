sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail. mighty one! What are you doing in the city?  You should be out slaying beasts. There is nothing to find here in the city.");
	}
	elsif ($text=~/hollish/i) {
		quest::say("I have never heard of this Hollish character you speak of. You must be confusing me for someone else.");
	}
	elsif ($text=~/opal/i) {
		quest::say("Opal is just a friend I have here in Freeport. She works at the Academy of Arcane Science.");
	}
}

sub EVENT_WAYPOINT_ARRIVE{
#::: When NPC arrives at waypoint 1 spawn Hog Key #2 on the ground
	if ($wp == 1) {
		quest::creategroundobject(12147,-448,-107,-10.870,0,90000)
	}
	elsif ($wp == 7) {
		quest::say("Any mail for room number two?");
		#:: Signal Swin Blakeye of Freportw
		quest::signalwith(9103, 1, 1);
	}
}
