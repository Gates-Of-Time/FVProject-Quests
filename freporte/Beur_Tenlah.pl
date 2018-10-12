sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Heya. $name!  I've been on watch duty all night.  Kinda makes a man thirsty. ya know?  Why don't you be a good little scamp and run up to the bar and get me a [" . quest::saylink("dwarven ale") . "]?  That sure would hit the spot right about now.");
	}
	if ($text=~/dwarven ale/i) {
		quest::emote("Ahhh..  Dwarven ale is the best.  You gotta hand it to those stinky little dirt diggers. they know how to make a good brew.  Now if they could just learn to shower. huh. Harkin? Ha ha ha!");
	}
}

sub EVENT_SIGNAL {
	#::  Signal from Harking Duskfoot in freporte
	if ($signal == 1) {
		quest::say("Heh, I got something that reminds you of home.. My armpit! Bwa haha!!!.");
}

sub EVENT_ITEM {
	#:: Turn in for 13036 -  Dwarven Ale
	if (plugin::check_handin(\%itemcount, 13036 => 1)) {
		quest::say("Well, well, well.. It's about time. Whatta ya got, boots fulla stones? Or maybe yer just part turtle? Bah, anyways, thanks for the ale. Maybe I'll buy you one sometime, eh? Bwahaha!");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Send a signal to Harkin Duskfoot in Freporte
		quest::signal(10107,1,0);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
