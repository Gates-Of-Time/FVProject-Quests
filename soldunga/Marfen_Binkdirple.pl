sub EVENT_ITEM {
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20372 - Solusek Mining Company Invoice
		if (plugin::takeItems(20372 => 1)) {
			quest::say("Ah! 'Bout time ye got yer lazy bones down here! I was beginnin' ta worry bout ya. Thought ye'd never pick the doll up. Me kin worked and toiled over this thing fer days. That Baenar was sure exact in every detail. For a special child, he said. Must be some child. He spent all he had and some he didn't. Still owes us a show! Anyway, I heard she passed away some time ago. Give the lad muh regards.");
    		#:: Give a 20370 - Mechanical Doll
			quest::summonitem(20370);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
