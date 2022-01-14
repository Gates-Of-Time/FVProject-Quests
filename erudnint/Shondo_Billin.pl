sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Die by lava - Die by flame - Fire Peak goblins kill and maim.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh, Brell!! Help me get out of here. I did nothing wrong!! I did not know you could not take that [tonic] out of the city.");
	}
	elsif ($text=~/tonic/i) {
		quest::say("Oh, why did I have to try and help that Erudite in Qeynos? He was sick and vomiting and needed something called Erud's Tonic!! Now just because I wanted to help, I am going to be vomiting up my insides!! Oh, Brell!!! GET ME OUT OF HERE!!");
	}
	elsif ($text=~/heretic/i) {
		quest::say("Why are you asking me about the heretic?! I am going to die! DO YOU HEAR ME?!! Oh, I need a drink. Please... honor a dying man's last request, a bottle of Vasty Deep Ale. If you get me that, I will tell you what I know of the heretic.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13126 - Vasty Deep Ale
	if (plugin::takeItems(13126 => 1)) {
		quest::say("Gulp.. Gulp.. Aaahhh!!! That hits the spot. All I can tell you is that the heretic's name was E'lial B'rook. He mumbled something about a rendezvous and he would be floating down a river, smooth sailing back to something called Paineel. That's all I know.");
		#:: Ding!
		quest::ding();
		#:: Set Factions
		quest::faction(255, 10);		#:: Gem Choppers +10
		quest::faction(288, 10);		#:: Merchants of Ak'Anon +10
		quest::faction(333, 10);		#:: King Ak'Anon +10
		quest::faction(238, -30);		#:: Dark Reflection -30
		quest::faction(1604, -10);		#:: Clan Grikbar -10
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
