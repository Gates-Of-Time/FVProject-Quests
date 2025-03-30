sub EVENT_SPAWN {
  	quest::settimer(1,2700);
}

sub EVENT_TIMER {
  	quest::emote("seems oblivious to the outside world. He stares into the water, chuckling every so often, as he drops in some sort of pebble that hisses for a moment on impact. His robes seem faded, tattered, and caked in dirt. A slight green shimmer surrounds his body.");
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 20695 - Warm Pulsing Treant Heart
		if (plugin::takeItems(20695 => 1)) {
			quest::emote("grabs the heart as you toss it to him before realizing what it is. As soon as it touches his hands, his body convulses, a sickly light emanating from his eyes and oozing cracks appear in his skin. As he melts into the ground, a small glowing ball floats where he once stood.");
			#:: Give a 20698 - Cleansed Spirit of Antonica
			quest::summonitem(20698);
			#:: Ding!
			quest::ding();
			#:: Depop with spawn timer
			quest::depop_withtimer();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}