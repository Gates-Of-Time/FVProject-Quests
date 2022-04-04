sub EVENT_SAY {
    if($text=~/hail/i){
        quest::say("Greetings friend, it is good to be freed from the clutches of those evil creatures. Tell me are you willing to help me bring some [justice] to them?");
    }
    if($text=~/justice/i){
        quest::say("For justice to be brought to them you will need to strike at some of the most powerful goblins found there. Seek out the goblin cave lords deep within the Temple of Droga and bring me back three Sashes of the Cave Lords. Also I will need the Earring of King Dronan. Do this and you will be well rewarded.");
    }
}

sub EVENT_ITEM {
	#:: Match a 62093 - Earring of King Dronan and 62092 - Sash of the Cave Lord
	if (plugin::takeItems(62093=> 1, 62092=> 3)) {
		quest::say("Welcome, friend, to the Clerics of Tunare. I am Yeolarn Bronzeleaf, head of the guild and devout follower of Tunare. Here is your guild tunic - it will help to protect you against this world's evils. Once you are ready to begin your training please make sure that you see Terren Starwatcher, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 62202 - Copper Medal of Rapture
		quest::summonitem(62202);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
