sub EVENT_SPAWN {
	#:: Set up a 50 unit distance
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Check for 18769 - Stained Note
	if (plugin::check_hasitem($client, 18769)) { 
		$client->Message(15,"Evah Xokex, a diminutive, but powerful looking gnome turns to address you. 'I am Evah Xokez. The Dark Reflection has called you. Read the note in your inventory and hand it to me to start your training. Your destiny awaits!");
	}
}
  
sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say ("Be wary, $name, there are unseen powers within these mines that can destroy the strongest warriors or the wisest seers. Do you find the rust that corrodes the mechanisms around you and the decaying forms that wander [" . quest::saylink("these tunnels pleasing") . "]?");
	}
	if ($text=~/these tunnels pleasing/i) {
		quest::say("Then perhaps you share the vision of we who have made these mines our home. We are the Dark Reflection and our perceptions have been refined to allow us to see the poisons and disease coursing through every creature's veins and the decay afflicting all forms of matter in Norrath. I can teach you to harness the powers of our divine benefactor if you are [" . quest::saylink("willing to learn") . "] through service to the Dark Reflection.");
	}
	if ($text=~/willing to learn/i) {
		quest::say("Then your first lesson shall be the fulfillment of spreading infection and disease. Some of the best carriers of infectious diseases are rodents. Take this vial containing a slow and painful infection and give it to one of the pregnant giant rodents that can be found outside in the Steamfont Mountains. This way you can spread the disease to not only those creatures which cross the mother's path but also to those who cross the paths of her future offspring. Bring me the empty vial when the task has been completed.");
		#:: Give a 10262 - Vial of Infectious Disease
		quest::summonitem(10262); 
	}
	if ($text=~/components/i) {
		quest::say("The recipe we use to make the plague rat disease is fairly simple. We could easily extract the fluids from the infected rat livers but that would be counterproductive to our cause since it would require the deaths of our rodent carriers. Instead, I need you to collect two parts diseased bone marrow, one sprig of wormwood and one part gnomish spirits to be used as a medium. When you have combined all the components in the container I have provided, return it to me so that we may continue to spread the disease!");
	}	
	if ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [" . quest::saylink("second book") . "], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics: Volume 1
		quest::summonitem(51121); 
	}
	if ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics: Volume II
		quest::summonitem(51122); 
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18769 -  Recruitment Summons
	if (plugin::check_handin(\%itemcount, 18769 => 1)) {
		quest::say("Join us in fulfilling teh will of Bertoxxulous. You can train with us here, in the shadows of the Abbey. Wear this tunic to help conceal your true identity. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [" . quest::saylink("trades") . "] you will have available to you. Once you are ready to begin your training please make sure that you see Derthix Gibblix, he can assist you in developing your hunting and gathering skills.");
		#:: Give item 13518 - Tin Patched Tunic*
		quest::summonitem(13518);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(71,100); 	#:: + Dark Reflection
		quest::faction(91,-10); 	#:: - Eldritch Collective
		quest::faction(115,-10); 	#:: - Gem Choppers
		quest::faction(76,-10); 	#:: - Deep Muses
	}
	#:: Turn in for 10263 -  Empty Infectious Vial
	if (plugin::check_handin(\%itemcount, 10263 => 1)) {
		quest::say("I hope you enjoyed the thrill of your first lesson and the awakening of your vision. Now you must prove your utility to our society. Take this airtight container and gather the [" . quest::saylink("components") . "] for another dose of the plague rat disease.");
		#:: Give item 17357 - Airtight metal box
		quest::summonitem(17357);
		#:: Give a small amount of xp
		quest::exp(150);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(71,3); 		#:: + Dark Reflection
		quest::faction(91,-3); 		#:: - Eldritch Collective
		quest::faction(115,-3); 	#:: - Gem Choppers
		quest::faction(76,-3); 		#:: - Deep Muses
	}	
	#:: Turn in for 10266 -  Container of Infectious Reagents
	if (plugin::check_handin(\%itemcount, 10266 => 1)) {
		quest::say("Ahhh good good. Thse will be put to fine use creating more disease to spread through the rodents. you have done excellent work in helping to spread the work of the Plague Bringer. Take this Symbol of Initiation as your reward.");
		#:: Give item 1390 - Initiate Symbol of Bertixxulous
		quest::summonitem(1390);
		#:: Give a small amount of xp
		quest::exp(200);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(71,3); 		#:: + Dark Reflection
		quest::faction(91,-3); 		#:: - Eldritch Collective
		quest::faction(115,-3); 	#:: - Gem Choppers
		quest::faction(176,-3); 	#:: - King A'Anon
		quest::faction(322, 3); 	#:: + The Dead
	}
	plugin::return_items(\%itemcount);
}
