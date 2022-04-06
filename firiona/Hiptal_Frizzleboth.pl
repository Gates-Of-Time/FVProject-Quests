sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Bah!! It's not been a good day! Reports from the Outlands are even worse than I was led to believe. Many would-be adventurers have turned up missing of late. One of them was one of my messenger. He was out collecting some of the various new and [interesting scrolls] that have been surfacing in the farthest reaches of this land. I fear for his safety and that of the others searching for the lost travelers. I wish there was more I could do.");
	}
	elsif ($text=~/interesting scrolls/i) {
		quest::emote("reaches into his pouch. 'Well, let's see what I have in here. Ah, yes. The scrolls are definitely worth finding. Possibly even dangerous if they should fall into the wrong hands. But that is why the Collective sent me here. To procure all of the scrolls so that they may be studied at the Library of Mechanimagica. Bah!! But my messenger is missing! I can't fail them. Would you be willing to [help locate] some of the scrolls I am missing?");
	}
	elsif ($text=~/help locate/i) {
		quest::say("You would do that for me? Of course you would, you realize how important my work is here. Your task is quite simple, really. I'll part with one of my rare scrolls if you bring me one of the common ones from the surrounding areas. To be more precise, I am looking for the scrolls Gift of Xev and Bristlebane's Bundle. Oh, my nephew is going to love these! I can't wait to get my hands on them! I'm also looking for the scrolls Quiver of Marr and Scars of Sigil. Bring them back to me as soon as you find one.");
	}
}

sub EVENT_ITEM(){  
	#:: Match a 19351 - Spell: Bristlebane`s Bundle
	if (plugin::takeItems(19351 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19347 - Spell: Gift of Xev
	elsif (plugin::takeItems(19347 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19354 - Spell: Quiver of Marr
	elsif (plugin::takeItems(19354 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19358 - Spell: Scars of Sigil
	elsif (plugin::takeItems(19358 => 1)) {
    	quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");     
		#:: Choose a random 19368 - Spell: Boon of Immolation, 19346 - Spell: Scintillation, 19355 - Spell: Vocarate: Fire or 19357 - Spell: Vocarate: Air
		quest::summonitem(quest::ChooseRandom(19368, 19346, 19355, 19357));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
