sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("AHHH get it away from me go away .. leave me alone");
	}
	if($text=~/celestial fists/i) {
		quest::say("Eh? What's that? Bah! That was destroyed long ago. Don't waste my time with fairy taAAAAAGGHHH GET IT AWAY!!!! HELP!!! They're all over MEHEHEHEHEEEEEEee!!");
	}
}

sub EVENT_ITEM {
	#:: Match a 1683 - Celestial Fists
	if((plugin::takeItems(1683 => 1)) && ($ulevel>=46) && ($class=="Monk")) {
		quest::emote("eyes open wide and he attacks you!");
		#:: Give a 1683 - Celestial Fists
		quest::summonitem(1683);
		#:: Attack the player who triggered the event
		quest::attack($name);
		#:: Spawn one and only one Trakanon's Teeth >> #Kaiaren (95183), with no grid or guildwar, at the given location
		quest::spawn2(95183,0,0,2470,306,-339,0);
	}
	#:: Match a 1684 - Charred Scale
	elsif((plugin::takeItems(1684 => 1)) && ($ulevel>=46) && ($class=="Monk")) {
		quest::say("Ahhh, impressive indeed! Now that you have broken the chain of the Fists, the others may come toppling down if you persevere. The Fist of Air is now the weakest, then Earth, and finally Water before the master of them all, Vorash. You must defeat them in order, proving the demise of the last to draw out the one you are after. The task before you now is to take this scale and show it to the Fist of Air wherever he may be. Good luck.");
		#:: Give a 1684 - Charred Scale
		quest::summonitem(1684);
	}
	#:: Match a 1688 - Demon Fangs and a 1689 - Book of Celestial Fists
	elsif((plugin::takeItems(1688 => 1, 1689 => 1)) && ($ulevel>=46) && ($class=="Monk")) {
		quest::emote("bows his head and breathes a long sigh as if relived of a great weight. He then looks up at you and says, 'I honestly did not believe you could have defeated Vorash. Even though he sought nothing but war and bloodshed, it is a life nonetheless and we must mourn him. I will sew these fangs into magical fist wraps and they shall be yours. Remember Xenevorash. A purpose can be found for every situation and individual. To achieve perfection is to perceive this truth.'");
		#:: Give a 10652 - Celestial Fists
		quest::summonitem(10652);
	}
	else {
		quest::say("I have no need for this item $name, you can have it back.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH {
  	quest::say("Not bad.. Now lets see if you can find my trueform if you do we discuss this further.");
}