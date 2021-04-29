sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 10 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 5, $z + 5, 0);
	#:: Create a timer 'repeat' that triggers every 600 seconds (10 min)
	quest::settimer("repeat", 600);
}

sub EVENT_ENTER {
	#:: Match a 18767 - Small, Folded Note
	if (plugin::check_hasitem($client, 18767)) { 
		$client->Message(15,"Mater appears a bit startled by your appearance. 'You enjoy sneaking up on people do ya? Come to think of it ya do kind of look like you would make a good rogue. Read the note in your inventory and hand it to me when you wish to start your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Welcome to the mines of Kaladim!");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/ready to earn mining pick 628/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("So you have heard of Mining Pick 628 and feel you are ready to wield one? You shall earn one with the return of the ogre head of [Boog Mudtoe] and the 300 gold pieces he still owes me. Don't return unless you have the head and the 300 gold!!");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/boog mudtoe/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Boog Mudtoe is one of the last remaining ogres of the Mudtoe clan. We helped him escape the assault of the Stormguard for a small fee. Unfortunately for him, we have come to believe his head to be more valuable than the fee. We hear there is someone near the port of Butcherblock who knows of the Mudtoe's whereabouts.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	elsif ($text=~/second book/i)   {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Amiable or better, 300 gold pieces, and a 13316 - Ogre Head
	if (plugin::takeItemsCoin(0,0,300,0, 13316 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Very good!! You found him. His head shall bring us a great reward from the Stormguard. And as for you, here is your Mining Pick 628. Only a member of 628 can wield this fine weapon. We are the only ones who can wield it in such a way as to pierce our foes.");
			#:: Give a 12161 - Mining Pick 628
			quest::summonitem(12161);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(322, 10);		#:: + Miners Guild 628
			quest::faction(223, -10);		#:: - Circle Of Unseen Hands
			quest::faction(379, -10);		#:: - Butcherblock Bandits
			quest::faction(241, 10);		#:: + Deeppockets
			quest::faction(244, -10);		#:: - Ebon Mask
			#:: Grant a moderate amount of experience
			quest::exp(5000);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
			#:: Return a 13316 - Ogre Head
			quest::summonitem(13316);
			#:: Return unused money
			quest::givecash($copper, $silver, $gold, $platinum);
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
			#:: Return a 13316 - Ogre Head
			quest::summonitem(13316);
			#:: Return unused money
			quest::givecash($copper, $silver, $gold, $platinum);
		}
	}
	#:: Match a 18767 - Small, Folded Note
	elsif (plugin::takeItems(18767 => 1)) {
		quest::say("Ah, welcome! We could use some fresh blood around here. The name's Mater, and I run this little outfit. Work hard for me, and I will reward you well. Cross me, and you'll find yourself buried under the mine cap. Once you are ready to begin your training please make sure that you see Crovsar Dirkbringer, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13516 - Ruined Miner's Tunic*
		quest::summonitem(13516); #Ruined Miner's Tunic
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(322, 100);			#:: + Miners Guild 628
		quest::faction(223, -5);			#:: - Circle Of Unseen Hands
		quest::faction(379, -5);			#:: - Butcherblock Bandits
		quest::faction(241, 5);				#:: + Deeppockets
		quest::faction(244, -15);			#:: - Ebon Mask
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'repeat'
	if ($timer eq "repeat") {
		#:: Pull a list of clients from the entity list
		my @ClientList = $entity_list->GetClientList();
		#:: Match if the ClientList is not empty
		if (scalar @ClientList > 0) {
			quest::say("Blast all these pesky rats!! Jeet, you need to get one of the new rogues.. I mean miners, to get rid of them!!");
			#:: Send a signal "1" to North Kaladim >> Jeet (67018) with no delay
			quest::signalwith(67018, 1, 0);
		}
	}
}
