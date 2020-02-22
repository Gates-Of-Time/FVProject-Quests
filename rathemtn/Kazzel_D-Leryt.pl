sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Finally, a servant worthy of my needs! Apparently you are of high status, which perhaps means you might know a master [jeweler] capable of faceting a very magical, yet fragile stone?");
	}
	elsif ($text=~/jeweler/i) {
		quest::say("You must provide me with 2000 platinum pieces as a deposit, then you must take this stone to a master jeweler or [Darfumpel], have it faceted and return it to me along with an orb of pure crystal, a gold necklace the color of snow, and the [blood of Xenyari]. Do that and I will provide you with magic beyond that of most knights of darkness.");
	}
	elsif ($text=~/darfumpel/i) {
		quest::say("Darfumpel is a gnomish shopkeeper here in the Rathe Mountains. He apparently has a new technique for gemcutting, however, he will not deal with me due to my affiliation with necromancy. Speak with him. Perhaps he might be willing to aid you for a price, but make sure you hide your true nature. He despises dark magic.");
	}
	elsif($text=~/blood of xenyari/i) {
		quest::say("Xenyari is a druid who inhabits these parts. She is rarely seen, however, I require a droplet of her blood. Here is the catch though, and one for which you may be well suited if you desire magic of the knights of darkness - Xenyari must give of herself willingly. In other words, you cannot take her blood by force. Rather, she must give you her blood of her own accord.");
	}
}

sub EVENT_ITEM {
	#:: Match 2000pp
	if (plugin::takeCoin(0, 0, 0, 2000)) {
		quest::say("Very well, $name. Take this gem to a master jeweler and return it to me with the other three items.");
		#:: Give a 10191 - Uncut Hyacinth
		quest::summonitem(10191);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 10192 - Faceted Hyacinth, a 10147 - White Gold Necklace, a 10218 - Crystalline Orb, and a 10196 - Bloodied Piece of Parchment
	elsif (plugin::takeItems(10192 => 1, 10147 => 1, 10218 => 1, 10196 => 1)) {
		quest::say("You are quite cunning. After I fashion this telesm, take it back to Xenyari. She would 'enjoy' another 'gift,' eh?");
		#:: Give a 10193 - Faceted Hyacinth Telesm
		quest::summonitem(10193);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 10194 - Pulsating Hyacinth Telesm
	elsif (plugin::takeItems(10194 => 1)) {
		quest::emote("laughs heartily and whispers to you, 'Well done, worm, your servitude to my will has now expired...'");
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(25000);
		#:: Spawn one and only one The Rathe Mountains >> a_monstrous_zombie (50335) at the current location
		quest::unique_spawn(50335, 0, 0, $x, $y, $z);
	}
	#:: Match a 10197 - Monstrous Zombie Heart
	elsif(plugin::takeItems(10197 => 1)) {
		quest::say("Oh! Umm... Well, I was just playing with you. Certainly you know I was joking! We had a deal and I will abide by the terms of our agreement. Here is my payment for your services. Bye..");
		#:: Give a 15692 - Spell: Life Leech
		quest::summonitem(15692);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(25000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
