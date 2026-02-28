sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Furless one wants something with snowfang? You here to help with curse?");
	}  
	elsif ($text=~/what curse/i) {
		quest::emote("growls as the other fisher-gnolls bark at the mention of the curse that has plagued them.");
		quest::say("Some days ago we found flat, strong, stretchy thing. Many scribbles, many marks on it. Ever since fish not come to us... Rest of the snowfang think this is bad magic. To not believe this is foolish. But I not able to just get rid of bad magic.");
	}
	elsif ($text=~/magic/i) {
		quest::say("To cast away is not something we can do. Snowfang believe bad magic thrown away just make worse magic. Only way to get rid of badness is for friend to bring gift offering. Offering that means much to snowfang. If that is done magic is broken by the giving.");
	}
	elsif ($text=~/offering/i) {
		quest::say("Offering must be true and strong. To trade for anything else would be an insult to the spirits. If you want you can bring me true strong wooden pole and fine string for new pole. That would be true strong gift and maybe enough to break bad evil on this thing we find.");
	}
}

sub EVENT_ITEM {
	#:: Match a 30295 - Strong Wooden Branch, and a 30296 - Strong Raptor Gut
	if (plugin::takeItems(30295 => 1, 30296 => 1)) {
		quest::emote("sniffs the offering and seems to relax.");
		quest::say("Very good, very worthy. You take this magic thing, with you maybe this evil is broken.");
		quest::echo(0, "Before he can hand you the parchment a roar explodes from the ocean and a gigantic dark shadow slams into the ice floe.");
		#:: Ding!
		quest::ding();
		
		#:: Spawn one and only one Iceclad Ocean >> enraged_walrus (110093), with no grid or guildwar, at the given location
		my $entid = quest::spawn2(110093,0,0,2000,1000,-31.9,111.2);
		my $mob = $entity_list->GetMobID($entid);
		my $mobnpc = $mob->CastToNPC();
		$mobnpc->AddToHateList($npc, 1);
	}
	else {
		quest::say("These items are not a worthy offering and would insult the spirits.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
