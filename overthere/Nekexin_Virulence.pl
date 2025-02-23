sub EVENT_SPAWN {
	#:: Create a timer '1' that triggers in 1800 seconds (30 min)
  	quest::settimer(1,1800);
}

sub EVENT_TIMER {
  	quest::emote("chuckles to himself as he notices blades of grass disintegrate beneath his feet. He stares out over the water as if watching for some sign.");
}

sub EVENT_SAY {
	if($text=~/corruption/i) {
		quest::emote("grins wide at you. 'Corruption? I know nothing of corruption.' He goes back to staring out over the water.");
	}
}

sub EVENT_ITEM {
	#:: Match a 20696 - Froglok Essence, a 20686 - Green Tree Bark, a 20685 - Pure Lakewater and a 20687 - Pod of Seawater
	if(plugin::takeItems(20696 => 1, 20686 => 1, 20685 => 1, 20687 => 1)){
		quest::emote("stares at the swirling bottle of essence. His eyes open wide as he realizes what it is. As its warm bright waves wash over him his skin dissolves into a green goo that coats the ground. From his remains a floating white ball is retrieved.");
		#:: Give a 20699 - Cleansed Spirit of Kunark
		quest::summonitem(20699);
		#:: Ding!
		quest::ding();
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}