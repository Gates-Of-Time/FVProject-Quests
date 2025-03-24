sub EVENT_SPAWN {
	#:: Create a timer 'ArantirDepop' that triggers every 640 seconds
  	quest::settimer("ArantirDepop",640);
}

sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if ($text=~/hail/i) {
			if(quest::get_data("wizepicB") == 1) {
				quest::say("Ah yes, you again. Do you have the items? Give me the three you possess and I'll combine them with my own.");
			}
			elsif(quest::get_data("wizepicA") == 1) {
				quest::say("Ah, but it pains my heart to see this. How I could love a women like that is beyond me. And yet, I still do love her. It was on the day I was to ask her to marry me that I lost my powers. When I was about to cast my greatest spell to prove my love to her, my magic failed. She ran out on me that day. But enough of me, do you wish to hear my story?");
			}
			else {
				quest::say("Before I tell you anything, I require you to help me. Seek a woman named Challice. Give her this letter and then return to me.");
				#:: Give a 14334 - Arantir's Ring
				quest::summonitem(14334);
			}
		}
		if (quest::get_data("wizepicA") == 1) {
			if($text =~ /story/i) {
				quest::say("I once was one of four true followers of Solusek Ro. So great were the four of us that Solusek Ro himself made us each a special item. We did not know what the others' items were, but we realized that was for our own safety. Each one of us, after receiving the item, began to plot against Solusek Ro. Each of us believed we had enough power to dominate Norrath. Solusek Ro saw this and at the time we needed our powers most, he stripped us of them. Now I know two of the other wizards by name. One was called Sylen Tyrn, the other's name was Demunir Scry. The last wizard was a gnome, but I can't think of his name.");
			}
			elsif($text =~ /Sylen Tyrn/i) {
				quest::say("Sylen was a high elf wizard, and like many high elves, he believed himself to be better than others. Because of his birth, he thought he was more noble and more intelligent than anyone else. I heard how met his demise - while flying over a vast area of water, his powers were stripped from him in midflight. He fell and was captured by a rival wizard who specialized in magics of the water. Search for that wizard and you could find a trace of Sylen.");
			}
			elsif($text =~ /Demunir Scry/i) {
				quest::say("Demunir was a human in a rush for power. He was extremely intelligent and resourceful but, unfortunately, was more interested in destructive magic. Hearing of an ancient land, he immediately traveled to it, believing there to be powerful relics left undiscovered there. While exploring, he came upon a dwelling that housed a powerful warrior. Believing himself to be more powerful, he attempted to take this dwelling for himself. While in battle with this warrior, Solusek Ro stole his powers and left him helpless. It is said that Demunir's item is the warrior's most prized trophy.");
			}
			elsif($text =~ /the gnome/i) {
				quest::say("Ah, the gnome I know very little about. I know he was small and crafty, and that he had a brother. His brother's craft was that of making fireworks, and he was the unfortunate victim of one of his own experiments. His firework exploded, leaving his mind diminished in capacity, even for a gnome. I remember others calling him 'Old Stewpot' in jest. I do not know if this is his birth name, but it may help you to locate him. I hear he also stays close to water because of the explosion. You never know when another gnomish invention will go awry. Give him this letter to help motivate him to remember.");
				#:: Give a 18169 - Note from Arantir
				quest::summonitem(18169);
				#:: Ding!
				quest::ding();
				#:: Depop without spawn timer
				quest::depop();
			} 		
		} 		
	} 
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 18088 - Arantir's Ring
		if (plugin::takeItems(14335 => 1)) 
		{
			quest::set_data("wizepicA",1);
		}
		#:: Match a 18168 - Note to Arantir
		elsif (plugin::takeItems(18168 => 1)) 
		{
			quest::delete_data("wizepicA");
			quest::set_data("wizepicB",1);
		}
		elsif (quest::get_data("wizepicB") == 1) {
			#:: Match a 14337 - Blue Crystal Staff, a 14338 - Gnarled Staff and a 14339 - Staff of Gabstik
			if (plugin::takeItems(14337 => 1, 14338 => 1, 14339 => 1)) 
			{
				quest::say("Here, this pack contains all of our items. You will never be able to open it again, so you must deliver the pack, intact, to Solomen. He will then reward you. Now that I have helped you, leave me in peace.");
				#:: Give a 14340 - Magically Sealed Bag
				quest::summonitem(14340);
				#:: Ding!
				quest::ding();
				quest::delete_data("wizepicB");
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Stop the timer 'ArantirDepop' from triggering
  	quest::stoptimer("ArantirDepop");
	#:: Depop without spawn timer
  	quest::depop();
}