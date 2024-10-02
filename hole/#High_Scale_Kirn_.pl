
sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 1671 - Icon of the High Scale
		if(plugin::takeItems(1671 => 1)){
			quest::emote("looks down at the icon in his hands for a long moment before speaking. 'Why did you bring me this? Are you here to accuse me of the queen's death?' High Scale Kirn chuckles venomously and continues, 'I am High Scale and beyond your petty laws. However, I wish the truth to be known. On my hand is a ring. If you can take it from me, show it to the queen and she will remember. However, I will not give up the ring easily. Defend yourself!");
			#:: Grant a large amount of experience
			quest::exp(100000);
			my $x = $npc->GetX();
			my $y = $npc->GetY();
			my $z = $npc->GetZ();
			my $h = $npc->GetHeading();
			#:: Spawn a The Hole >> #High_Scale_Kirn (39083)
			quest::spawn2(39083,0,0,$x,$y,$z,$h);
			quest::depop_withtimer();
		}  
	}  
	#:: Return unused items
	plugin::returnUnusedItems();
}
