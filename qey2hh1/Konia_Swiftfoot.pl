sub EVENT_SAY { 
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/Hail/i) {
			quest::say("Hello there, $name.  I am hosting a relay running contest.  Would you like to participate?");
		}
		if ($text=~/i would like to participate/i) {
			quest::say("Great!  The prize will be this silly old music sheet.  Let me know when you are ready and I will pass you the torch and tell you where the next stop is.");
		}
		if ($text=~/ready/i) {
			quest::say("Here you go.  Run with this torch as fast as you can to the Misty Thicket and hand this torch off to Fajio Knejo.  He will tell you where to go from there.  Hurry!  You do not have much time!");
			#:: Give a 20532 - Torch of Misty
			quest::summonitem(20532);
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20379 - Proof of Speed
		if (plugin::takeItems(20379 => 1)) {
			quest::say("Excellent!  You are quite a runner.  Here is half of the sheet music.  I decided to keep the other half because it has this wonderful signature.  I think it might be quite valuable.  It is probably worth as much as an instrument the great Mahlin used.");
			#:: Give a 20376 - Maestro's Symphony Page 24 Top
			quest::summonitem(20376);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 20366 - 
		elsif (plugin::takeItems(20366 => 1)) {
			quest::say("Mahlin's bongos!  Here, take the other half of the sheet music.  I can't really make out what the signature was, anyway.");
			#:: Give a 20383 - Mahlin's Mystical Bongos
			quest::summonitem(20383);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

