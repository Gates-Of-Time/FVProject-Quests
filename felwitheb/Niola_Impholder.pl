sub EVENT_SPAWN {
	#:: Set up a 50 unit distance
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Check for 18777 - Enrollment Letter
	if (plugin::check_hasitem($client, 18777)) {
		$client->Message(15,"As you enter what seems to be a small bedroom, a beautiful High Elf woman looks your way. 'Hello. You have come for training in the ways of the Keepers of the Art? Very good. Please read the note in your inventory and when you are ready to begin, hand it to me.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name. Welcome to the home of the Keepers of the Art. I am in need of spell components. Would you be willing to [" . quest::saylink("fetch") . "] some for me?");
	}
	if ($text=~/fetch/i) {
		quest::say("What I need are some bat wings for a spell I am researching. If you bring me back four bat wings, I would be willing to reward you with a scroll.");
	}
	if ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [" . quest::saylink("second book") . "], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give item 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	if ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give item 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51121);
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13068 -  Bat Wings for Bat Wings Quest
	if (plugin::check_handin(\%itemcount, 13068 => 4)) {
		quest::say("Ah yes.  These are exactly what I need.  Thank you very much.");
		#:: Give random item 15310 or 15332 - Spell: Flare or Spell: Shield of Fire
		quest::summonitem(quest::ChooseRandom(15310,15332));
		#:: Give a small amount of xp
		quest::exp(350);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(170,5);		#:: + Keepers of the Art
		quest::faction(178,5);		#:: + King Tearis Thex
		quest::faction(99,5);		#:: + Faydark's Champions
		quest::faction(322,-10);	#:: - The Dead
	}
	#:: Turn in for 18777 -  Enrollment Letter
	if (plugin::check_handin(\%itemcount, 18777 => 1)) {
		quest::say("Welcome. I am Niola Impholder. Master Magician of the Keepers of the Art. Here is our guild tunic. Once you are ready to begin your training please make sure that you see Yuin Starchaser, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [" . quest::saylink("trades") . "] you will have available to you.");
		#:: Give item 13592 - Faded Training Robe*
		quest::summonitem(13592);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(170,100);	#:: + Keepers of the Art
		quest::faction(178,25);		#:: + King Tearis Thex
		quest::faction(99,15);		#:: + Faydark's Champions
		quest::faction(322,-25);	#:: - The Dead
	}
	#:: Turn in for 18902 -  Torn Drawing
	if (plugin::check_handin(\%itemcount, 18902 => 1)) {
		quest::say("She is still alive? OH, thank you for this news.");
		#:: Give item 1307 - Gossamer Robe
		quest::summonitem(1307);
		#:: Give  xp
		quest::exp(30000);
		#:: Ding!
		quest::ding();
	}
	plugin::return_items(\%itemcount);
}
