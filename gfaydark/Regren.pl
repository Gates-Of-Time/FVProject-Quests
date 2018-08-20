sub EVENT_SPAWN {
	#:: Set up a proximity, 100 units across
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
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
	if ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [" . quest::saylink("second book") . "], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	if ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Match a 18782 - Recruitment Letter
	if (plugin::takeItems(18782 => 1)) {
		quest::say("Welcome to the Emerald Warriors. Hmmm, you have a lot of training to do, so let's get started right away. Here's our guild tunic, represent us well, young $name. Once you are ready to begin your training please make sure that you see Josylyn Greenblade, she can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [" . quest::saylink("trades") . "] you will have available to you.");
		#:: Give a 13533 - Old Green Tunic*
		quest::summonitem(13533);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(92,100);		#:: + Emerald Warriors
		quest::faction(155,-15);	#:: - Indigo Brotherhood
		quest::faction(212,10);		#:: + Merchants of Felwithe
		quest::faction(174,10);		#:: + Kelethin Merchants
	}
	#:: Match 13073 - Bone Chips, 13782 - Ruined Wolf Pelt, 13253 - Spiderling Eye, 13069 - Bat Fur
	if (plugin::takeItems(13073 => 1, 13782 => 1, 13253 => 1, 13069 => 1)) {
		quest::say("Fine work! You are on your way to becoming an adequate combatant.");
		#:: Give a random reward: 5013 - Rusty Short Sword, 5014 - Rusty Axe, 5015 - Rusty Scythe, 5016 - Rusty Broad Sword, 5019 - Rusty Long Sword, 5020 - Rusty Battle Axe, 5021 - Rusty Scimitar
		#:: 5022 - Rusty Bastard Sword, 5023 - Rusty Two Handed Sword, 5024 - Rusty Halberd, 5025 - Rusty Two Handed Battle Axe, 5042 - Tarnished Short Sword, 5043 - Tarnished Axe, 5044 - Tarnished Broad Sword
		#:: 5045 - Tarnished Long Sword, 5046 - Tarnished Battle Axe, 5047 - Tarnished Scimitar, 5048 - Tarnished Bastard Sword, 5049 - Tarnished Scythe, 5070 - Tarnished Two Handed Sword, 5071 - Tarnished Two Handed Battle Axe
		#:: 6011 - Rusty Mace, 6013 - Rusty Two Handed Hammer, 6014 - Rusty Warhammer, 6015 - Rusty Flail, 6016 - Rusty Morning Star, 6030 - Tarnished Mace, 6031 - Tarnished Warhammer, 6032 - Tarnished Flail, 6033 - Tarnished Morning Star
		#:: 7007 - Rusty Dagger, 7008 - Rusty Rapier, 7009 - Rusty Spear, 7010 - Rusty Shortened Spear, 7021 - Tarnished Dagger, 7022 - Tarnished Shortened Spear, 7023 - Tarnished Rapier, 7024 - Tarnished Spear
		quest::summonitem(quest::ChooseRandom(5013,5014,5015,5016,5019,5020,5021,5022,5023,5024,5025,5042,5043,5044,5045,5046,5047,5048,5049,5070,5071,6011,6013,6014,6015,6016,6030,6031,6032,6033,7007,7008,7009,7010,7021,7022,7023,7024));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
		#:: Set factions
		quest::faction(92,10);		#:: + Emerald Warriors
		quest::faction(155,-10);	#:: - Indigo Brotherhood
		quest::faction(174,10);		#:: + Kelethin Merchants
		quest::faction(212,10);		#:: + Merchants of Felwithe
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
