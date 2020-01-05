sub EVENT_ENTERZONE {
	#:: Data bucket to verify quest has been started appropriately
	$key = $client->CharacterID() . "-strongbox";
	#:: Match if the key exists
	if (quest::get_data($key)) {
		quest::creategroundobject(13860, -9200, -430, -293, 0, 3000);
		#:: Clean up the data bucket
		quest::delete_data($key);
	}
}
