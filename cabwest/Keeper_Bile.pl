sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("bows before you as a gesture of kindness and respect. 'Greetings. I am Bile, Keeper of the Apprentice Ranks. My knowledge is that of the first circle of necromancy. I was once a great necromancer, but now i have a greater calling to protect the words of Kotiz. I also Conduct many tests to ensure the spells are deciphered correctly. I am in need of an apprentice to [collect components].'");
	}
	elsif ($text=~/collect components/i) {
		quest::emote("takes out a tattered scroll and looks upon its words. 'Hmm. Yes. I will need the following; One large scorpion pincer, one sabertooth cub canine and two brittle skulls. Bring these to me and I shall pay you and if I have an overscribed spell, I shall give you that also.'");
	}
}

sub EVENT_ITEM {
	#:: Match two 12739 - Brittle Iksar Skull, a 12659 - Large Scorpion Pincer, and a 12426 - Sabertooth Cub Canine
	if (plugin::takeItems(12739 => 2, 12659 => 1, 12426 => 1)) {
		quest::emote("tosses the items into a nearby box and reaches into a sack at his feet. He hands you your reward. 'This spell is going to need some major testing. I can always use more of the same components.'");
		#:: Give a random reward: 15342 - Spell: Locate Corpse, 15348 - Spell: Poison Bolt, 15331 - Spell: Reclaim Energy, 15221 - Spell: Sense the Dead
		quest::summonitem(quest::ChooseRandom(15342, 15348, 15331, 15221));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 2);			#:: + Brood of Kotiz
		quest::faction(441, 1);			#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 50 to 100cp
		my %cash = plugin::RandomCash(50, 100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
