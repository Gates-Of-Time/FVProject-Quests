sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("So mortals, you seek to end the tainting of Tunare's children? So be it, I have no cares. My death has been caused by this foolishness and I want no more to do with it. Bring me a scroll with the knowledge of resurrection so that I may once again live. I will hand you that which you seek.");
	}
}

sub EVENT_ITEM {
	#:: Match a 15392 - Spell: Resurrection
	if (plugin::takeItems(15392 => 1)) {
		quest::say("I am alive! My thanks to you, $name. And now I will aid you in your quest for preserving the forests of norrath. Your carcass will help nurture the soils of the wilderness.");
		#:: Spawn a Karnor's Castle >> Venril_Sathir (102126) at the current location
		$entid1 = quest::spawn2(102126, 0, 0, $x, $y, $z, $h);
		$mob1 = $entity_list->GetMobID($entid1);
		$mob1attack = $mob1->CastToNPC();
		$mob1attack->AddToHateList($client, 1);
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
