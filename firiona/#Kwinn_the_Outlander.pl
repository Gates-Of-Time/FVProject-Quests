sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, adventurer! Kwinn's the name. Hunting is my game. I have been all over this continent. Seen many things and found [odd trinkets]. I have no quarrel with any race. I judge a person or critter by their actions. Heck, my best friend is a troll!!");
	}
	elsif ($text=~/odd trinkets/i) {
		quest::say("Blast!! I found some strange thingamajigs!! Most of it I toss or sell to vendors and crazy sages. I am on my way to sell this [iron tail] to a tinkerer.");
	}
	elsif ($text=~/iron tail/i) {
		quest::say("Found the thing washed up on the shore in Timorous Deep. Looks like a metal lizardman tail. It is all rusted and covered with barnacles. Probably can't get much for it, but I'll try. Why do you ask? Are you looking to [trade for the mechanical thing]?");
	}
	elsif ($text=~/trade for the mechanical thing/i) {
		quest::emote("takes out an extra pack. 'Thought you might be interested. I don't want to take a loss and I only trade for things I am hunting, so here!! Inside this pack you need to combine the following items; a sabertooth tiger mane, a pair of pygmy brute choppers, a lime plume and a war bone fist. Return the full sack to me and the tail is yours.'");
		#:: Give a 17038 - Empty Pack from Kwinn
		quest::summonitem(17038);
	}
}

sub EVENT_ITEM {
	#:: Match a 12828 - Full Kwinn Pack
	if (plugin::takeItems(12828 => 1)) {
		quest::say("Kackling Quellious!! This will bring a fortune on the black market!! Well, a deal is a deal. Here is the tail.");
		#:: Give a 12822 - Mechanical Iksar Tail
		quest::summonitem(12822);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(25000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
