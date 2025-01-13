
sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20446 - Faelin`s Ring
		if (plugin::takeItems(20446 => 1)) {
			quest::emote("flips you a coin after he recognizes the ring. 'It seems we have a mutual 'acquaintance.' The coin repays an old debt. You don't have to worry about what that is. Luckily, Lord Innoruuk has informed me of your coming and your desires. Fortunately, I have all the answers you require right here at the end of my friend's blade. I think I'll be paying my old 'friend' a visit.'");
			#:: Give a 20447 - Dark Metal Coin
			quest::summonitem(20447);
			#:: Ding!
			quest::ding();
			#:: Spawn a Kiticor >> Teir`Dal_Reaver (20190), without grid or guild war, at the current location
			my $reaver = quest::spawn2(20190,0,0,$x+20,$y+20,$z,$h);
			my $attack = $entity_list->GetMobID($reaver);
			my $reaverattack = $attack->CastToNPC();
			$reaverattack->AddToHateList($client, 1);
		}
		else {
			quest::emote("will not take the item.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}