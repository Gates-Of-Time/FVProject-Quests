sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across by 50 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 25, $z + 25, 0);
}

sub EVENT_ENTER {
	#:: Match a 18782 - Recruitment Letter
	if (plugin::check_hasitem($client, 18782)) { 
		$client->Message(15,"A stern looking man turns to greet you as you get your bearings. 'Come, young recruit. I am Regren, Guild Master of the Emerald Warriors. Read the note in your inventory and then hand it to me to begin your training as a proud Warrior. Unless you would rather prance about with the pixies and such. The choice is yours.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome, warrior! Show the Emerald Warriors your mettle and bring me a ruined wolf pelt, some bat fur, some bone chips, and a spiderling eye from the depths of Greater Faydark. If you succeed, my admiration and a reward will be yours. To battle!");
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
	#:: Match a 18782 - Recruitment Letter
	if (plugin::takeItems(18782 => 1)) {
		quest::say("Welcome to the Emerald Warriors. Hmmm, you have a lot of training to do, so let's get started right away. Here's our guild tunic, represent us well, young $name. Once you are ready to begin your training please make sure that you see Josylyn Greenblade, she can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13533 - Old Green Tunic*
		quest::summonitem(13533);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(326, 100);		#:: + Emerald Warriors
		quest::faction(270, -15);		#:: - Indigo Brotherhood
		quest::faction(325, 10);		#:: + Merchants of Felwithe
		quest::faction(276, 10);		#:: + Kelethin Merchants
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 13073 - Bone Chips, a 13782 - Ruined Wolf Pelt, a 13253 - Spiderling Eye, and a 13069 - Bat Fur
	if (plugin::takeItems(13073 => 1, 13782 => 1, 13253 => 1, 13069 => 1)) {
		#:: Match if faction is amiably or better
		if ($faction <= 4) {
			quest::say("Fine work! You are on your way to becoming an adequate combatant.");
			#:: Give a random reward: 10018 - Hematite, 10016 - Lapis Lazuli, 10015 - Malachite, 6014 - Rusty Warhammer, 10005 - Silver Stud, 2124 - Small Patchwork Boots, 2119 - Small Tattered Belt, 2122 - Small Tattered Gloves, 2115 - Small Tattered Gorget, 2113 - Small Tattered Skullcap, 5043 - Tarnished Axe, 5045 - Tarnished Long Sword, 5042 - Tarnished Short Sword, 6012 - Worn Great Staff
			quest::summonitem(quest::ChooseRandom(10018, 10016, 10015, 6014, 10005, 2124, 2119, 2122, 2115, 2113, 5043, 5045, 5042, 6012));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(326, 1);		#:: + Emerald Warriors
			quest::faction(270, -1);	#:: - Indigo Brotherhood
			quest::faction(276, 1);		#:: + Kelethin Merchants
			quest::faction(325, 1);		#:: + Merchants of Felwithe
			#:: Grant a small amount of experience
			quest::exp(500);
			#:: Create a hash for storing cash - 20 to 150cp
			my %cash = plugin::RandomCash(20,150);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("I will not aid beings like you.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
