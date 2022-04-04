sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("is humming and chanting softly. He seems oblivious to your presence.");
	}
	elsif ($text=~/master rinmark/i) {
		quest::emote("squints one eye open, then returns to his meditation.");
	}
	elsif ($text=~/talon southpaw/i) {
		quest::emote("waves his arms in the air. 'The great master. His soul is the wind. He speaks to us in words of thunder. He strikes Norrath with bolts of lightning. I seek to be as he is. I have traveled the globe in search of his fists. I have found only one. Another is said to be with [Gomoz]. I shall return it when I am finished with my seasons-long meditation or perhaps I shall find a monk to [return the hand to Cabilis].'");
	}
	elsif ($text=~/gomoz/i) {
		quest::say("Disciple Gomoz was once Talon Southpaw's pupil. It is rumored that he has only one hand. Unfortunately, a horde of ogre raiders swiped his bones, along with others, from their place in Kurn's Tower. What those simple oafs plan to do with them is a mystery. Only one who has studied the arcane sciences could use them. They most likely used them as soup bones.");
	}
	elsif ($text=~/return the hand to cabilis/i) {
		quest::emote("hands you an old tattered sack. 'This shall be your proof of allegiance. Prove that you are strong with an intact mandible of a skulking brutling and the claws of a burynai excavator. Prove that you are a monk of fist and tail with a sash of an exiled human monk and the sparring gloves of a goblin pit fighter. Combined, these items make the sack full. This will earn my trust and the hand.'");
		#:: Give a 17036 - Tattered Sack from Rinmark
		quest::summonitem(17036);
	}
	elsif ($text=~/assist old rinmark in completing his rock garden/i) {
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-shackle-quest";
		#:: Match if the key value is '1'
		if (quest::get_data($key) == 1) {
			quest::emote("pours the pebbles into his pocket and hands the box to you. 'Take my box. Fill and combine within my box the following; a radiant meteorite, frontier fool's gold, petrified redwood, Rile's sand coin, sulfur stone, fragment of tektite, plains pebble, jade magma, heart of ice and an unholy coldstone. Return the full tin box to me and I shall reward you with a shackle of bronze.'");
			#:: Give a 17039 - Empty Tin Box
			quest::summonitem(17039);
		}
	}
	elsif ($text=~/student/i) {
		#:: Match a 4195 - Shackle of Bronze
		if (plugin::check_hasitem($client, 4105)) {
			quest::emote("hands you what appears to be the base of a key. 'This was delivered to me by a dying student. He collapsed just after handing it to me. He was accompanying a student of mine named Veltar. They were questing for the legendary Whistling Fists. The key is made of a metal I have never felt or heard of. Find him.'");
			#:: Give a 17040 - Part of a Large Key
			quest::summonitem(17040);
		}
	}
	elsif ($text=~/test of patience/i) {
		#:: Match a 4196 - Shackle of Steel
		if (plugin::check_hasitem($client, 4196)) {
			quest::say("So your time has finally come to be tested for the final rung. To show your patience you shall spar with me. When you have gained the insight and strategy to strike you will know when. Strike me too soon and you will perish, too late and I will be gone. Come at me when the time is right. Let us begin.");
			#:: Spawn one and only one Timorous Deep >> Grandmaster_Rinmark (96318) without grid or guild war, at the current location
			quest::unique_spawn(96318, 0, 0, $x, $y, $z, $h);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	elsif ($text=~/whistling fists/i) {
		quest::say("The Whistling Fists are rumored to be magical instruments of destruction which can only be wielded by monks. The founder, Supreme Master Tynn, was the only lizard to ever gaze upon the weapon. He only spoke of it to his student Marthor. Marthor rarely spoke of it and when he did it was usually after a few flagons of Trog Brew. That is why many consider it to be babble.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12815 - Full Sack for Master
	if (plugin::takeItems(12815 => 1)) {
		quest::emote("bows before you and takes a wrinkled, mummified hand from a pouch at his side. 'Take the hand. Let it rest within Cabilis and be reunited with the left.'");
		#:: Give a 12797 - Iksar Right Hand '=\|-'
		quest::summonitem(12797);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(444, 5);		#:: + Swift Tails
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a large amount of experience
		quest::exp(5000);
	}
	#:: Match a 12829 - Tin Box
	elsif (plugin::takeItems(12829 => 1)) {
		quest::emote("opens the box to reveal a variety of pebbles. 'How grand!! My pebbles!! Now I can continue with my rock garden!! Hmmm. You look familiar. Hey!! I bet you can help me complete my garden!! Would you please [assist old Rinmark in completing his rock garden]?'");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(444, 5);		#:: + Swift Tails
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a large amount of experience
		quest::exp(5000);
		#:: Key up a data bucket
		$key = $client->CharacterID() . "-shackle-quest";
		#:: Set the key value to 1
		quest::set_data($key, 1);
	}
	#:: Match a 12836 - Pebble Filled Box
	elsif (plugin::takeItems(12836 => 1)) {
		quest::emote("graciously accepts the tin box filled with precious rocks and gems. 'Thank you greatly, young $name. For your deed, I bestow upon you the shackle of bronze!! You have completed the third rung. Alas, there is no time for celebration. I need your help in rescuing a [student] of mine.'");
		#:: Give a 4195 - Shackle of Bronze
		quest::summonitem(4195);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(444, 5);		#:: + Swift Tails
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a large amount of experience
		quest::exp(5000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
