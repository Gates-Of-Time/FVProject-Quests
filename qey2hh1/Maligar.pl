my $entid1;
my $mob1;
my $mobattack;

sub EVENT_ITEM {
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20373 - Note to Maligar
		if (plugin::takeItems(20368 => 1)) {
			quest::say("Hmmm. What's this? A note from that silly bard Baenar? I wasn't aware that those of his kind could write, much less read.' Maligar lets out a deep laugh. 'I see you do not share my sense of humor. Let's read it, shall we? Oh, no! She's dead? I knew that already, you fool. It was by my hand she died! Ooops! Did I let that slip out? Silly me. I guess I will have to kill you now!");
			#:: Spawn a The Western Plains of Karana >> Maligars_Enraged_Doppleganger (12173), without grid or guild war, at the specified location
			$entid1 = quest::spawn2(12173,0,0,-10909,1260,209,136);
			$mob1 = $entity_list->GetMobID($entid1);
			$mob1attack = $mob1->CastToNPC();
			$mob1attack->AddToHateList($client, 1);
			quest::attack($name);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
