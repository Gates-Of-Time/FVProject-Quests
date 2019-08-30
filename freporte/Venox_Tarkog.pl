sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the shrine of the Dismal Rage.  May [" . quest::saylink("Innoruuk") . "] guide your every move in life.  Here. we will teach you to release your rage unto the world.  My priests are at your disposal.");
	}
	if ($text=~/Innoruuk/i) {
		quest::say("You do not even know the name of the Prince of Hate! That is a crime in here. Our god Innoruuk speaks with Pietro Zarn himself. It was Innoruuk who told him to create the Dismal Rage. You should speak with our family. Perhaps someone will help you better understand our beliefs.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18774 -  A tattered note
	if (plugin::check_handin(\%itemcount, 18774 => 1)) {
		quest::say("Here we find a new follower.. Here we find a tunic of the Dismal Rage. Put the two together and let the hate grow. Let it be known from now on that your soul belongs to the Prince of Hate, Innoruuk. It is his power which flows within you. Destroy all those who oppose us. Please introduce your hate to the others in this shrine.");
		#:: Give item 13561 - Faded Crimson Tunic
		quest::summonitem(13561);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(271,100); 	#:: + Dismal Rage
		quest::faction(281,-15); 	#:: - Knights of Truth
		quest::faction(296,20); 	#:: + Opal Dark Briar
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
