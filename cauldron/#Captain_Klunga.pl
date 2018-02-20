# Zone: Dagnor's Cauldron (cauldron) >> #Captain Klunga (70072)

#sub EVENT_SPAWN {
#
#	$npc->SetAppearance(1);
#}

sub EVENT_ITEM {
	#:: Match for 12278 - Abandoned Orc Shovel
	if (plugin::check_handin(\%itemcount, 12278 => 1)) {
#		$npc->SetAppearance(0);
#		quest::moveto(-395.87, 807.04, 70.53, 0, 1);
		quest::ding();
	}
	plugin::return_items(\%itemcount);
}

#sub EVENT_WAYPOINT_ARRIVE {
	#:: Ground spawn a 122274 - Chalice of Conquest
#	quest::creategroundobject(12274, $x, $y, $z, $h);
#}

# EOF Zone: Dagnor's Cauldron (cauldron) >> #Captain Klunga (70072)
# copied from GoT by SS
