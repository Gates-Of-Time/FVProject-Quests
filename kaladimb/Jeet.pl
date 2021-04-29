sub EVENT_SAY  {
	if ($text=~/hail/i) {
		#:: Match if faction is Dubious or better
		if ($faction <= 7) {
			quest::say("What business do you have here?!! This here is the mine and that means if you ain't a [member of Miner's Guild 628], you'd best be moving on!!");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif (($text=~/member of miner's guild 628/i)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Well, then, get off yer rump and give us a hand! If you don't have a mining pick, then get down there and use your fingernails!! If you're new and you want to earn a pick, you can [volunteer to exterminate the rats] that have been infesting the mines!!");
		}
		#:: Match if faction is Indifferent 
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif (($text=~/volunteer to exterminate the rats/i)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Well, someone has to do the dirty work around here. Let it be you new miners. Go patrol the mines and if you see any rats, bash them good!! Return to me with four rat pelts and I will give you some armor as payment. If you want a 628 mining cap, yer gonna have to smash that infernal [cleaner]!!");
		}
		#:: Match if faction is Indifferent 
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif (($text=~/run to the gnome city/i)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Well, as you most likely know, we are a non-profit organization, at least here in Kaladim. We need to make our profit elsewhere and that means a little bit of thieving. Presently we need loyal members to [collect the gnome profit].");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif (($text=~/collect the gnome profit/i)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Take this key. Don't lose it!! You will need to use it on a metal rat called a scrubber. They are all over Ak'Anon. You must find the one that responds to the number, '628'. If it responds, use the key on it. It will hand over a bag with the 'gnome take'. Return it to me. Get moving!!");
			#:: Give a 12164 - Scrubber Key
			quest::summonitem(12164); # Scrubber Key
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
		}
	}
	elsif (($text=~/cleaner/i)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Darn that blasted clockwork cleaner!! No one in Kaladim even knows what it is! They all think it's some kinda rat in armor!! Rat paladins?!! The name fits. We miners have seen many like it in the gnome city during heists, err.. visits. We have to get rid of this one in Kaladim!! If you smash it and get its scrap metal, I am authorized to give you a mining cap, if you are a member of Miner's Guild 628.");
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
	#:: Match four 13054 - Giant Rat Pelt
	if (plugin::takeItems(13054 => 4)) {
		quest::say("It's about time you managed to smash these four!! Here. You do good work. We could use someone like you to [run to the gnome city]."); 
		#:: Give a random reward: 2117 - Small tattered shoulderpads, 2119 - Small tattered Belt, 2122 - Small tattered gloves, 2115 - Small Tattered Gorget, 2114 - Small Tattered Mask, 2113 - Small tattered skullcap, 2121 Small Tattered Wristbands
		quest::summonitem(quest::ChooseRandom(2117, 2119, 2122, 2115, 2114, 2113, 2121));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(322, 10);		#:: + Miners Guild 628
		quest::faction(223, -10);		#:: - Circle Of Unseen Hands
		quest::faction(379, -10);		#:: - Butcherblock Bandits
		quest::faction(241, 10);		#:: + Deeppockets
		quest::faction(244, -10);		#:: - Ebon Mask
		#:: Reward a moderate amount of experience
		quest::exp(5000);
	}
	#:: Match a 13282 - Scrap Metal
	elsif (plugin::takeItems(13282 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Great work!! We need this junk for something and we sure didn't need this rat sucking up any of our gems. Here. This is a Mining Cap 628. It's not much, but it is the mark of our miners and provides light for mining purposes. Hold onto it. You never know when we may call upon you to produce it.");
			#:: Give a 12165 - Miners Cap 628
			quest::summonitem(12165);
			#:: Ding!
			quest::ding();
			#:: Reward a moderate amount of experience
			quest::exp(5000);
			#:: Set factions
			quest::faction(322, 10);		#:: + Miners Guild 628
			quest::faction(223, -10);		#:: - Circle Of Unseen Hands
			quest::faction(379, -10);		#:: - Butcherblock Bandits
			quest::faction(241, 10);		#:: + Deeppockets
			quest::faction(244, -10);		#:: - Ebon Mask
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
			#:: Return a 13282 - Scrap Metal
			quest::summonitem(13282);
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
			#:: Return a 13282 - Scrap Metal
			quest::summonitem(13282);
		}
	}
	#:: Match a 12167 - Gnome Take (Bad)
	elsif (plugin::takeItems(12167 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("What is all this junk!! That blasted tin rat is supposed to be heisting expensive goods from rich gnomes - not all this garbage!! Here. This is your cut of this junk.");
			#:: Give a random reward: 13220 - Ionys Absorber, 10015 - Malachite, 10500 - Small Piece of Ore, 10016 - Lapis Lazuli
			quest::summonitem(quest::ChooseRandom(13220, 10015, 10500, 10016));
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
			#:: Create a hash for storing cash - 15 to 25cp
			my %cash = plugin::RandomCash(15,25);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Don't take this personally, but I can't quite trust you with such matters. Maybe a few less Butcherblock bandits would prove your worth.");
			#:: Return a 12167 - Gnome Take (Bad)
			quest::summonitem(12167);
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
			#:: Return a 12167 - Gnome Take (Bad)
			quest::summonitem(12167);
		}
	}
	#:: Match a 12162 - Gnome Take (Good)
	elsif (plugin::takeItems(12162 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Good work miner. This is a fantastic haul!! Those wrinkly little gnomes don't know what is going on. Here is your cut. Now get back to work.");
			#:: Give a random reward: 10017 - Turquoise, 10020 - Jasper, 10006 - Silver Earring, 10320 - Golden Ear Stud, 10019 - bloodstone 
			quest::summonitem(quest::ChooseRandom(10017,10020,10006,10320,10019));
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
			#:: Return a 12162 - Gnome Take (Good)
			quest::summonitem(12162);
		}
		else {
			quest::say("The word around the mines is that you are not to be trusted. You'd best leave before my dagger finds a new home in your back.");
			#:: Return a 12162 - Gnome Take (Good)
			quest::summonitem(12162);
		}
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from kaladimb/Mater.pl
	if ($signal == 1) {
		#:: Pull a list of clients from the entity list
		my @ClientList = $entity_list->GetClientList();
		#:: Match if the ClientList is not empty
		if (scalar @ClientList > 0) {
			quest::say("I am working on it, Mater!!");
		}
	}
}
