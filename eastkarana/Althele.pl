my $depop1;
my $depop2;
my $depop3;
my $depop4;
my $depop5;
my $entid1;
my $entid2;
my $entid3;
my $mob1;
my $mob2;
my $mob3;
my $start;
my $moving;
my $depopnpc1;
my $depopnpc2;
my $depopnpc3;
my $depopnpc4;
my $depopnpc5;

sub EVENT_SAY {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		if ($text=~/hail/i) {
			quest::say("Hello, friend. Beautiful is what I would call such a day normally but lately?");
		}
		if ($text=~/your eyes/i) {
			quest::say("Yes. I cannot see any longer, my sight long since lost in the march of years. By the blessings of Tunare and Karana, though, I still make myself useful.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20448 - Worn Dark Metal Coin
		if (plugin::takeItems(20448 => 1)) {
			quest::emote("looks at the coin and nods gravely at you as she slips it into a fold of her clothing. 'I see. The story of this coin speaks much to me as do the words you have given me. Telin sent word that you would arrive. The tidings you bring are ill indeed. Here, take this amulet and find Sionae. She is nearby. We will speak more on this matter when all are present.'");
			#:: Give a 20450 - Braided Grass Amulet
			quest::summonitem(20450);
			#:: Ding!
			quest::ding();
			#:: Spawn a Eastern Plains of Karana >> Sionae (15178), without grid or guild war, at the given location
			quest::spawn2(15178,0,0,-1595,-2595,3.2,127);
		}
		#:: Match a 20452 - Fleshbound Tome
		elsif (plugin::takeItems(20452 => 1)) {
			quest::emote("hands the book to Tholris who reads through it with lines of concern etched on his face, then whispers into her ear. 'Dire news, indeed. This cannot be allowed. I must keep this book but you, $name, must not allow Innoruuk to seed the land with his hatred and filth. You have only just begun your quest. The path you are guided upon will be difficult, if not impossible, but someone must finish it. Please, take this, read of it, follow its instructions. Tunare bless your path and Karana watch over you.");
			#:: Give a 18959 - Earth Stained Note
			quest::summonitem(18959);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(100000);
			
			#:: Match a Eastern Plains of Karana >> Sionae (15178) on the entity list
			$depop = $entity_list->GetMobByNpcTypeID(15178);
			if ($depop) {
				$depopnpc = $depop->CastToNPC();
				$depopnpc->Depop();
			}

			#:: Match a Eastern Plains of Karana >> Nuien (15167) on the entity list
			$depop = $entity_list->GetMobByNpcTypeID(15167);
			if ($depop) {
				$depopnpc = $depop->CastToNPC();
				$depopnpc->Depop();
			}

			#:: Match a Eastern Plains of Karana >> Teloa (15170) on the entity list
			$depop = $entity_list->GetMobByNpcTypeID(15170);
			if ($depop) {
				$depopnpc = $depop->CastToNPC();
				$depopnpc->Depop();
			}

			#:: Match a Eastern Plains of Karana >> Tholris (15043) on the entity list
			$depop = $entity_list->GetMobByNpcTypeID(15043);
			if ($depop) {
				$depopnpc = $depop->CastToNPC();
				$depopnpc->Depop();
			}

			#:: Match a Eastern Plains of Karana >> Fang (15042) on the entity list
			$depop = $entity_list->GetMobByNpcTypeID(15042);
			if ($depop) {
				$depopnpc = $depop->CastToNPC();
				$depopnpc->Depop();
			}
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
		else {
			quest::emote("will not take this item.");
		}
  	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal "99" from /eastkarana/Sionae.pl
	if ($signal == 15178) {
		#:: Match a Eastern Plains of Karana >> Sionae (15178) on the entity list
		$start = $entity_list->GetMobByNpcTypeID(15178);
		$moving = $start->CastToNPC();
		$moving->SignalNPC(1);
	}
	#:: Match a signal "99" from /eastkarana/Nuien.pl
	elsif ($signal == 15167) {
		#:: Match a Eastern Plains of Karana >> Nuien (15167) on the entity list
		$start = $entity_list->GetMobByNpcTypeID(15167);
		$moving = $start->CastToNPC();
		$moving->SignalNPC(1);
	}
	else {
		#:: Create a timer 'prep' that triggers in 90 seconds (1.5 min)
		quest::settimer("prep",90);
		#:: Create a timer 'attack' that triggers in 120 seconds (2 min)
		quest::settimer("attack",120);
		#:: Create a timer 'depop' that triggers in 600 seconds (10 min)
		quest::settimer("depop",600);
		#:: Match a Eastern Plains of Karana >> Teloa (15170) on the entity list
		$start = $entity_list->GetMobByNpcTypeID(15170);
		$moving = $start->CastToNPC();
		$moving->SignalNPC(1);
	}
}

sub EVENT_TIMER {  
	if ($timer eq "prep") { # gives the last druid, teloa, time to walk to the gathering
		#:: Step the timer 'prep'
		quest::stoptimer("prep");    
		quest::say("Great mother of life and father of sky, growth and spirit, Tunare and Karana. Innoruuk once again schemes and we have failed in our duties to protect our land. We give our powers in sacrifice for your help. Heed our call and send us your wisdom.");
		#:: Send a signal "99" to Eastern Plains of Karana >> Sionae (15178) with a three second delay
		quest::signalwith(15178,99,3);
		#:: Send a signal "99" to Eastern Plains of Karana >> Nuien (15167) with a six second delay
		quest::signalwith(15167,99,6);
		#:: Send a signal "99" to Eastern Plains of Karana >> Teloa (15170) with a nine second delay
		quest::signalwith(15170,99,9);
		#:: Send a signal "99" to Eastern Plains of Karana >> Tholris (15043) with a twelve second delay
		quest::signalwith(15043,99,12);
	}
	elsif ($timer eq "attack") { #dark elves start to make their way to the gathering
		#:: Step the timer 'attack'
		quest::stoptimer("attack");
		quest::emote("snaps her head towards you. 'Innoruuk's brood is upon us. Go, find the spawn of hatred before they reach this point and destroy them!");

		#:: Spawn a Eastern Plains of Karana >> Dark_Elf_Corruptor (15153), without grid or guild war, at the given location
		$entid = quest::spawn2(15153,0,0,-996,-1529,354,130);
		$mob = $entity_list->GetMobID($entid);
		#:: Add the Althele to the hate list of the Dark_Elf_Corruptor
		my $mobattack = $mob->CastToNPC();
		$mobattack->AddToHateList($npc, 1);
		
		#:: Spawn a Eastern Plains of Karana >> Dark_Elf_Reaver (15150), without grid or guild war, at the given location
		$entid = quest::spawn2(15150,0,0,-1090,-1529,355.4,130);
		$mob = $entity_list->GetMobID($entid);
		#:: Add the Althele to the hate list of the Dark_Elf_Reaver
		my $mobattack = $mob->CastToNPC();
		$mobattack->AddToHateList($npc, 1);
		
		#:: Spawn a Eastern Plains of Karana >> Dark_Elf_Reaver (15150), without grid or guild war, at the given location
		$entid = quest::spawn2(15150,0,0,-1063,-1490,367.5,130);
		$mob = $entity_list->GetMobID($entid);
		#:: Add the Althele to the hate list of the Dark_Elf_Reaver
		my $mobattack = $mob->CastToNPC();
		$mobattack->AddToHateList($npc, 1);
	}
	elsif ($timer eq "depop") { #something might have gone wrong resetting the druids after 10 minutes
		#:: Step the timer 'depop'
		quest::stoptimer("depop");
		#:: Match a Eastern Plains of Karana >> Sionae (15178) on the entity list
		$depop = $entity_list->GetMobByNpcTypeID(15178);
		if ($depop) {
			$depopnpc = $depop->CastToNPC();
			$depopnpc->Depop();
		}

		#:: Match a Eastern Plains of Karana >> Nuien (15167) on the entity list
		$depop = $entity_list->GetMobByNpcTypeID(15167);
		if ($depop) {
			$depopnpc = $depop->CastToNPC();
			$depopnpc->Depop();
		}

		#:: Match a Eastern Plains of Karana >> Teloa (15170) on the entity list
		$depop = $entity_list->GetMobByNpcTypeID(15170);
		if ($depop) {
			$depopnpc = $depop->CastToNPC();
			$depopnpc->Depop();
		}
	}
}
