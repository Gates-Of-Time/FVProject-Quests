sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers every 600 seconds (10 min)
	quest::settimer("depop", 600);
}

sub EVENT_TIMER {
	#:: Match timer 'depop'
	if ($timer eq "depop") {
		#:: Stop the timer 'depop' from triggering
		quest::stoptimer("depop");
		#:: Depop
		quest::depop();
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Are not you a little short for a Highpass Guard?");
	}
	elsif ($text=~/not a highpass guard/i) {
		quest::say("Of course not. You are far too puny. Then what is your business here in my cell?");
	}
	elsif ($text=~/tearon sent me/i) {
		quest::say("Tearon sent you?!! Then you must be here to rescue me.. Wait. This could just be a trap. The escaping Princess is killed by the guards. You must have proof that you are with Tearon.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13108 - Tearons Bracer
	if (plugin::takeItems(13108 => 1)) {
		#:: Key a data bucket
		$key = $client->CharacterID() . "-bracer-to-lenya";
		#:: Match if the data bucket exists
		if (quest::get_data($key)) {
			quest::say("So you are a member of the Silent Watch!! They are accepting anyone these days. I shall leave then. Here is your bracer back. Thank you for unlocking the door.");
			#:: Give a 13108 - Tearons Bracer
			quest::summonitem(13108);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(279, 5);		#:: + King Tearis Thex
			quest::faction(246, 5);		#:: + Faydarks Champions
			quest::faction(285, -5);	#:: - Mayong Mistmoore
			quest::faction(304, -5);	#:: - Ring of Scale
			quest::faction(5019, -5);	#:: - King Aythox Thex
			#:: Grant a small amount of experience
			quest::exp(100);
			#:: Set the data bucket value to 2
			quest::set_data($key, 2);
			#:: Depop
			quest::depop();
		}
	}
	#:: Match a 13109 - Royal Amulet of Thex
	elsif (plugin::takeItems(13109 => 1)) {
		#:: Key a data bucket
		$key = $client->CharacterID() . "-amulet-to-lenya";
		#:: Match if the data bucket exists
		if (quest::get_data($key)) {
			quest::say("The Royal Amulet of Thex!! I missed it so. I am sorry I escaped so quickly. I am glad you did not run into the Teir'Dal torturers. They are quite formidable. I shall be continuing on to Qeynos. Here. Take this as proof that you have rescued me. My father should be quite happy with your deed. Such beauty as mine should never be locked up. If you cannot find my father then search for Tolon Nurbyte. He is usually at the Traveler's Inn. Good bye.");
			#:: Give a 18841 - Sealed Letter
			quest::summonitem(18841);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(279, 5);		#:: + King Tearis Thex
			quest::faction(246, 5);		#:: + Faydarks Champions
			quest::faction(285, -5);	#:: - Mayong Mistmoore
			quest::faction(304, -5);	#:: - Ring of Scale
			quest::faction(5019, -5);	#:: - King Aythox Thex
			#:: Grant a small amount of experience
			quest::exp(100);
			#:: Delete the data bucket
			quest::delete_data($key);
			#:: Depop
			quest::depop();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
