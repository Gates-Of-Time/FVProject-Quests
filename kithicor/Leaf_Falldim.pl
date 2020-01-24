sub EVENT_SAY { 
    if($text=~/Hail/i){
	quest::say("Greetings. $name!  Respect the woods and all its inhabitants or face the wrath of the rangers.  Do not end up like [Maldyn Greenburn].");
    }
    if($text=~/maldyn greenburn/i){
	quest::say("Maldyn was once one of us.  He was the finest of archers.  Everyone aspired to be like him.  He soon was tempted to hunt.  The animals of these woods found themselves nothing more than moving targets for Maldyn's training.  We held a trial and exiled him to parts unknown.  He would take with him Morin's [Bow of Kithicor].  I was asked to find a worthy ranger to [retrieve the bow].");
    }
    if($text=~/bow of kithicor/i){
	quest::say("The Bow of Kithicor was carved from an ancient tree. It has great powers which were but a portion of the tree's mana. I seek a brave ranger to [retrieve the bow].");
    }
    if($text=~/retrieve the bow/i){
	quest::say("Search the lands of the Unkempt Druids in the Rathe Mountains.  I have heard of his arrows being found inside its territories and  of his death wish to hunt down its leader.  Retrieve the bow and return it to me and I shall give you the ivy etched gauntlets.");
    }
    if($text=~/leggings/i){
	quest::say("I will make you an offer. If you be a ranger, as they are made for only a ranger, you must venture to Faydwer. There you shall seek out Lieutenant Leafstalker of the Kelethin army. He sent a message of his retrieval of the Quiver of Kithicor. Tell him you want it and return it to me. Oh... and one more [small item].");
    }
    if($text=~/small item/i){
	quest::say("Along with the quiver you shall journey to Erudin and purchase a Star of Odus gem to add to the quiver. Consider the coins you shall spend an offering to the woods.");
    }  
    if($text=~/boots/i){
	quest::say("If you wish the ivy etched boots, you shall do me a favor. I am testing new arrow tips and wish a few of the hardest minerals I know of. From the mines of the Temple of Solusek Ro, ronium. From the land of Mistmoore, fetch me Mistmoore granite. Return these to me along with a guild offering of 2000 gold pieces.");
    }        
}

sub EVENT_ITEM {
	#::Broken Bow Part A - 12320 and Broken Bow Part B - 12321
	if(plugin::takeItems(12321 => 1, 12320 => 1)) {
		#:: Ivy Etched Guantlets - 3190
		quest::summonitem(3190);
		quest::say("You have performed well, brave ranger. Put these upon your hands. Protection from the strongest of bowstring and magic are their greatest power. I do believe we have another mission which may yield you the ivy etched [leggings]");
		quest::faction(269,+30); # kithicor residence
		quest::faction(302,+30); # protectors of the pine
		quest::faction(272,+30); # jaggedpine treefolk
		quest::faction(324,-60); # unkempt druids
		quest::exp(10000);		
    }
   	 #:: Bar of Ronium 12305, Mistmoore Granite - 12306, and 2000 gold pieces
	elsif(plugin::takeItemsCoin(0,0,2000,0, 12305 => 1, 12306 => 1)) {
		quest::say("You have succeeded!! I believe I owe you the ivy etched boots.");
		#ivy etched boots
		quest::summonitem(3192);
		quest::faction(269,+30); # kithicor residence
		quest::faction(302,+30); # protectors of the pine
		quest::faction(272,+30); # jaggedpine treefolk
		quest::faction(324,-60); # unkempt druids
		quest::exp(10000);		
    }
    #:: Star of Odus - 12321 and the closed Quiver of Kithicor - 12320.
    elsif(plugin::takeItems(10059 => 1, 12328 => 1)) {
    		#:: Ivy Etched Leggings - 3191
		quest::summonitem(3191);
		quest::say("Wonderful!! I see he did find it. How lucky we are that he did all the hard work. My thanks to you are embodied in these ivy etched leggings. Now you may earn the ivy etched [boots] to go along with them.");
		quest::faction(269,+30); # kithicor residence
		quest::faction(302,+30); # protectors of the pine
		quest::faction(272,+30); # jaggedpine treefolk
		quest::faction(324,-60); # unkempt druids
		quest::exp(10000);		
    }
    plugin::returnUnusedItems();
}


# END of FILE Zone:kithicor  ID:20077 -- Leaf_Falldim 

