sub EVENT_SPAWN {
  #:: Set up a 50 unit distance
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  #:: Check for 18779 - An Enrollment Letter
  if(plugin::check_hasitem($client, 18779)) { 
		$client->Message(15,"As you get your bearings, Tarker Blazetoss, an important looking High Elf turns to greet you. 'Welcome young wizard. I am guild Master Tarker Blazetoss. Read the note in your inventory and once you are ready to begin your training, hand me your note. I welcome you to our crusade against evil.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Hail and well met, $name!  Have you come to study. or can you [" . quest::saylink("perform a task") . "] for me this day?");
	}
	if ($text=~/perform a task/i) {
		quest::emote("That is the spirit.  There are many black wolves wandering Faydark these days.  One of my brethren needs a black wolf skin as a component for his magic.  Bring me a black wolf skin. and I shall reward you for your efforts.");
	}
	if ($text=~/trades/i) {
		quest::emote("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [" . quest::saylink("second book") . "], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give item 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	if ($text=~/second book/i) {
		quest::emote("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give item 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18779 -  Enrollment letter
	if (plugin::check_handin(\%itemcount, 18779 => 1)) {
		quest::say("Welcome to the wizards' guild of the Keepers of the Art. My name's Tarker, and I run this guild. You've got a lot of training ahead of you, so let's get started. Here, take this - it's our guild tunic. Wear it with honor, friend. Once you are ready to begin your training please make sure that you see Yuin Starchaser, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [" . quest::saylink("trades") . "] you will have available to you.");
		#:: Give item 13594 - Singed Training Robe*
		quest::summonitem(13594);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(170,100); 	#:: + Keepers of the Art
		quest::faction(178,25); 	#:: + King Tearis Thex
		quest::faction(99,15); 		#:: + Faydark's Champions
		quest::faction(322,-25); 	#:: - The Dead
	}
	#:: Turn in for 13758-  Black Wolf Skin
	if (plugin::check_handin(\%itemcount, 13758 => 1)) {
		quest::say("Ah yes.  This is exactly what I need.  Thank you very much.");
		#:: Randomly choose Rusty Dagger, Bandages, Simple Copper Ring, Spell: Numbing Cold, Worn Great Staff
		quest::summonitem(quest::ChooseRandom(7007,13009,58094,59964,6012));
		#:: Give a small amount of xp
		quest::exp(350);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(170,10); 	#:: + Keepers of the Art
		quest::faction(178,10); 	#:: + King Tearis Thex
		quest::faction(99,10); 		#:: + Faydark's Champions
		quest::faction(322,-10); 	#:: - The Dead
	}
	plugin::return_items(\%itemcount);
}
