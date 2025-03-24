sub EVENT_SAY {
	$key_EnchPre = $name . "-EnchPre";
	$key_ench_epic = $name . "-ench_epic";
	if ($text=~/hail/i) {
			#:: Check for 10650 - Staff of the Serpent OR Match if the key equals 2
			if ($npc->HasItem(10650) || quest::get_data($key_EnchPre) == 2) {
				quest::say("Much time has passed since the creation of the Staff of the Serpent. The power of discord is seeping into our fair world, and only the most powerful of us shall stand to force it back. The time has come for a new tool, and a new breed of enchanter. [Are you prepared] to meet this challenge?");
				#:: Match if the key does not exist
				if(!quest::get_data($key_ench_epic)) {
					quest::set_data($key_ench_epic, 1);
				}
			}
	}
	elsif ($text=~/prepared/i) {
		#:: Match if the key equal to or larger than 1
		if (quest::get_data($key_ench_epic) >= 1) {
			quest::say("I have recently received this ancient tome; it contains knowledge that may prove invaluable to the construction of a new staff. Unfortunately, time has had its way with it. I need you to find the missing pages so we can get to work. There should be ten, unless they have been destroyed by time and decay.");
			#:: Give a 57918 - Tattered Illegible Tome
			quest::summonitem(57918);
		}
	}
	elsif ($text=~/chest/i) {
		#:: Match if the key equal to or larger than 3
		if (quest::get_data($key_ench_epic) >= 3) {
			#:: Give a 52960 - Ornate Staff Chest 
			quest::summonitem(52960);
		}
	}
	elsif ($text=~/are you jeb lumsed/i) {
		quest::say("Yes, I am. Use your most enlightened magic to seek the truth of what is around you. When that is done, you will know what you seek.");
	}
	elsif ($text=~/serpent/i) {
		quest::say("The first truly powerful enchanter, Krilan Pedin, crafted the Serpent years ago. He trained his students to carry on the trade in a five-step process. Each student then became a master and chose one of their own students to pass the legacy on to. Four others and I, myself, are current practitioners of the crafting.");
	}
	elsif ($text=~/masters/i) {
		quest::say("The masters are enchanters who have reached the plateau of understanding. Their names are Modani Qu'Loni, Mizzle Gepple, Nadia Starfeast, and Polzin Mrid. All are master crafters in their own right.");
	}
	elsif ($text=~/modani/i) {
		quest::say("Modani is a master of illusions. You should seek him out first. Keep a careful eye out for him - he is never in his true form. The last time I spoke to him, he seemed very excited about his voyage to the elven outpost. You may or may not find more clues about his location there.");
	}
	elsif ($text=~/mizzle/i) {
		quest::say("Mizzle is a gnome who has mastered the use of enlightened magic. Go to him once you have spoken to Modani. Mizzle is not one to travel, so you should not have to look far from his home to find him.");
	}
	elsif ($text=~/nadia/i) {
		quest::say("The mistress of charm, Nadia is very beautiful. She, too, traveled with her relatives to the new land. I just recently received a letter from her. She says more and more pilgrims and explorers are arriving every day, and that the outpost is well defended now.");
	}
	elsif ($text=~/polzin/i) {
		quest::say("Master of the Phantasms - he is the last one you will seek out. Hmm...Polzin is native to Erudin, however, after the incident near Paineel, no one has heard from him. I hope that he is well.");
	}
	elsif ($text=~/purify/i) {
		#:: Check for 52952 - Oculus of Persuasion
		if ($npc->HasItem(52952)) {
			quest::say("The purification is not something that I alone have the power to complete. There was once a crystal that held the power to purify something of this magnitude, however it was shattered long ago. You will need to speak to the masters that remain of dwindling races.");
		}
	}
	elsif ($text=~/races/i) {
		#:: Check for 52952 - Oculus of Persuasion
		if ($npc->HasItem(52952)) {
			quest::say("The masters are of races that walked Norrath before you or I. I do not know their current whereabouts. Alaurin and Vohnkare were the eldest of the four. There was a noble . . Ah, yes and Feyana. I do hope you find them.");
		}
	}
}

sub EVENT_ITEM {
	$key_EnchPre = $name . "-EnchPre";
	$key_ench_epic = $name . "-ench_epic";
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 10603 - Copy of Notes
		if (plugin::takeItems(10603 => 1)) {
			quest::say("I see that you have what I was waiting for. Stofo does do excellent work. It seems that you are to start on a long journey. Take this seal and it will guide you on your next step. Seek out the masters of enchantment. In time we will craft the Serpent for you. When you have collected the four parts of the staff, you must combine them in a bundle and return them to me.");
			quest::say("Take this seal. You will need to show my seal to the other masters so that they may grant you the tools to complete your next tasks. When you have collected the four parts of the staff, you must combine them in a bundle for me. The other masters can provide the means to bundle them. Good luck and safe travels.");
			#:: Give a 10604 - Jeb's Seal
			quest::summonitem(10604);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(5000);
		}
		#:: Match a 10639 - Bundle of Staves
		elsif (plugin::takeItems(10639 => 1)) {
			quest::say("The path you trod was long and hard. Now you are worthy to bear the Serpent. Use it well.");
			#:: Give a 10650 - Staff of the Serpent
			quest::summonitem(10650);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(404, 30); 	#:: + Truespirit
			#:: Grant a huge amount of experience
			quest::exp(1500000);
		}
		#:: Match if the key equals 1
		elsif (quest::get_data($key_ench_epic) == 1) {
			#:: Match a 54267 - Complete Illegible Tome
			if (plugin::takeItems(54267 => 1)) {
				quest::say("As I suspected, this is something extraordinary. You must go speak to Maelin at once. It has been many moons since I have entered the Plane of Knowledge. He may well have some new information for me. Go at once and tell him I sent you.");
				quest::set_data($key_ench_epic, quest::get_data($key_ench_epic) + 1);
			}
		}
		#:: Match if the key equals 2
		elsif (quest::get_data($key_ench_epic) == 2) {
			#:: Match a 52959 - Sealed Documents
			if (plugin::takeItems(52959 => 1)) {
				quest::say("Interesting indeed. I see that I was not wrong in my instinct to begin this as quickly as possible. I have created a list of the items that you will need to begin the construction of this tool. Mind you, it will not be a simple thing. When you have gathered them all return to me. Would you like a [chest] to carry them in?");
				#:: Give a 54286 - Assembling the Staff
				quest::summonitem(54286);
				quest::set_data($key_ench_epic, quest::get_data($key_ench_epic) + 1);
			}
		}
		#:: Match if the key equals 6
		elsif (quest::get_data($key_ench_epic) == 6) {
			#:: Match a 52966 - Latched Ornate Chest
			if (plugin::takeItems(52966 => 1)) {
				quest::say("You have done well, my student. The staff is now complete. In order to stand up to the true fury of discord, it will need purifying, but even in this state it shall protect you well.");
				#:: Give a 52952 - Oculus of Persuasion
				quest::summonitem(52952);
				#:: Award AA points
				$client->AddAAPoints(5);
    		$client->Message(15,'You have gained 5 ability points!');
				#:: Ding!
				quest::ding();
				quest::set_data($key_ench_epic, quest::get_data($key_ench_epic) + 1);
			}
		}
		#:: Match if the key equals 1
		elsif (quest::get_data($key_EnchPre) == 1) {
			#:: Match a 52947 - Illegible Tome and a 52945 - Gnomish Translating Device
			if (plugin::takeItems(52947 => 1, 52945 => 1)) {
				quest::say("How very interesting. This could prove to be invaluable to my work. I have long been researching a new and most powerful tool to help our kind. It is necessary in these most dangerous of times. Unfortunately, it appears as though time has taken its toll on this tome. It is incomplete. Seek the missing pages so that I may study it in depth. There should be ten, unless they have been destroyed by time and decay.");
				#:: Give a 57918 - Tattered Illegible Tome
				quest::summonitem(57918);
				#:: Ding!
				quest::ding();
				quest::set_data($key_EnchPre, quest::get_data($key_EnchPre) + 1);
			}
		}
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}