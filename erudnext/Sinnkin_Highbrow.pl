sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Why. hello there fellow scholar!  Don't you just love books?  I am quite a bookworm myself.  I could read forever!  I am currently working my way through the 'T's.");
	}
	if ($text=~/erud's tonic/i) {
		quest::say("Erud's Tonic! That is none of your concern!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13121 -  Innoruuk's Kiss of Death
	if (plugin::check_handin(\%itemcount, 13121 => 1)) {
		quest::say("It's about time you figured it out, genius! Maybe you should spend more time in the library. Here, take this tonic and get out of here before they see me giving it to you and turn us both inside out.");
		#:: Give item 13118 - Erud's Tonic
		quest::summonitem(13118);
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(380,1); 	#:: + Erudite Citizen
	}
	plugin::return_items(\%itemcount);
}
