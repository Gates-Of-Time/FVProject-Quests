sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Why, hello there fellow scholar!  Don't you just love books?  I am quite a bookworm myself.  I could read forever!  I am currently working my way through the 'T's.");
	}
	elsif ($text=~/erud's tonic/i) {
		quest::say("Erud's Tonic! That is none of your concern!");
	}
	elsif ($text=~/phloatin/i) {
		quest::say("Phloatin Highbrow is my brother. He spends his time grogging it up.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13121 - Innoruuk's Kiss of Death
	if (plugin::takeItems(13121 => 1)) {
		quest::say("It's about time you figured it out, genius! Maybe you should spend more time in the library. Here, take this tonic and get out of here before they see me giving it to you and turn us both inside out.");
		#:: Give a 13118 - Erud's Tonic
		quest::summonitem(13118);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(694, 5); 		#:: + Erudite Citizen
		#:: Give a small amount of xp
		#:: quest::exp(500);
		#:: Diminishing Quest Rewards
		$key = $client->CharacterID() . "-" . $npc->GetNPCTypeID() . "-13121-turnin-count";
		#:: Match if data bucket exists
		if (quest::get_data($key) < 20) {
			#:: Increment the data bucket value
			quest::set_data($key, quest::get_data($key) + 1);
			#:: Create a scalar to store the value of the data bucket
			$turnin_count = quest::get_data($key);
			#:: Reward experience that decreases as the count increases
			quest::exp((20/$turnin_count) * 500);
		}
		elsif (quest::get_data($key) == 20) {
			quest::exp(500);
		}
		else {
			#:: Set the data bucket with a value of 1
			quest::set_data($key, 1);
			#:: Create a scalar to store the value of the data bucket
			$turnin_count = quest::get_data($key);
			#:: Reward experience that decreases as the count increases
			quest::exp((20/$turnin_count) * 500);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
