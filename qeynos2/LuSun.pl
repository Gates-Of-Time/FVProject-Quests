sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18712 - Note with Fist Insignia
	if (plugin::check_hasitem($client, 18712)) {
		$client->Message(15,"As you get your bearings, a lightly armored man that appears to be in incredible shape turns to greet you. 'Welcome traveller. I am LuSun. If you wish to learn the ways of the Silent Fist, read the note in your inventory and hand it to me to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ah.. Greetings.. I am Lu'Sun, Guild Master of the Silent Fist Clan. Here, our goal is to train our body, mind, and soul to the peak of perfection.");
	}
	elsif ($text=~/tomer/i) {
		quest::say("Tomer? I think Seta needs someone to go find him.. Go ask her.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18712 - Note with Fist Insignia
	if (plugin::takeItems(18712 => 1)) {
		quest::say("Greetings, and welcome to the Silent Fist Clan. Don our guild tunic, purge your mind and soul, and begin your lifelong devotion to the Clan. Brother Esrinap will introduce you to our lifestyle and begin your training. Be sound, allow your spirit to open up and guide you.");
		#:: Give a 13507 - Torn Cloth Tunic*
		quest::summonitem(13507);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(309, 100);		#:: + Silent Fist Clan
		quest::faction(262, 15);		#:: + Guards of Qeynos
		quest::faction(361, 5);			#:: + Ashen Order
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
