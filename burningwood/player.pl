sub EVENT_ENTER {
	$key = $name . "-druid_epic";
	#:: Match if the key equals 12
	if (quest::get_data($key) == 12) {
		#:: Match if #a_crippled_wurm is not spawned
		if($entity_list->IsMobSpawnedByNpcTypeID(87155) == false) {
			#:: Spawn one and only one Burning Wood >> #a_crippled_wurm (87155), without grid or guild war, at the given location
			quest::unique_spawn(87155, 0, 0, 0, 3000, -259, 0);

		}
	}
}