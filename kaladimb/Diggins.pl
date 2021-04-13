sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("How is life treating you, bud? What are you doing around the mines? Either you are a [member of 628] or you are lost. If you are lost, I can't help you. I ain't no guide.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/member of 628/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("It's my duty to assign [guild tasks] to all new members of Mining Guild 628.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/guild tasks/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I see you are interested in helping out. Good! For starters, go into the surrounding territory of Kaladim and destroy all the goblins. We hear they sometimes carry necklaces of ornate design. 628 wants these Runnyeye warbeads. You bring me no fewer than four and I will pay you and maybe, just maybe, I may have an extra piercing weapon lying around which has your name on it.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/earn a parrying pick/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("So you want to earn a parrying pick? Consider it an honor that I am even speaking of this with you. The guild had these picks made just for us. It is a magic item used to fend off attacks. Before you can have one, you will have to do me a [great favor].");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif ($text=~/great favor/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Mater has asked me to exterminate the dwarven family of Dunfire. They were once members of our guild. They left and now use their talents to aid the Butcherblock bandits. We will not allow them to speak of the skills we taught them. Go and rip out their tongues. Return the tongues of Crytil, Rondo, Keldyn, and Barma Dunfire and the parrying pick is yours.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Amiable or better and four 13931 - Runnyeye Warbeads
	if (($faction <= 4) && (plugin::takeItems(13931 => 4))) {
		quest::say("Good work. We shall add these to the stash. Here is your reward, as promised. Be happy with it and continue your work. Maybe soon you shall be able to [earn a parrying pick].");
		#:: Give a random reward: 7007 - Rusty Dagger, 7008 - Rusty Rapier, 7009 - Rusty Spear, 7010 - Rusty Shortened Spear
		quest::summonitem(quest::ChooseRandom(7007, 7008, 7009, 7010));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(322, 10);	#:: + Miners Guild 628
		quest::faction(223, -1);	#:: - Circle Of Unseen Hands
		quest::faction(379, -1);	#:: - Butcherblock Bandits
		quest::faction(241, 1);		#:: + Deeppockets
		quest::faction(244, -1);	#:: - Ebon Mask
		#:: Grant a moderate amount of experience
		quest::exp(5000);
		#:: Create a hash for storing cash - 20 to 45cp
		my %cash = plugin::RandomCash(20, 45);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match if faction is Amiable or better and 12170 - Crytil's Tongue, 12172 - Keldyn's Tongue, 12174 - Barma's Tongue, 12178 - Rondo's Tongue
	elsif (($faction <= 4) && (plugin::takeItems(12170 => 1, 12172 => 1, 12174 => 1, 12178 => 1))) {
		quest::say("Excellent work!! You are quite an asset to this mining guild. Please accept this Parrying Pick 628 for your great service. If you truly wish to serve our guild. Go and speak with Mater. Tell him you are ready to earn Mining Pick 628.");
		#:: Reward a 12166 - Parrying Pick 628
		quest::summonitem(12166);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(322, 50);	#:: + Miners Guild 628
		quest::faction(223, -2);	#:: - Circle Of Unseen Hands
		quest::faction(379, -2);	#:: - Butcherblock Bandits
		quest::faction(241, 2);		#:: + Deeppockets
		quest::faction(244, -7);	#:: - Ebon Mask
		#:: Reward a moderate amount of experience
		quest::exp(5000);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
	#:: Return unused items
	plugin::returnUnusedItems();
}
