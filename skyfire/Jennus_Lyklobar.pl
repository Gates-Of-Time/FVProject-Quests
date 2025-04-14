sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Hello and well met! A $race like you does not often come here.. Do you come seeking what I possess? Fire, fire, fire and fire is mine! I surround myself with fire, I bathe in fire, I consume fire, I am the Master of Fire! Hahahaha, but I digress. Have you come for the element of Fire, seeking to fall to the same fate as Trilith Magi'kot?");
		}
		elsif ($text=~/i have come for the element of fire/i) {
			quest::say("The Element of Fire I can provide you, but you must prove you are able to contain its power. Bring me the Torch of the Elements now kept by a doomed lord of merchants, the burning embers from a notable member of wurmkind who can be found a short journey from here and a blazing wand, which you should be familiar with. And you must surrender the tome Rykas gave you. But I think you would be happier if you stayed with me and learned more of the beauty of the one true element, FIRE! FIRE! Hahahahahahah!");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 18958 - Power of the Orb, a 28007 - Torch of the Elements, a 10376 - Blazing Wand and a 28008 - Burning Embers
		if (plugin::takeItems(18958 => 1, 28007 => 1, 10376 => 1, 28008 => 1)) {
			quest::say("I see that you are well versed in the ways of Fire. Indeed, if you are as adept in the other, lesser elements, you may just seize the Orb of Mastery after all, and avoid Magi'kot's fate. Take this element, and guard it well, for more trials are to come, I assure you. Succeed and you shall be remembered always! Oh, and $name? Watch out for the puddles! HAHAHAHAHAHA!");
			#:: Give a 28009 - Element of Fire
			quest::summonitem(28009);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(3000);
		}
		else {
			quest::say("I do not need these.");  
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
