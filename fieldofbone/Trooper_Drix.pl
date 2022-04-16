#:: Data bucket to verify quest has been started appropriately
$key = $client->CharacterID() . "-warrior-pike-6";

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Can't you see I am busy on patrol");
	}
	elsif ($text=~/calling/i) {
		#:: Match if the key value is 1
		if (quest::get_data($key) == 1) { 
			quest::say("I am the leading authority on restoring and deciphering hidden messages. I can probably make out the message if you can bring me back some [items] I commonly use.");
		}
	}
	elsif ($text=~/items/i) {
		#:: Match if the key value is 1
		if (quest::get_data($key) == 1) { 
			quest::say("I will need your message, a frost crystal, a sarnak war braid, and some silver oxide. Bring these items back to me and be quick about it.");
			#:: Give a 48011 - Drix's Satchel
			quest::summonitem(48011);
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 48006 - Illegible Message (A message that somehow seems important)
	if (plugin::takeItems(48006 => 1)) {
		quest::say("Ah, I see you know my true [calling].");
		#:: Give a 48006 - Illegible Message (A message that somehow seems important)
		quest::summonitem(48006);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 48012 - Drix's Satchel (Drix's Full Satchel)
	elsif (plugin::takeItems(48012 => 1)) {
		quest::say("Let me see now.");
		quest::emote("uses the mixture you brought him and spreads it evenly across your document. It settles into all the wrinkles and with the speed of a Master, Trooper Drix uses the sarnak braid to seal the pieces as one.");
		quest::say("Take this sealed note back to whoever you need to. I dare not say what it reads out loud.");
		#:: Give a 48008 - Sealed Message
		quest::summonitem(48008);
		#:: Ding!
		quest::ding();
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
