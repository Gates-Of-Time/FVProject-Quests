sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("General Galeth Veredeth is the leader and founder of this outpost. His exploits in the [Bloody Kithicor] war are infamous and his skill in tactics is legendary. He is currently traveling about this new land assessing it for hostility and further colonization.");
	}
	elsif ($text=~/bloody kithicor/i) {
		quest::say("Surely you've heard about the battle of Bloody Kithicor! It was only a few years ago that the dark elves attempted to conquer Highkeep and from there all of Antonica. Legend has it they were lead by the the daughter of Innoruuk herself, Lanys. It was only through the heroics of Firiona Vie and her companions that the threat was put to an end in Kithicor Forest. Many brave souls were sent to Tunare that day when Innoruuk bestowed his wrath upon the battlefield.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
