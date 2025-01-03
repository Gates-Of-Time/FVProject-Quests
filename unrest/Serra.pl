sub EVENT_SAY { 
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/Hail/i) {
			quest::say("H..h..hello? Can you help me? I lost [something] and I need it so I can go back home.");
		}
		if ($text=~/something/i) {
			quest::say("I never got my doll for my birthday. Before he could bring it to me I was h..hurt by the bad man. I cannot leave without my doll. Will you please help me?");
		}
		if ($text=~/doll/i) {
			quest::say("Oh goody! But... I cannot seem to remember his name. He gave me this note before I...");
			quest::emote("begins to hand you a ripped note.");
		}
		if ($text=~/note/i) {
			quest::say("I hope it will help you out. Please find him so I can leave this place.");
			quest::summonitem(20374);
		}
	}
}

sub EVENT_ITEM {
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20370 - Mechanical Doll
		if (plugin::takeItems(20370 => 1)) {
			quest::say("Oh! You have the dolly! Thank you! Thank you! Thank you! I can go home now. Please give this to my father, Baenar. He will understand when he gets it.");
			quest::emote("begins to fade away.");
			quest::say("Bye bye!");
			#:: Give a 20371 - Note for Baenar
			quest::summonitem(20371);
			#:: Ding!
			quest::ding();
			#:: Depop with spawn timer active
    		quest::depop_withtimer();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
