sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Are not the woods of the Faydarks a lovely sight? Tunare has truly blessed us. It is unfortunate that the orcs of [Crushbone Citadel] have chosen to invade our lands.");
	}
	if ($text=~/crushbone citadel/i) {
		quest::say("Within the Greater Faydarks can be found the entrance to Crushbone Citadel, home of the orcs. They have increased their raids on our lands. We do not know why. The High Elder of Kelethin has instructed us to keep tabs on the orcs' movements. Hmmm.. How would you like to [assist the scouts]?");
	}
	if ($text=~/assist the scouts/i) {
		quest::say("We trust this operation to high standing rogues of the Scouts of Tunare. Easy it may be, but the reward is a scout cape. The scout cape is meant for Scouts of Tunare only. Have you [contributed] to the Scouts' cause?");
	}
	if ($text=~/contributed/i) {
		quest::say("So we have heard. Here, then. Take this coin. Venture into Crushbone and find our scout, Kelynn. He is posing as a slave to gain information. He tries to work very close to an opening in a cave near the moats. Find this point and wait for him to appear. Give him the coin and he shall give you the information you are to return to me.");
		#:: Give a 12184 - Useless Token
		quest::summonitem(12184);
	}
}

sub EVENT_ITEM {
	#:: Match a 12183 - Crushbone Information
	if (plugin::takeItems(12183 => 1)) {
		quest::say("Fine work. We are very grateful. Take this Scout Cape. May you use it to serve Kelethin.");
		#:: Give a 2914 - Scouts Cape
		quest::summonitem(2914);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(5000);
		#:: Set faction
		quest::faction(316,10);		#:: + Tunare's Scouts
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
