sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("eyes you intently. 'So, yet another hatchling approaches us. I am known as Sirtha and that is Sarth. We are of [Rile's] children. Who do you call your father, broodling?'");
	}
	elsif ($text=~/rile/i) {
		quest::say("Very good. We are smiths for the Crusaders of the Greenmist and I shall make [armor] for you, provided you prove your worth. Fail these simple tasks, and you shall not be worthy to bear the title of crusader!");
	}
	elsif ($text=~/armor/i) {
		quest::say("I will make [helms], [gauntlets], [boots], and [vambraces]. My broodmate shall make the bracers, greaves, masks, and breastplate.");
	}
	elsif ($text=~/helm/i) {
		quest::say("The sarnak are a mockery of the Iksar. They are nothing more than beasts fit only to do our bidding! I require you to bring me the sword of one of their Order of Knights and the head of a sarnak berserker. These beasts have been attacking our patrols of late. I also require a stone called a ruby and a banded helm. Do this and I shall make a helm for you.");
	}
	elsif ($text=~/boots/i) {
		quest::say("Cactus quills can be very lethal. I seek to work them into my new boots. Find me these quills, a pair of skeletal feet, an emerald of fire, and some banded boots so that I may start working on them. Why are you still here?! Begone!");
	}
	elsif ($text=~/gauntlets/i) {
		quest::say("I currently have need of a complete skeletal hand for the research I am conducting. I wish to study its properties and form so that I can make gauntlets befitting our station. I also require two rubies that holds stars within and some banded gauntlets to complete my ritual. Do that and the gauntlets are yours to keep.");
	}
	elsif ($text=~/vambraces/i) {
		quest::say("The hideous Golra are hardy creatures. The tales indicate their ferocity almost matches our own. I wish to gain a trophy of one of these beasts. Bring me the skin of one, two blue sapphires, and banded sleeves. Then I shall give you these fine vambraces.");
	}
}

sub EVENT_ITEM {
	#:: Match a 14822 - Sarnak Berserker Head, a 14826 - Sarnak Knight's Sword, a 3053 - Banded Helm, and a 10035 - Ruby
	if (plugin::takeItems(14822 => 1, 14826 => 1, 3053 => 1, 10035 => 1)) {
		quest::say("Well done! Here is the item we agreed upon. May Cazic's glorious curses flow through you!");
		#:: Match a 4968 - Dreadscale Helm
		quest::summonitem(4968);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 14828 - Cactus Quills, a 14823 - Skeletal Feet, a 3064 - Banded Boots, and a 10033 - Fire Emerald
	elsif (plugin::takeItems(14828 => 1, 14823 => 1, 3064 => 1, 10033 => 1)) {
		quest::say("Well done! Here is the item we agreed upon. May Cazic's glorious curses flow through you!");
		#:: Give a 4974 - Dreadscale Boots
		quest::summonitem(4974);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 14825 - Skeletal Hand, a 3062 - Banded Gauntlets, and two 10032 - Star Ruby
	elsif (plugin::takeItems(14825 => 1, 3062 => 1, 10032 => 2)) {
		quest::say("Well done! Here is the item we agreed upon. May Cazic's glorious curses flow through you!");
		#:: Give a 4972 - Dreadscale Gauntlets
		quest::summonitem(4972);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 14830 - Golra Skin, a 3060 - Banded Sleeves, and two 10034 - Sapphire
	elsif (plugin::takeItems(14830 => 1, 3060 => 1, 10034 => 2)) {
		quest::say("Well done! Here is the item we agreed upon. May Cazic's glorious curses flow through you!");
		#:: Give a 4970 - Dreadscale Vambraces
		quest::summonitem(4970);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
