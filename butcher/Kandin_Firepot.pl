sub EVENT_SAY {
	$key_wiz_epic = $name . "-wiz_epic-kandin_firepot";
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text =~ /hail/i) {
			quest::say("Hello, there! Don't have time to talk. I'm workin', workin', workin'! Careful! Don't slip in the oil!");
		}
		if(quest::get_data($key_wiz_epic) >= 1) {
			if (quest::is_the_scars_of_velious_enabled()) {
				if($text =~ /what oil/i) {
					quest::say("Ah the oil! I recently sent a specially crafted golem to explore through a huge portal to another plane. It's instructions were to collect special oil that I suspect existed in the plane. What I think is the golem broke down. This looks like a good task for one like you. Go see what's wrong with the golem. Here is spare gears of mine incase it's broken. Be careful though, if you put it in wrong it could explode or worse!");
					#:: Give a 14319 - Golem Sprocket
					quest::summonitem(14319);
					#:: Ding!
					quest::ding();
				}
			}
		}
	}
}

sub EVENT_ITEM {
	$key_wiz_epic = $name . "-wiz_epic_kandin_firepot";
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 18169 - Note from Arantir
		if(plugin::takeItems(18169 => 1)) {
			quest::say("Brother! I have one of those. He's great, but he's dead. His name was Gabstik and he was a really powerful wizard. I still have one of his greatest possesions! You look like you could use it. I've added another thing to my shopping list. I require a dry brittle skin that I can mold or a rare oil found in the planes that I can soak the fuse in. Get me one of these things and I'll trade it for my bother's stick.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(404, 30); 	#:: + Truespirit
			quest::set_data($key_wiz_epic, 1);
		}
		elsif (quest::get_data($key_wiz_epic) >= 1) {
			if (quest::is_current_expansion_the_ruins_of_kunark()) {
				my $epic_progress = quest::get_data($key_wiz_epic);
				if ($epic_progress == 1) {
					#:: Match a 14332 - Cazic's Skin
					if (plugin::takeItems(14332 => 1)) {
						quest::say("Great! This is? What is this for again? Oh yeah, the casing for my firework. Here, you can have this then, oh no, wait. You can't yet. I forgot I needed another part to my firework, and you are exactly the person to get it for me! I need some mistletoe powder. Now, go find some for me! Go, go, go, go! Shoo! Oh, wait! Hold on to my bag for me, please. You can give it back after you've given me what I want.");
						#:: Give a 14336 - Kandin's Bag
						quest::summonitem(14336);
						#:: Ding!
						quest::ding();
						#:: Set factions
						quest::faction(404, 30); 	#:: + Truespirit
						quest::set_data($key_wiz_epic, 2);
					}
				} elsif ($epic_progress == 2) {
					#:: Match a 14333 - Mistletoe Powder
					if (plugin::takeItems(14333 => 1)) {
						quest::say("Great, this is it! Here, take this, it was my brother's. Now I must be off to work! Oh, wait, wait! I need my bag back!");
						#:: Give a 14339 - Staff of Gabstik
						quest::summonitem(14339);
						#:: Ding!
						quest::ding();
						#:: Set factions
						quest::faction(404, 30); 	#:: + Truespirit
						quest::set_data($key_wiz_epic, 3);
					}
				} elsif ($epic_progress == 3) {
					#:: Match a 14336 - Kandin's Bag
					if(plugin::takeItems(14336 => 1)) {
						quest::say("Great! Give this to Arantir so he knows you've helped me! Hey! Have you seen my lantern anywhere?");
						#:: Give a 18168 - Note to Arantir
						quest::summonitem(18168);
						#:: Ding!
						quest::ding();
						#:: Set factions
						quest::faction(404, 30); 	#:: + Truespirit
						quest::delete_data($key_wiz_epic);
					}
				}
			}
		}
		else {
			#:: Match a 14349 - Green Oil
			if(plugin::takeItems(14349 => 1)) {
				quest::say("Oh wow! You found the oil! Where is the golem? You didn't hurt him did you? I am very fond of him. Anyways, here is your reward a note and staff to give to that guy you were asking me about.");
				#:: Give a 14339 - Staff of Gabstik
				quest::summonitem(14339);
				#:: Give a 18168 - Note to Arantir
				quest::summonitem(18168);
				#:: Ding!
				quest::ding();
				#:: Set factions
				quest::faction(404, 30); 	#:: + Truespirit
				quest::delete_data($key_wiz_epic);
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}