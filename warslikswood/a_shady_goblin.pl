#:: Regal Band of Bathezid

sub EVENT_SAY{
	if ($text=~/hail/i) {
		quest::say("If yer not my contact ya best be movin' on. Got no time to waste on ya.");
	}
	elsif ($text=~/i am your contact/i) {
		quest::say("Are ya? Hum, let me see yer insignia then, and the note Skargus gave ya.");
	}
}

sub EVENT_ITEM{
	#:: Key a data bucket
	$key = $client->CharacterID() . "-signet-of-service";
	#:: Match if the key exists and value is 1
	if (quest::get_data($key) == 1) {
		#:: Match a 6475 - Drogan Warlord's Insignia, and a 6471 - Forged Note to Courier
		if (plugin::takeItems(6475 => 1, 6471 => 1)) {
			quest::emote("gapes at the note in puzzlement, obviously a bit concerned by it. The courier looks at the note for more than a minute, then looks at you, and back at the note. 'Errm.. welp, dunno what to make of the note. If I know the right of it, Skargus finally got him some girly to do his writin' for him. Ooooh I bet she's a tasty one, graarr. If I was warlord I know I'd have me a girly too. Gah, take this report and get outta my sight.'");
			#:: Give a 6474 - Report to Skargus
			quest::summonitem(6474);
			#:: Ding!
			quest::ding();
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
