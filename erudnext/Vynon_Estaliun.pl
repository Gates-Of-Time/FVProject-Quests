sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I welcome you to the temple of the Peacekeepers. The ways of peace and tranquility are ours to uphold. May you find a place among us. We have much work to do. If you are a paladin of this temple. you must [desire to face fear].");
	}
	if ($text=~/desire to face fear/i) {
		quest::say("Very well. You shall face it. In Toxxulia Forest. you shall seek out Kerra Ridge. Once found. you will bring me the tail of a catfisher. Somehow. you shall find a way. They are weak. but they only work near the opposite side of the bridge. along the water's edge.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13884 -  Fishy Cat Tail
	if (plugin::check_handin(\%itemcount, 13884 => 1)) {
		quest::say("Good work. I knew you could do it. Take this as reward.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Give item 13053 - Brass Ring
		quest::summonitem(13053);
		#:: Set faction
		quest::faction(298,10);	 	#:: + Peace Keepers
		quest::faction(266,5); 		#:: + High Council of Erudin
		quest::faction(265,-10); 	#:: - Heretics
	}
	plugin::return_items(\%itemcount);
}
