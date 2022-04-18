sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::emote("gestures as if casting a powerful spell.  'Come forward, adventurer! Come and [see the dancing skeleton]. I shall cast a powerfull spell and bring forth this operatic, clattering jumble of bones and he shall do a fine dance for you. From the nether regions and planes beyond, I call forth this bardic, magical, rhyming, tap-dancing hunk of undead!! I am Oowomp the Great!!'");
	}
	elsif ($text=~/see the dancing skeleton/i) {
		quest::say("Oh!!  You wish to see the great Oowomp perform his magic!! I have studied with the grand mages and wise [McMerin clan] of Norrath. as my speech implies. I can call forth the skeleton with but a twinkling of my power and five of your gold.");
	}
	elsif ($text=~/mcmerin clan/i) {
		quest::say("Clan McMerin were wise shamans from the North. They allowed me to study with them. I learned many spells while I communed with them.  From them, I sto.., I mean, I learned the secret of McMerin's Feast. If you want to know the secret, you could [help gather components] for future rituals.");
	}
	elsif ($text=~/help gather components/i) {
		quest::say("Actually... Not so much help as do - ALL - of the gathering. In the lands of Kunark are clay of Ghiosk, crushed dread diamond and powder of Yun. A rare find would be the bones of one who touched the Bath of Obulus. Find and return these to me and the shaman secret of McMerin's Feast is yours.");
	}
}

sub EVENT_ITEM {
	#:: Match five gold
	if (plugin::takeCoin(0, 0, 5, 0)) {
		quest::emote("flings the coins into the air and they all fall neatly into his oversized coin pouch. 'Gaze in awe at my awesome powers of the arcane!! You, a simple citizen, shall see my power. Allakabam!!'");
		$Mob = quest::unique_spawn(96088, 0, 0, 3122, 5740, 6, 398.75);
		$EntID = $entity_list->GetMobID($Mob);
		$npc->CastSpell(10, $EntID);
		#:: Create a timer 'Dance' that triggers every three seconds
		quest::settimer("Dance", 3);
	}
	#:: Match a 12942 - Strange Ochre Clay, a 12943 - Greyish Bone Chips, a 12944 - Yun Shaman Powder, and a 12945 - Crushed Diamonds, 
	elsif (plugin::takeItems(12942 => 1, 12943 => 1, 12944 => 1, 12945 =>1)) {
		quest::emote("begins to jump for joy. The ground trembles. 'Grand! Here is the secret of McMerin's Feast. Scribe it and you shall learn more of its power.'");
		#:: Give a 12941 - Spell: Cannibalize II
		quest::summonitem(12941);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(45000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'Dance'
	if ($timer eq "Dance") {
		#:: Send a signal '5' to Timorous Deep >> a_dancing_skeleton (96088)
		quest::signalwith(96088, 5, 0);
		quest::stoptimer("Dance");
	}
}
