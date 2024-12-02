sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/Hail/i) {
			quest::emote("strikes the wall with his pick. A clacking sound echoes through the cave. 'Har har. There's something all right.'");
		}
		if ($text=~/something/i) {
			quest::say("Huh? Oh, I struck me some silver. Ain't gonna make me rich but it'll sure pay for me minin' costs. Speakin of, that wife o' mine was supposed ta bring me food already. Hey, you, wanna go get me my dinner? I ain't got nothing ta pay ya with but I sure would appreciate it.");
		}
		if ($text=~/dinner/i) {
			quest::say("Har, I know you were a good sort. Nella has it. She's out there somewhere in the lower areas. She likes to visit the temple, so maybe she's there. Just tell 'er Jark sent ya and she'll prolly have everythin' ready fer me.");
			#:: Spawn a North Kaladim >> Nella_Stonebraids (67090), without grid or guild war, at the current location
			quest::spawn2(67090,0,0,178.5,708.9,3.4,388.4);
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 29007 - Cold Plate of Beef and Bread
		if (plugin::takeItems(29007 => 1)) {
			quest::say("Har, har! No time fer eatin' now! While you were gone I struck me a rich vein. Lookie here! Ya ever seen a gem so pure? It's tiny but clear as glass. Ya take it, $name. Ya showed me some kindness, least I can do. Besides, still a share here for me.");
			#:: Give a 29006 - Pure Crystal
			quest::summonitem(29006);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}