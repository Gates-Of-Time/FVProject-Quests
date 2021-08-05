sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You tread upon sacred ground, $race. None may go further unless they [have business with the Overlord], or, if you're looking to gain favor with the heretics and need a little coin, I have a [job] for you.");
	}
	elsif ($text=~/business/i) {
		quest::say("The Overlord only sees those he calls forward. If you have a summons from him, I will escort you and announce your arrival. If not, then forget whatever business you may have had here. If you wish an audience, then go speak to Sheltian below. He may be able to help you.....if you help him.");
	}
	elsif ($text=~/job/i) {
		quest::say("There are many campaigns we administer from within our city, Paineel. Some of these campaigns are threatened or hindered by annoyances. One of these annoyances are the kobolds that live in the filth of a cave not far from here. Find that lair and kill as many of these beasts as you can. For every kobold molar you return, you shall be rewarded.");
	}
}

sub EVENT_ITEM {
    #:: Match a 1761 - Kobold Molar
    if (plugin::takeItems(1761 => 1)) {
        quest::say("Not bad, $name. Here is your reward. If you slay enough of these dogs, Sheltuin may have a more important task for you to perform.");
        my $random_result = int(rand(10));
        if($random_result==1) {
            #:: Give a random reward: 
            #   3120 - Small Ringmail Sleeves
            #   3123 - Small Ringmail Pants
            #   3115 - Small Ringmail Neckguard
            #   3117 - Small Ringmail Mantle
            #   3122 - Small Ringmail Gloves
            #   3113 - Small Ringmail Coif            
            #   3116 - Small Ringmail Coat
            #   3118 - Small Ringmail Cape
            #   3121 - Small Ringmail Bracelet
            #   3124 - Small Ringmail Boots
            #   3119 - Small Ringmail Belt
            #   3108 - Ringmail Sleeves
            #   3107 - Ringmail Skirt
            #   3111 - Ringmail Pants
            #   3103 - Ringmail Neckguard
            #   3105 - Ringmail Mantle
            #   3110 - Ringmail Gloves
            #   3101 - Ringmail Coif
            #   3104 - Ringmail Coat
            #   3106 - Ringmail Cape
            #   3109 - Ringmail Bracelet
            #   3112 - Ringmail Boots
            #   3132 - Large Ringmail Sleeves
            #   3135 - Large Ringmail Pants
            #   3127 - Large Ringmail Neckguard
            #   3129 - Large Ringmail Mantle
            #   3134 - Large Ringmail Gloves
            #   3125 - Large Ringmail Coif
            #   3128 - Large Ringmail Coat
            #   3130 - Large Ringmail Cape
            #   3133 - Large Ringmail Bracelet
            #   3136 - Large Ringmail Boots
            #   3131 - Large Ringmail Belt
            quest::summonitem(quest::ChooseRandom(3120,3123,3115,3117,3122,3113,3116,3118,3121,3124,3119,3108,3107,3111,3103,3105,3110,3101,3104,3106,3109,3112,3132,3135,3127,3129,3134,3125,3128,3130,3133,3136,3131));
        }
        #:: Ding!
        quest::ding();
        #:: Set factions
        quest::faction(265, 5);  		#:: + Heretics
        quest::faction(242, -5);  		#:: - Deepwater Knights
        quest::faction(254, -5); 		#:: - Gate Callers
        quest::faction(231, -5);  		#:: - Craftkeepers
        quest::faction(233, -5);  		#:: - Crimson Hands
        #:: Grant a moderate amount of experience
        quest::exp(2000);
    }
    #:: Return unused items
    plugin::returnUnusedItems();
}
		
