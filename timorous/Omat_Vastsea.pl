sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			#:: Match a 28048 - Orb of Clear Water, a 28049 - Orb of Frozen Water, and a 28050 - Orb of Vapor
			if (plugin::check_hasitem($client, 28048) && plugin::check_hasitem($client, 28049) && plugin::check_hasitem($client, 28050)) {
				quest::say("Jhassad told me to notify him the minute you returned.  Hurry down to the beach so you do not miss him again!");
				#:: Spawn one and only one Timorous Deep >> Jhassad_Oceanson (96074) without grid or guild war, at the specified coordinates
				quest::unique_spawn(96074, 0, 0, -1781, -11959, 14.3, 2);
			}
			else {
				quest::emote("bows deeply. 'I have been expecting you, $name. The waters have foretold your arrival. I am High Priest Omat Vastsea of the Triumvirate missionaries. Please feel free to enjoy the quiet solitude of this inn.'");
			}
		}
		elsif ($text=~/triumvirate/i) {
			quest::say("The Triumvirate of Water are: E'ci, the mistress of ice; Tarew Marr, the lord of water; and Povar, the formless master of vapor and mist. We Triumvirate missionaries are granted great divinatory powers and wisdom through our devotion to the Triumvirate and must defend the waters of Norrath from the ravages of the Tyrant of Fire, Fennin Ro.");
		}
		elsif ($text=~/fennin ro/i) {
			quest::say("The Tyrant of Fire, Fennin Ro, is the merciless lord of fire in all its forms. The rivalry between the tyrant and the Triumvirate is as old as the gods themselves and is an eternal battle. We witness the struggle every moment of our lives as the Oasis of Marr succumbs to the heat of the surrounding desert and is replenished by the swelling of the Lifire River. That fragile balance between the elements must be maintained but the Plasmatic Priesthood threatens that balance.");
		}
		elsif ($text=~/plasmatic priesthood/i) {
			quest::say("The Plasmatic Priesthood are worshipers of the Tyrant of Fire, but they have been driven mad by their fanaticism and have forgotten the importance of the balance. In their madness they would set the whole world aflame, leaving nothing but lifeless ash.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28047 - Ornate Sea Shell
		if (plugin::takeItems(28047 => 1)) {
			quest::say("So, you are a friend of Natasha's? That is good to see. She is a very wise and gifted woman. The Riptide goblins have adopted a new king but are still in a vulnerable state until his subjects accept his rule. The Plasmatic Priesthood is aware of the weakened state of the Riptides and has convinced the Fire Peak goblins to strike against them. Although I do not agree with the mannerisms or actions of any goblin clan, such a war would be detrimental to all who are caught in its path. Lord Gimblox of the Fire Peak clan has been meeting with a member of the Plasmatic Priesthood in the Temple of Solusek Ro. Locate the Plasmatic Priest, hand him this statue to hinder his powers, then eliminate him and bring me his robe.");
			#:: Give a 28051 - Coral Statue of Tarew
			quest::summonitem(28051);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 1299 - Blood Soaked Plasmatic Priest Robe
		elsif (plugin::takeItems(1299 => 1)) {
			quest::say("You have proven yourself to be one who is willing to take responsibility for his own actions. Such a trait is desired by all deities to be present in their faithful. I pray that you had the wisdom to slay Lord Gimblox as well as the Plasmatic Priest in order to prevent further advancement in the incursion against the Riptides. Priestess Natasha awaits inside the inn for Lord Gimblox's ring, make haste for she is a busy women and will depart soon.");
			#:: Give a 28049 - Orb of Frozen Water
			quest::summonitem(28049);
			#:: Ding!
			quest::ding();
			#:: Grant a massive amount of experience
			quest::exp(100000);
			#:: Spawn one and only one Timorous Deep >> Natasha_Whitewater (96080) without grid or guild war, at the specified coordinates
			quest::unique_spawn(96080, 0, 0, -2198, -11601, 76);
		}
		#:: Match a 18170 - Singed Scroll, and a 28017 - Sceptre of Ixiblat Fer
		elsif (plugin::takeItems(18170 => 1, 28017 => 1)) {
			quest::say("I commend you on your success over the fire elemental lord, Ixiblat Fer. The fact that the Plasmatic Priesthood has mustered up the power to summon such a being means drastic actions must be taken to stop the fanatic cult of Fennin Ro. I wonder what kind of favor Zordak Ragefire performed for the sarnak summoners to convince them to assist in the ritual that brought forth Ixiblat Fer. The dragon Iksar hybrid abominations are not beings who ally with others easily. All I have seen in my divinations of the High Plasmatic Priest are riddles, and signs that the one who slays him may be awarded an Orb of the Triumvirate. If you are the one whom my visions foretell, then seek Zordak Ragefire and bring me his heart.");
			#:: Give a 28048 - Orb of Clear Water
			quest::summonitem(28048);
			#:: Ding!
			quest::ding();
			#:: Grant a massive amount of experience
			quest::exp(100000);
			#:: Spawn one and only one Timorous Deep >> Natasha_Whitewater (96080) without grid or guild war, at the specified coordinates
			quest::unique_spawn(96080, 0, 0, -2198, -11601, 76);
		}
		#:: Match a 28019 - Zordak Ragefire's Heart
		elsif (plugin::takeItems(28019 => 1)) {
			quest::say("I see now that Zordak Ragefire and the exiled elder dragon Zordakalicus were the same being. That explains how he resisted our attempts to divine his affairs and past. Each of these orbs I have granted you represents one of the Triumvirate. Jhassad Oceanson awaits on the shore below to perform the ritual that will merge the orbs into a single Orb of the Triumvirate and summon an avatar from the Plane of Water. Present the Orb of the Triumvirate to the Avatar of Water when it arrives and allow your destiny to be unraveled.");
			#:: Give a 28050 - Orb of Vapor
			quest::summonitem(28050);
			#:: Ding!
			quest::ding();
			#:: Grant a massive amount of experience
			quest::exp(100000);
			#:: Spawn one and only one Timorous Deep >> Jhassad_Oceanson (96074), without grid or guild war, at the specified coordinates
			quest::unique_spawn(96074, 0, 0, -1781, -11959, 14.3, 2);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
