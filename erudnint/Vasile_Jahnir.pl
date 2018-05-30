sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings!  You seek knowledge of our ways.  You shall find knowledge and you shall offer knowledge you have been taught.  What is the power of the [" . quest::saylink("Gatecallers") . "]?");
	}
	if ($text=~/gatecaller/i) {
		quest::say("Yes. We are the true summoners of Norrath. We are the power supreme. You will learn more and we shall test you. You will go forth and learn the art of summoning. Let your first test be to master the summoning of the dagger and of food. Return to me two summoned daggers and two of the food source you learn to call forth. Do so, and I shall give you the gloves of the Gatecaller.");
	}
	if ($text=~/slight problem/i) {
		quest::say("We have heard rumor of an troll who has taken residence within the forest of Toxxulia. During your travels in Toxxulia, we command you to keep a watchful eye out for the beast. Slay it on sight and return its head to me. To do so will earn you the spell Fire Flux or Burn, whichever may be available at the time.");
	}			
}

sub EVENT_ITEM {
	#:: Match turn in for 13078 - Summoned: Black Bread, 7305 - Summoned: Dagger
	if (plugin::check_handin(\%itemcount, 13078 => 1, 7305 => 1)) {
		quest::say("You have mastered these spells quickly. You shall now wear the gloves of the Gatecaller. Cumbersome they may feel, but they protect the hands of a young magician. In your young days of magic they will protect you from harm. They are not valued much by merchants, but they are prized by other circles. Nevertheless, we offer them only to our young Gatecallers. You may now be of assistance with a [" . quest::saylink("slight problem") . "].");
		#:: Give item 12209 - Gloves of the Gatecaller
		quest::summonitem(12209);
		#:: Give a small amount of coin
		quest::givecash(0,5,0,0);
		#:: Give a small amount of xp
		quest::exp(175);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(112,10);		#:: + Gate Callers
		quest::faction(145,10);		#:: + High Council of Erudin
		quest::faction(143,-30);	#:: - Heretics
		quest::faction(147,10);		#:: + High Guard of Erudin							
	}			
	#:: Match turn in for 13895 - Troll Head
	if (plugin::check_handin(\%itemcount, 13895 => 1)) {
		quest::say("So the rumor shows true. Good work. You are an excellent student and a noble $race. Here is your spell as I promised. Go forth and fill your brain with knowledge.");
		#:: Give item 15313 - Spell: Fire Flux
		quest::summonitem(15313);
		#:: Give a small amount of coin
		quest::givecash(0,0,10,0);
		#:: Give a small amount of xp
		quest::exp(250);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(112,10);		#:: + Gate Callers
		quest::faction(145,10);		#:: + High Council of Erudin
		quest::faction(143,-30);	#:: - Heretics
		quest::faction(147,10);		#:: + High Guard of Erudin							
	}			
	plugin::return_items(\%itemcount);
}
