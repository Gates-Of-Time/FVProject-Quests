sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if ($text=~/hail/i) {
			quest::say("Hello my dear. I am quite pleased to make your acquaintance. Perhaps even charmed!");
		}
		elsif ($text=~/i need a sack/i) {
			if (plugin::check_hasitem($client,10604)) {
				quest::say("Take this sack and combine the items I requested in it. Then return it to me.");
				#:: Give a 17861 - An Enchanters Sack
				quest::summonitem(17861);
			}
		}
		elsif ($text=~/gems/i) {
			quest::say("I have prepared some gems that you will need to trap the essence. You will need to force a diamond, sapphire, ruby and emerald onto special creatures to obtain their essence.");
		}
		elsif ($text=~/diamond/i) {
			quest::say("Here is the diamond that I have prepared for you. Its only purpose is to trap the essence of a particular book worm. If you should fail in your first attempt, do not worry. I will provide you with another.");
			#:: Give a 10631 - Dull Diamond
			quest::summonitem(10631);
		}
		elsif ($text=~/sapphire/i) {
			quest::say("Here is the sapphire that I have prepared for you. Take it and give it to the one referred to as the Golden Faerie.");
			#:: Give a 10632 - Dull Sapphire
			quest::summonitem(10632);
		}
		elsif ($text=~/ruby/i) {
			quest::say("Blood red is the ruby that I have given you. The city that you must travel to has no sun, but still a day and night. And at night, the mist could suffocate one. Tis the fate of poor Jaxion.");
			#:: Give a 10633 - Dull Ruby
			quest::summonitem(10633);
		}
		elsif ($text=~/emerald/i) {
			quest::emote("jumps.");
			quest::say("Eeekk... a scorpion. I thought they rid this area of these critters. Those things give me the creepers. Take this emerald and be on your way.");
			#:: Give a 10634 - Dull Emerald
			quest::summonitem(10634);
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 10604 - Jeb's Seal
		if (plugin::takeItems(10604 => 1)) {
			quest::say("Oh it must be time to reveal the staff! The piece I will help you craft is encrusted with magical gems. These gems contain the essence of various creatures. Alone they have very little power. Combined together they are much more powerful. They must be combined in a sack. Just ask if you don't have one.");
			#:: Give a 10604 - Jeb's Seal
			quest::summonitem(10604);
			#:: Give a 17861 - An Enchanters Sack
			quest::summonitem(17861);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 10637 - Sack For Mizzle
		elsif (plugin::takeItems(10637 => 1)) { #A Sack For Nadia
			quest::say("Lovely! You are indeed quite the charmer. Here, take the third part, and seek out the last master. The time draws near.");
			#:: Give a 10612 - 3rd Piece of Staff
			quest::summonitem(10612);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(404, 30); 	#:: + Truespirit
			#:: Grant a small amount of experience
			quest::exp(10000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
