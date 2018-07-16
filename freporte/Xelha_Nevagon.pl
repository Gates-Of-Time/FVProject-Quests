sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("A new recruit to our cause.  Just what I have been waiting for!  How would you like to serve the great Xelha Nevagon?  I need an apprentice necromancer to [" . quest::saylink("assist the great Xelha") . "].");
	}
	if ($text=~/assist the great xelha/i) {
		quest::say("Fantastic.  Stick with me and you shall ascend in our ranks quickly.  I am in need of some components for new spells.  Will you collect them for me?  I shall need four each of the following - fire beetle eyes. bone chips and spiderling silk.  Fetch these items for me at once. Well..? Did not you hear the great Xelha? Begone!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13099 -  Spiderling Silk x4
	if (plugin::check_handin(\%itemcount, 13099 => 4)) {
		quest::say("Let's see here. One.. two.. three.. and.. four. Great!! Just enough for my needs. You are serving Xelha well. I give you Xelha's Sparkler. It is not much, but neither are you. You know what I really need is a cyclops eye. That would be worthy of a great reward.");
		#:: Give item 12247 - Xelha's Sparkler
		quest::summonitem(12247);
		#:: Give a small amount of xp
		quest::exp(60);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(86,1); 		#:: + Dismal Rage
		quest::faction(184,-1); 	#:: - Knights of Truth
		quest::faction(235,1); 		#:: + Opal Dark Briar
		quest::givecash(0,4,0,0);	#:: Give a small amount of cash copper - plat
	}
	#:: Turn in for 10307 -  Fire Beetle Eye x4
	if (plugin::check_handin(\%itemcount, 10307 => 4)) {
		quest::say("Let's see here. One.. two.. three.. and.. four. Great!! Just enough for my needs. You are serving Xelha well. I give you Spell: Cavorting Bones. It is not much, but neither are you. You know what I really need is a cyclops eye. That would be worthy of a great reward.");
		#:: Give item 15338 - Spell: Cavorting Bones
		quest::summonitem(15338);
		#:: Give a small amount of xp
		quest::exp(40);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(86,1); 		#:: + Dismal Rage
		quest::faction(184,-1); 	#:: - Knights of Truth
		quest::faction(235,1); 		#:: + Opal Dark Briar
		quest::givecash(8,1,0,0);	#:: Give a small amount of cash copper - plat
	}
	#:: Turn in for 13073 -  Bone Chips x4
	if (plugin::check_handin(\%itemcount, 13073 => 4)) {
		quest::say("Let's see here. One.. two.. three.. and.. four. Great!! Just enough for my needs. You are serving Xelha well. I give you Spell: Cavorting Bones. It is not much, but neither are you. You know what I really need is a cyclops eye. That would be worthy of a great reward.");
		#:: Give a small amount of xp
		quest::exp(20);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(86,1); 		#:: + Dismal Rage
		quest::faction(184,-1); 	#:: - Knights of Truth
		quest::faction(235,1); 		#:: + Opal Dark Briar
		quest::givecash(8,1,0,0);	#:: Give a small amount of cash copper - plat
	}
	#:: Turn in for 13927 -  Cyclops Eye
	if (plugin::check_handin(\%itemcount, 13927 => 1)) {
		quest::say("A cyclops eye!! You are stronger than I believed. You will rise in the ranks of the Dismal Rage quickly with acts such as this!! I am most appreciative! Here, take this. It was lying around my shelves, just gettingg all dusty. I hope you can use it. And watch yourself in your journeys, the aura of your faith in Innoruuk surrounds you like a shroud. Our enemies will surely see you for what you are.");
		#:: Give item 15331 - Spell: Reclaim Energy
		quest::summonitem(15331);
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(86,1); 		#:: + Dismal Rage
		quest::faction(184,-1); 	#:: - Knights of Truth
		quest::faction(235,1); 		#:: + Opal Dark Briar
		quest::givecash(8,1,0,0);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
