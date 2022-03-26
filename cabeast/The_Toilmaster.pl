sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Do not bother me unless you wish to join the chain gang. Now go away or I shall have my slaves chop you as they chop this granite!");
	}
	elsif ($text=~/hammer of exoneration/i) {
		quest::emote("hands you a massive hammer and says, 'So, you can read. Good for you. Don't think that you're going to make an impression on me with that rubbish. Let's see if you can handle this hammer like you can that book, whelp.'");
		#:: Give a 24767 - Hammer of Exoneration
		quest::summonitem(24767);
	}
	elsif ($text=~/bag/i) {
		quest::emote("turns his head to focus on you and hands you a dusty bag. He then returns to looking into the distance, just over your left shoulder.");
		#:: Give a 17091 - Penance Bag
		quest::summonitem(17091);
	}
	elsif ($text=~/granite pebbles/i) {
		quest::say("Ah. Looking for granite pebbles, are we? You must be a Swifttail. I am tired of doing your caste's work when you give nothing in return. Tell you what, I have lost many slaves to escape. If you bash their heads in with your many skills and return at least two busted froglok shackles I will give you one pile of granite pebbles.");
	}
}

sub EVENT_ITEM {
	#:: Match two 12660 - Busted Froglok Slave Shackles
	if (plugin::takeItems(12660 => 2)) {
		quest::say("A deal is a deal. Here is one pile of granite pebbles. I hope you need more because I know there are more escaped froglok slaves.");
		#:: Give a 12689 - Pile of Granite Pebbles
		quest::summonitem(12689);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 3);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(350);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 18271 - Ragged Book
	elsif (plugin::takeItems(18271 => 1)) {
		quest::emote("looks at the tome and speaks to you, scowling, 'Very well Broodling, I have a task for you. I should make you work at the feet of my Froglok Slaves, crushing granite, but the lore of the Brood has a specific rite for this situation. Take this book and learn the will of Cazic-Thule. Read it and ask me any questions that you may have before you start your penance. It would be a shame for you to fail at this task as well... though I wouldn't mind destroying you.");
		#:: Give a 18272 - Rites of Exoneration
		quest::summonitem(18272);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
