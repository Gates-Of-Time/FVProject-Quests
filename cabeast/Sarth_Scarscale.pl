sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("hisses at you loudly. 'So, you bear the [mantle of a crusader], yes?  I am known as Sarth and shall reward you, provided you prove your worthiness to our cause, child of Rile.'");
	}
	elsif ($text=~/mantle of a crusader/i) {
		quest::say("We shall see if you are worthy of that. I shall make [armor] for you, to aid you in your service to our Father. I specialize in the forging of [bracers], [greaves], [masks], and [breastplates]. Sirtha makes the other items of armor. Take care when you address her, hatchling. It would not be the first time a hatchling has left here with scars.");
	}
	elsif ($text=~/armor/i) {
		quest::say("Yes, I shall make [armor] for you, to aid you in your service to our Father. I specialize in the forging of [bracers], [greaves], [masks], and [breastplates]. Sirtha makes the other items of armor. Take care when you address her, hatchling.  It would not be the first time a hatchling has left here with scars.");
	}
	elsif ($text=~/bracers/i) {
		quest::say("Have you ever seen Bloodgills? I hear they will devour a broodling in seconds and that their scales are tough as iron. Bring me some of these scales, a banded bracer, and a sapphire as blue as the sky. Only then will I give the bracer to you, broodling.");
	}
	elsif ($text=~/greaves/i) {
		quest::say("Do you know the beasts that call themselves sarnaks? One such beast who calls itself Zorash attacked an envoy of merchants who were to deliver a pair of special boots to me. It taunts us by wearing them as a trophy. Bring them back and the skull of Grachnist, his goblin ally. Return them to me along with a star ruby and your banded greaves, and I shall craft you an excellent pair of greaves.");
	}
	elsif ($text=~/mask/i) {
		quest::say("Have you ever encountered a drixie before? I crush every one I see. They are an annoyance beyond mere words! Kill the Queen and bring me her wings as a trophy along with an emerald of fire and a banded mask.");
	}
	elsif ($text=~/breastplate/i) {
		quest::say("Ahhhh....a breastplate you want, is it? Well, they are not easy to come by. Fetch me a scorpion chitin. Intact, mind you! They are extremely fragile and must be treated before they can protect your carcass. Also, fetch me a war braid from a sarnak to connect the pieces. I also require a ruby and your banded tunic. Do this and I shall make it for you, hatchling. Now, go!"); 
	}
}
 
sub EVENT_ITEM {
	#:: Match a 14824 - Bloodgill Scales, a 3061 - Banded Bracer, and a 10034 - Sapphire
	if (plugin::takeItems(14824 => 1,3061 => 1, 10034 => 1)) {
		quest::say("Well done!  Here is the item we agreed upon.  May Cazic's glorious curses flow through you!");
		#:: Give a 4971 - Dreadscale Bracer
		quest::summonitem(4971);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 14829 - Boots of Zorash, a 14820 - Grachnist's Head, a 3063 - Banded Leggings, and a 10032 - Star Ruby
	elsif (plugin::takeItems(14829 => 1, 14820 => 1, 3063 => 1, 10032 => 1)) {
		quest::say("Well done!  Here is the item we agreed upon.  May Cazic's glorious curses flow through you!");
		#:: Give a 4973 - Dreadscale Greaves
		quest::summonitem(4973);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 14827 - Wings of the Drixie Queen, a 3054 - Banded Mask, and a 10033 - Fire Emerald
	elsif (plugin::takeItems(14827 => 1, 3054 => 1, 10033 => 1)) {
		quest::say("Well done!  Here is the item we agreed upon.  May Cazic's glorious curses flow through you!");
		#:: Give a 4975 - Dreadscale Mask
		quest::summonitem(4975);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 12982 - Sarnak War Braid, a 14821 - Scorpion Chitin, a 3056 - Banded Mail, and a 10035 - Ruby
	elsif (plugin::takeItems(12982 => 1, 14821 => 1, 3056 => 1, 10035 => 1)) {
		quest::say("Well done!  Here is the item we agreed upon.  May Cazic's glorious curses flow through you!");
		#:: Give a 4969 - Dreadscale Breastplate
		quest::summonitem(4969);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
