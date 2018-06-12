sub EVENT_ITEM {
	#:: Match 13894 - Useless Cloth Cap
	if (plugin::check_handin(\%itemcount, 13894 => 1)) {
		quest::say("Aye.. You cut out the middleman..  I shall reward you.. hmm..  I have not found anything. how about..  <CRACK!! SNAP!! RIPP!!>  How about something off meself?");
		#:: Give a random reward: 9304 - Bone Shield, 12195 - Fractured Femur, 13073 - Bone Chips, 13074 - Zombie Skin
		quest::summonitem(quest::ChooseRandom(9304,12195,13073,13074)); 
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
