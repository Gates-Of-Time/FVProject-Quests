sub EVENT_COMBAT {
	#:: Depop with spawn timer active
	quest::depop_withtimer();
	#:: Spawn a Dragon Necropolis >> #a_dragon_construct (123097), without grid or guild war, at the current location
	quest::spawn2(123097, 0, 0, $x, $y, $z, $h);
}
