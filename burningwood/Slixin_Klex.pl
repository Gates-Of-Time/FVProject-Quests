#:: VP Key

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
			quest::say("So long ago... The burning of our land?");
		}
	}
	elsif ($text=~/burning/i) {
		if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
			quest::say("Fiery death from the sky. Rock and fire burning our lands. Death and destruction splintering our tribe. Once, strong we were, but the fiery rocks from the sky crushed our proud cities and weakened our tribe.");
		}
	}
	elsif ($text=~/tribe/i) {
		if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
			quest::say("Obulus was our people. The hills and trees were our lands. We tamed the dark and wilds and bent the forests to our needs. But all is gone, all our people, all our works, even the medallion that was the symbol of our power.");
		}
	}
	elsif ($text=~/medallion/i) {
		if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
			quest::say("Medallion of the Obulus. Symbol of our proud people. Broken into pieces long lost to the dark forests now. I know where they are now but I am no longer flesh. If I were, I would find them and bring them back together.");
		}
	}
	elsif ($text=~/pieces/i) {
		if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
			quest::say("Hhhhh. Three pieces there are. One sits in the hands of Sselot though he knows its purpose not. Another sits upon an iksar ghost in Trakanons. The last is held by a long rotted iksar skeleton in the Dreadlands. Bring them all here and I may be able to unite them again. Perhaps this will even free me from my torment... or not.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {	
		#:: Match a 19956 - Piece of a medallion (Bottom shard of the Obulus Medallion), a 19957 - Piece of a medallion (Middle shard of the Obulus Medallion), and a 19958 - Piece of a medallion (Top shard of the Obulus Medallion)
		if (plugin::takeItems(19956 => 1, 19957 => 1, 19958 => 1)) {
			quest::say("Ssssss. I thought I would never see these. I never thought the symbol of our people would be made whole again. I feel no rest for my sssoul though. My torment still flows as freely as when my peoples first suffered fiery death. I need this not. It is useless to me. Here, you take it. Maybe you can find some good to do with it.");
			#:: Give a 19953 - Medallion of the Obulus
			quest::summonitem(19953);
			#:: Ding!
			quest::ding();
			#:: Grant a moderate amount of experience
			quest::exp(1000);
		}
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}