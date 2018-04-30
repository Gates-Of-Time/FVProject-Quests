sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("It is good to meet you. $name.  To enter the Temple of Divine Light is to invite Quellious into your body and soul.  Tranquility is our way and. as such. we do all we can to uphold it.  Are you a [" . quest::saylink("cleric of Quellious") . "]. or am I mistaken?");
	}
	if ($text=~/cleric of Quellious/i) {
		quest::say("It is good to meet you. $name.  To enter the Temple of Divine Light is to invite Quellious into your body and soul.  Tranquility is our way and. as such. we do all we can to uphold it.  Are you a [" . quest::saylink("cleric of Quellious") . "]. or am I mistaken?");
		if ($faction <= 5 ) {
			quest::say("I have a small task for you then. Go to the city library and ask the librarian for the book 'The Testament of Vanear'. I shall require it for further studies. Do not return empty-handed or you shall know my rage.");
		}
		elsif ($faction > 5 ) {
			quest::say("You have not done much to upset the Peacekeepers of this temple. but we must ask you to prove yourself to us before we may discuss things such as this.");
		}
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13991 -  Testament of Vanear
	if (plugin::check_handin(\%itemcount, 13991 => 1)) {
		quest::say("I sent you after that book ages ago! What took you so long? I have already completed my studies. Luckily I found the original manuscript under my bedroll. I forgot I had kept it there. Take this as a token of my apology. Maybe it will aid you in your next book hunt. I know how cunning those books can be.");
		#:: Randomly choose Spell: Languid Pace, Fine Steel Morning Star,Cracked Eye stone, or Aged Platinum Bloodstone Earring
		quest::summonitem(quest::ChooseRandom(15302,6351,89036,16647));
		quest::exp(12500);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(247,5); 		#:: + Peace Keepers
		quest::faction(145,-10); 	#:: - High Council of Erudin
		quest::faction(143, 5); 	#:: + Heretics
		quest::givecash(0,0,20,3);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
