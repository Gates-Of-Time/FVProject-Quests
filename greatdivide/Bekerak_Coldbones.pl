sub EVENT_SAY {
	#:: Match if faction is better than Apprehensive
	if (($text =~ /hail/i) && ($faction < 6)) {
		quest::say("Just another boring day waiting for supplies.  I wonder when they will arrive.");
	}
}

sub EVENT_ITEM {

	#:: Match a 25106 - Bekerak's New Spear
	if (plugin::takeItems(25106 => 1)) {
		quest::say("Well, well, I see Wenglawks finally got around to sending me my new spear. I hope it's not as shoddy as the last one. Your payment? Bahaha, did Wenglawks not tell you? Payment was to be a giant icewurm tooth carved into an amulet. Come now, little one. I will find an ice wurm for us to slay together. Then you can pull one of its teeth out for me and I will fashion the talisman for that greedy merchant.");
		#:: Spawn a Great Divide >> #an_angry_shardwurm (118164), without grid or guild war, at the given location.
		quest::spawn2(118164, 0, 0, -2776, -3011, 255.5, 65.5);
	}
	#:: Match a 25191 - Giant Shard Wurm Tooth.
	elsif (plugin::takeItems(25191 => 1)) {
		quest::emote("pulls out a large knife and begins to carve at the tooth. After a few minutes he pulls out a length of rope and fashions it into a very large necklace. 'Here is his payment. Tell him the spear is fine, and that I might reconsider his last offer to me. He will know what I mean.'");
		#:: Give a 25130 - Giant Icewurm Talisman.
		quest::summonitem(25130);
	}
	#:: Match a 25266 - Giant Sack of Supplies.
	elsif (plugin::takeItems(25266 => 1)) {
		quest::say("Supplies from Svekk?  Where are the rest of them little one!  There must be more, we are here pushing the Coldain back into their hole in the wall and Svekk sends a $race to deliver a small portion of supplies.  Take this note back to that fool.  Leave quickly before I take my rage out upon you.");
		#:: Ding!
		quest::ding();
		#:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(406, -30); #:: - Coldain
        quest::faction(430, -30); #:: - Claws of Veeshan
		#:: Grant a tiny amount of experience.
		quest::exp(250);
		#:: Give a 25267 - Bekerak's Letter to Svekk.
		quest::summonitem(25267);
	}
	#:: Match a 25269 - Large Supply Sack for Bekerak.
	elsif (plugin::takeItems(25269 => 1)) {
		quest::say("I am in your debt, $race.  These supplies will help our effort to destroy the Coldain.  I wish I had more to give than what I do.'  Bekerak pulls a strange looking totem on a string from one of his pockets and hands it to you.  'May Lord Rallos smile upon you, $name.'");
		#:: Ding!
		quest::ding();
		#:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(406, -30); #:: - Coldain
        quest::faction(430, -30); #:: - Claws of Veeshan
		#:: Grant a tiny amount of experience.
		quest::exp(250);
		#:: Give a 25268 - Kromrif Battle Totem.
		quest::summonitem(25268);
	}

	#:: Return unused items.
	plugin::returnUnusedItems();
}