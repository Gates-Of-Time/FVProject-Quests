sub EVENT_ITEM {
	#:: Match a 12848 - Spectacle, a 12850 - Forsaken Pariah Mask, a 12851 - Evergreen Ivy Ringband, and a 12610 - Green Death Rum
	if (plugin::takeItems(12848 => 1, 12850 => 1, 12851 => 1, 12610 => 1)) {
		if ($ulevel >= 20) {
			quest::emote("takes your hand and guides it into his ribcage. You feel something odd. It is a metal key!!");
			#:: Give a 12849 - Metal Key
			quest::summonitem(12849);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			quest::say("You will have to be more skilled to complete that quest.");
			#:: Give a 12848 - Spectacle, a 12850 - Forsaken Pariah Mask, a 12851 - Evergreen Ivy Ringband, and a 12610 - Green Death Rum
			quest::summonitem(12848);
			quest::summonitem(12850);
			quest::summonitem(12851);
			quest::summonitem(12610);
		}
	}
	#:: Match a 12848 - Spectacle
	elsif (plugin::takeItems(12848 => 1)) {
		quest::emote("stops working and begins to open his creaking jaw. 'I live to study and quench my thirst. I live to Bash the Faces of Pariah and entangle myself in the ivy of evergreen. I live. I want to remember.'");
		#:: Give a 12848 - Spectacle
		quest::summonitem(12848);
	}
	#:: Match a 12850 - Forsaken Pariah Mask
	elsif (plugin::takeItems(12850 => 1)) {
		quest::emote("stops working and begins to open his creaking jaw. 'I live to study and quench my thirst. I live to Bash the Faces of Pariah and entangle myself in the ivy of evergreen. I live. I want to remember.'");
		#:: Give a 12850 - Forsaken Pariah Mask
		quest::summonitem(12850);
	}
	#:: Match a 12851 - Evergreen Ivy Ringband
	elsif (plugin::takeItems(12851 => 1)) {
		quest::emote("stops working and begins to open his creaking jaw. 'I live to study and quench my thirst. I live to Bash the Faces of Pariah and entangle myself in the ivy of evergreen. I live. I want to remember.'");
		#:: Give a 12851 - Evergreen Ivy Ringband
		quest::summonitem(12851);
	}
	#:: Match a 12610 - Green Death Rum
	elsif (plugin::takeItems(12610 => 1)) {
		quest::emote("stops working and begins to open his creaking jaw. 'I live to study and quench my thirst. I live to Bash the Faces of Pariah and entangle myself in the ivy of evergreen. I live. I want to remember.'");
		#:: Give a 12610 - Green Death Rum
		quest::summonitem(12610);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
