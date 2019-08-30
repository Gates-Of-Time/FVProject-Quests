sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What do you want?  Can't you see that I wish to be alone?!  I have no need nor desire to speak with anyone.  I have a minor dilemma to ponder and the only person I wish to speak with is the [" . quest::saylink("captain") . "].");
	}
	if ($text=~/captain/i) {
		quest::say("If you have to ask that. you should not be in this fine establishment.");
	}
	if ($text=~/danaria sent me/i) {
		quest::say("If you are working for Danaria, you have been misguided. You will go back to her empty handed. Now leave. The [" . quest::saylink("captain") . "] and I have some business to discuss.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13817 -  4x Capt. Orlin's Spiced Ale
	if (plugin::check_handin(\%itemcount, 13817 => 4)) {
		quest::say("Ahh.. I.. Need help.. You.. take this.. Go build.. boat beacon. Ask gnomes about.. boat beacon. They know how.. Then bring back.. Unnnhh!! Prexus help me!! I will never drink again.");
		$client->Message(15,"In his drunkedness, Palatos advises you to seek out Svinal Wyspin, a Gnome merchant in North Freeport.");
		#:: Give item 12145 - Beacon Mount
		quest::summonitem(12145);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(231,1); 		#:: + Craftkeepers
		quest::faction(266,1); 		#:: + High Council of Erudin
		quest::faction(267,1); 		#:: + High Guard of Erudin
		quest::faction(265,-1); 	#:: - Heretics
	}
	#:: Turn in for 13818 -  Boat Beacon
	if (plugin::check_handin(\%itemcount, 13818 => 4)) {
		quest::say("Thanks.. That saved me a lot of money. Now I can spend more time with the captain before I give this back to Lenka Stoutheart. Here is a little so...mething.");
		#:: Give a small amount of xp
		quest::exp(200);
		#:: Give a small amount of cash copper - plat
		quest::givecash(0,0,0,1);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(231,1); 		#:: + Craftkeepers
		quest::faction(266,1); 		#:: + High Council of Erudin
		quest::faction(267,1); 		#:: + High Guard of Erudin
		quest::faction(265,-1); 	#:: - Heretics		
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
