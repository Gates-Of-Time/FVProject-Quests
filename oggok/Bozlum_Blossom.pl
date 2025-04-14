sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("heaves a great sigh.");
	}
	elsif ($text=~/wrong/i) {
		quest::say("Boz like to grow perty flowers in her garden. But garden no more.");
	}
	elsif ($text=~/garden/i) {
		quest::say("Boz not know what happen. Only see der biggins footprints in it. Me perty sure my puppy not smash garden. He has tiny feets. Right, puppy?");
		#:: Send a signal '1' to the indicated npc_type id without delay
		quest::signalwith(49022, 1, 0);		#:: Bozlum_Blossom_pet
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 10628 - Large Muddy Sandals
		if (plugin::takeItems(10628 => 1)) {
			quest::emote("writes something down on a piece of parchment.");
			quest::say("You go tell dat Brokk dat he owe me big for smushing garden. Make him read dis.");
			#:: Give a 10629 - Scribbled Parchment
			quest::summonitem(10629);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 10630 - Gift to Bozlum
		elsif (plugin::takeItems(10630 => 1)) {
			quest::say("'Oh, dat silly Brokk. He sent me too many of these perty flowers. Me not know where put them all. Here, you take some cause you help Bozlum. Me like you. Flowers make you smell perty, too.");
			#:: Give a 10609 - Snow Blossoms
			quest::summonitem(10609);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(100);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
