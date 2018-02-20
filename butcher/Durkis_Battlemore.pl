sub EVENT_SAY {	
#:: Gem Inlaid Gauntlets Quest 
	#Hail Response Unknown - made up
	if ($text=~/hail/i) {
		quest::say("Howdy, $name.  What can I do fer ya?");
	}
}
#:: Turn in for Gem Inlaid Gauntlets Quest
sub EVENT_ITEM {
	#:: Turn in for 8910 -  A Note to Battlemore
	if (plugin::check_handin(\%itemcount, 18770 => 1)) {
		quest::say("What have ye got there, lad? Ack. I thought I would never hear from that crazy old man again. He wants me to give you a pair o' me gauntlets. I suppose I kin do that. Here you are, Southern. Wear them in good health");
		#:: Give item 8909 - Gem Inlaid Gauntlets
		quest::summonitem(8909);
		#:: Give XP
		quest::exp(16000);
		#:: Ding!
		quest::ding();
	}
	plugin::return_items(\%itemcount);
}
