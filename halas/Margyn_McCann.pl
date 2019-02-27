sub EVENT_SPAWN {
	#:: Get current location
	$x = $npc->GetX();
	$y = $npc->GetY();
	$z = $npc->GetZ();
	#:: Create a proximity, 100 units across, 100 units tall, and don't enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Check for 18761- A tattered note (Guild Summons)
	if (plugin::check_hasitem($client, 18761)) { 
		$client->Message(15,"Margyn McCann greets you. 'Welcome to the Church of the Tribunal. Read the note in your inventory and when you are ready to begin your training, hand it to me.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, young adventurer! I'm the chief overseer o' the Shamans o' Justice. We serve the will o' the Tribunal. Justice is our way. Within Halas, there are none who are above the scales o' justice. There are still some who have defied our laws. We wish to [" . quest::saylink("apprehend the fugitives") . "].");
	}
	elsif ($text=~/apprehend the fugitives/i) {
		quest::say("Maybe so, however, there are some who may be too much fer ye to handle. I'll need to know if ye're a [" . quest::saylink("young shaman") . "] or a standin' member of the court?");
	}
	elsif ($text=~/young shaman/i) {		
		quest::say("We seek a former member who dared to curse the righteousness of the Tribunal. We'll have his head for that remark. His name is Granin O'Gill and he has run to the wastelands of Everfrost seeking safe haven. Find him. Return his head to me. Do so, and earn the ninth circle spell, Spirit o' the Bear. Go at once!");
	}
}

sub EVENT_ITEM {
	#:: Match a 13729 - Barbarian Head
	if (plugin::takeItems(13729 => 1)) {
		quest::say("We can now rest assured that justice has been served. Ye'll be a valuable asset to our court. Take and remember this spell, Spirit o' the Bear. I hope ye've attained the necessary skills to scribe it. If not, I'm sure ye soon will. Go now, and serve justice.");
		#:: Give a 15279 - Spell: Spirit of Bear
		quest::summonitem(15279);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1600);
		#:: Create a hash for storing cash - 500 to 700cp
		my %cash = plugin::RandomCash(500,700);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set Factions
		quest::faction(294, 20);		#:: + Shamen of Justice
		quest::faction(213, 3);			#:: + Merchants of Halas
		quest::faction(33, -3);			#:: - Circle of Unseen Hands
		quest::faction(48, -3);			#:: - Coalition of Tradefolk Underground
		quest::faction(90, -4);			#:: - Ebon Mask
	}
	#:: Match a 18761 - Tattered Note
	elsif (plugin::takeItems(18761 => 1)) {
		quest::say("Welcome t' the Church o' the Tribunal. Here, we practice the will o' the Six Hammers. This is our guild tunic - wear it with pride and represent us well.");
		#:: Give a 13512 - Faded Blue Tunic*
		quest::summonitem(13512);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set Factions
		quest::faction(294, 100);		#:: + Shamen of Justice
		quest::faction(213, 15);		#:: + Merchants of Halas
		quest::faction(33, -15);		#:: - Circle of Unseen Hands
		quest::faction(48, -15);		#:: - Coalition of Tradefolk Underground
		quest::faction(90, -20);		#:: - Ebon Mask
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
