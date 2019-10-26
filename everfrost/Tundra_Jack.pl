sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good mining to you, kid! What are you doing way out here? You're gonna catch frostbite. The name's Tundra Jack, prospector supreme. Trained by the finest miners in Kaladim!! Me 'n [Iceberg] have been out here for three years now, searchin' fer fortune.");
	}
	if ($text=~/Iceberg/i) {
		quest::say("Iceberg used to be a beast.  He terrorized Halas for some time, then he met me.  I tamed the beast and now he watches my back.  You never know when the ice giants may go for a stroll from [Permafrost].");
	}
	if ($text=~/Permafrost/i) {
		quest::say("If I knew that, I would be swinging my picks inside it already!  The entrance is said to be somewhere out here in Everfrost Peaks.");
	}
	if ($text=~/sweaty shirt/i) {
		quest::say("Looking fer that blasted shirt, huh?  Well, as you can smell, I didn't get to washing it, but I wrapped it onto Iceberg's collar. I'd say you can have it, but Iceberg kind of likes it now.  The only way you're gonna be able to grab it from him is to feed him his [favorite meal].");
	}
	if ($text=~/favorite meal/i) {
		quest::say("Iceberg has some picky eating habits.  If he can't catch any goblins, he prefers [Lion Delight].  Lion Delight is his favorite.");
	}
	if ($text=~/Lion Delight/i) {
		quest::say("I usually get Lion Delight from Teria O'Danos in Halas.");
	}
}
	
sub EVENT_COMBAT {
	#:: Set a 'random' scalar value to choose which message to speak
	my $random = int(rand(2));
	#:: Use == for numeric comparison to the 'random' message of choice
	if ($random == 0) {
		quest::say("Let me show you how the dwarves taught me to use my mining picks!!");
	}
	if ($random == 1) {
		quest::say("Fer Halas!! One more victory fer the Wolves o' the North!!");
	}
}
	
sub EVENT_SIGNAL {
	#:: Sent from Iceberg
	if ($signal == 1) {
		quest::say("On my way, Iceberg!!");
		#:: Follow Everfrost Peaks >> Iceberg (30062)
		quest::follow(30062);
	}
	#:: Sent from Iceberg
	if ($signal == 2) {
		quest::say("Ha!!  Looks like old Iceberg likes you.  Either that or he's tasting you.");
	}
	#:: Sent from Iceberg
	if ($signal == 3) {
		#:: Stop following Iceberg
		quest::sfollow();
	}
}	

sub WAYPOINT_ARRIVE {
	if ($wp == 14 || $wp == 45) {
		quest::say("Come on, Iceberg! Time to do a little mining.");
	}
	if ($wp == 16 || $wp == 17 || $wp == 18 || $wp == 47 || $wp == 48) {
		quest::say("Silver and Gold!!.. Silver and Gold!!");
	}
	if ($wp == 19 || $wp == 49) {
		quest::say("Nothin'!!");
	}	
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS
