#:: 674 - Alter Plane: Sky

sub EVENT_SPELL_EFFECT_CLIENT {
	if ($status < 80) {
		if ($zoneid != 71) {
			if ($client->BuffCount()) {
				for ($i=0; $i < $client->BuffCount(); $i++) {
					#:: Match: 756 - Resurrection Sickness, 757 - Resurrection Sickness, 5249 - Resurrection Sickness, 12332 - Bottle of Hastened Adventure I, 12333 - Bottle of Hastened Adventure II
					#:: 12334 - Bottle of Hastened Adventure III, 12918 - Potion of Adventure, 13088 - Potion of Adventure I, 13089 - Potion of Adventure II, 13093 - Potion of Adventure III
					#:: 21028 - Bottle of Adventure I, 21029 - Bottle of Adventure II, 21030 - Bottle of Adventure III, 22467 - Bottle of Shared Adventure I , 22468 - Bottle of Shared Adventure II
					#:: 22469 - Bottle of Shared Adventure III, 24031 - Bottle of Adventure I, 24032 - Bottle of Adventure II, 24033 - Bottle of Adventure III, 24044 - Bottle of Shared Adventure I
					#:: 24045 - Bottle of Shared Adventure II, 24046 - Bottle of Shared Adventure III, 24047 - Bottle of Adventure III, 24048 - Bottle of Shared Adventure III
					if ($client->FindBuffBySlot($i) !~ [756, 757, 5249, 12332, 12333, 12334, 12918, 13088, 13089, 13093, 21028, 21029, 21030, 22467, 22468, 22469, 24031, 24032, 24033, 24044, 24045, 24046, 24047, 24048]) {
						$client->BuffFadeBySlot($i);
					}
				}
			}
		}
	}
}
