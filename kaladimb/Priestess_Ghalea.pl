sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 20 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Match 18765 - Dirt Covered Letter
	if (plugin::check_hasitem($client, 18765)) {
		$client->Message(15,"High Priestess Ghalea greets you with genuine enthusiasm. 'Hello there! Welcome to the Underfoot Cathedral! Read the note in your inventory and when you are ready to begin your training, hand me your note! May Brell bless us all!'");
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome to the Church of Underfoot. Please open your soul to the greatness of Brell Serilis. May he guide you in all your future endeavors. And may your soules long for the [soil of underfoot].");
	} 
	elsif ($text=~/soil of underfoot/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I can trust you with the soil of Underfoot, but first you must obtain four portions of fairy dust. Return them to me and I shall mix it and pray over it. Then I shall give you a pouch of soil of Underfoot.");			
		} 
		else {
			quest::say("The Clerics of Underfoot have yet to see your faith directed towards our wills. Perhaps you should assist Master Gunlok Jure in the crusade against the undead.");
		}
	} 
	elsif ($text=~/candle of bravery/i) {
		quest::say("The Candle of Bravery is used for temple ceremonies here in Kaladim. When the candle burns out, I must venture to the frigid village of Halas far to the north of the continent of Antonica. There I will take the candlestick and the [soil of underfoot] to Dok. He must create the candle in the very ornate candlestick.");
	}
	elsif ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	elsif ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}   
}

sub EVENT_ITEM { 
	#:: Match a 18765 - Dirt Covered Letter
	if (plugin::takeItems(18765 => 1)) {
		quest::say("Welcome to the Underfoot Cathedral. I am High Priestess Ghalea. Here is your guild tunic. Now. let's get you started helping us spread the will of Brell. Once you are ready to begin your training plese make sure that you see Haldorak, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13514 - Dusty Tunic*
		quest::summonitem(13514);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(227, 100); 			#:: + Clerics of Underfoot
		quest::faction(274, 100); 			#:: + Kazon Stormhammer
		quest::faction(293, 75); 			#:: + Miners Guild 249
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match if faction is Amiable or better, and four 12106 - Fairy Dust 
	elsif (plugin::takeItems(12106 => 4)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("May the mighty power of Brell saturate this soil with his divinity.  Here you are, my noble friend.  You may have a pouch of the soil of Underfoot.");
			#:: Give a 12282 - Soil of Underfoot
			quest::summonitem(12282);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(227, 2);			#:: + Clerics of Underfoot
			quest::faction(274, 2); 		#:: + Kazon Stormhammer
			quest::faction(293, 2); 		#:: + Miners Guild 249
			#:: Grant a moderate amount of experience
			quest::exp(5000);
			#:: Create a hash for storing cash - 1300 to 1500cp
			my %cash = plugin::RandomCash(1300,1500);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("The Clerics of Underfoot have yet to see your faith directed towards our wills. Perhaps you should assist Master Gunlok Jure in the crusade against the undead.");
			#:: Return four 12106 - Fairy Dust
			quest::summonitem(12106);
			quest::summonitem(12106);
			quest::summonitem(12106);
			quest::summonitem(12106);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
