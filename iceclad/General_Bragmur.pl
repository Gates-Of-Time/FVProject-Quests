sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Please keep yer voice down I am busy here. If you do not mind I would ask that ya kindly leave.");
  	}
}

sub EVENT_ITEM {
	#:: Match a 8898 - Approved Issue Kit
	if (plugin::takeItems(8898 => 1)) {
		quest::emote("begins to put the armor on, 'Finally the Dain has gotten word of my arrival here. I await his final orders before proceeding.'");
		#:: Ding!
		quest::ding();
		my $x = $npc->GetX();
		my $y = $npc->GetY();
		my $z = $npc->GetZ();
		my $h = $npc->GetHeading();
		#:: Spawn one and only one Iceclad Ocean >> General_Bragmur_  (110118), with no grid or guildwar, at the current location
		quest::spawn2(110118,0,0,$x,$y,$z,$h);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}