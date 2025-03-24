sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18851 - Blood Stained Note
	if (plugin::check_hasitem($client, 18851)) { 
		$client->Message(15,"As you orient yourself amongst the filth and decay of the catacombs, a menacing figure turns to address you. 'I am Reania Jukle. Should you wish to dedicate your pathetic life to the way of Bertoxxulous and learn the ways of the Enchanter, read the note in your inventory and hand it to me to begin your training.'");
	}
}

sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Greetings $name. What can I help you with?");
	}
	elsif($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	elsif ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
	elsif (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if ($text=~/what is the ink of the dark/i) {
			quest::say("Ink of the Dark, you say? That isn't an everyday item, you know. In fact, I can't remember the last time someone requested it. I have given up keeping any here with me. You are going to need to find your own supply now. Sorry.");
		}
		elsif($text=~/where can i find the ink of the dark/i) {
			quest::say("The ink is the blood of a dark scribe. Tempt him and give him this vial. He should cooperate.");
			#:: Give a 10626 - Empty Ink Vial
			quest::summonitem(10626);
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 18851 - Blood Stained Note
	if (plugin::takeItems(18851 => 1)) {
		quest::say("A new initiate always pleases me, here is your tunic. Once you are ready to begin your training please make sure that you see Bruax Grengar, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13596 - Dirty Purple Robe*
		quest::summonitem(13596);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(221, 100);		#:: + Bloodsabers
		quest::faction(262, -15);		#:: - Guards of Qeynos
		quest::faction(296, 10);		#:: + Opal Darkbriar
		quest::faction(341, -25);		#:: - Priests of Life
		quest::faction(230, 5);			#:: + Corrupt Qeynos Guards
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
