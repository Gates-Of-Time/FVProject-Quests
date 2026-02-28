sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Avast you! Ya best be shoving off if ye knows whats good for you. We be pirate raiders and ya best not be messing with the likes of us!");
		quest::settimer("ritap1", 2);
	}
	elsif ($text=~/tinkered rope/i) {
		quest::say("Batten down yer yapper! Ahl be doin the talking here. We be needin the rope to tie ye down fer ransom. Now fetch me the beard of a frost giant scout so's I can make some more rope to tie ye up with.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from Iceclad Ocean >> Ratop (110052)
	if ($signal == 1) {
		#:: Create a timer 'ritap2' that triggers every 2 seconds
		quest::settimer("ritap2", 2)
	}
	#:: Match a signal '101' from Iceclad Ocean >> Ratop (110052)
	elsif($signal == 101) {
		quest::say("Arrrrrrrrrrr!");
	} 
}

sub EVENT_ITEM {
	#:: Match a 30048 - Frost Giant Scout Beard
	if (plugin::takeItems(30048)) {
		quest::say("Arg! By blubberbeards nostril! Ye'v done it!'");
		quest::emote("He braids the beard together into a sturdy rope.");
		quest::say("Now take this here rope and tie yerself up! Come lets go tell the cap'n we've captured us some prisoners!");
		#:: Give a 30049 - Tinkered Rope
		quest::summonitem(30049);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
		#:: Set faction
		quest::faction(447,30); 	#:: + Pirates of Iceclad
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'ritap1'
	if ($timer eq "ritap1") {
		#:: Stop the timer 'ritap1' from triggering
		quest::stoptimer("ritap1");

		my $x = $npc->GetX();
		my $y = $npc->GetY();
		my $z = $npc->GetZ();
		my $h = $npc->GetHeading();

		my $mobid = $entity_list->GetMobByNpcTypeID(110052);
		if ($mobid) {
			my $mobnpc = $mobid->CastToNPC();
			$mobnpc->SignalNPC(1);
		}
		else {
			#:: Spawn one and only one Iceclad Ocean >> Ratop (110052), with no grid or guildwar, at the current location
			my $ent = quest::spawn2(110052, 0, 0, $x-9, $y-1, $z, $h);
			my $mob = $entity_list->GetMobID($ent);
			my $mobnpc = $mob->CastToNPC();
			$mobnpc->SignalNPC(1);
		}
	}
	#:: Match timer 'ritap2'
	elsif ($timer eq "ritap2") {
		#:: Stop the timer 'ritap2' from triggering
		quest::stoptimer("ritap2");
		quest::say("The cap'n said PIRATES! Not parrots, ye knucklehead!");
		quest::emote("whacks the other raider upside the head.");
		quest::say("Now whar's the tinkered rope!?");
		#:: Create a timer 'ritap3' that triggers every 2 seconds
		quest::settimer("ritap3", 2);
	}
	#:: Match timer 'ritap3'
	elsif ($timer eq "ritap3") {
		#:: Stop the timer 'ritap3' from triggering
		quest::stoptimer("ritap3");
		my $mobid = $entity_list->GetMobByNpcTypeID(110052);
		if ($mobid) {
			my $mobnpc = $mobid->CastToNPC();
			$mobnpc->SignalNPC(2);
		}
		else {
			#:: Spawn one and only one Iceclad Ocean >> Ratop (110052), with no grid or guildwar, at the current location
			my $ent = quest::spawn2(110052, 0, 0, $x-9, $y-1, $z, $h);
			my $mob = $entity_list->GetMobID($ent);
			my $mobnpc = $mob->CastToNPC();
			$mobnpc->SignalNPC(2);
		}
	}
}