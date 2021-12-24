sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 50 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 25, $z + 25, 0);
}

sub EVENT_ENTER {
	#:: Match a 18784 - Tattered Note
	if (plugin::check_hasitem($client, 18784)) {
		$client->Message(15,"Before you can fully get your bearings, a sly looking Wood Elf named Tylfon whispers in your direction. 'Welcome. I knew you would come. If you are still interested in joining the rogues, read the note in your inventory and hand it to me when you wish to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Match if faction is Dubious or better
		if ($faction <= 7) {
			quest::say("So, you think you have what it takes to be a Scout of Tunare? Come back with two gold and two rusty daggers and I'll make it worth your while.");
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
	elsif ($text=~/trades/i) {
		#:: Match if faction is Dubious or better
		if ($faction <= 7) {
			quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
			#:: Give a 51121 - Tradeskill Basics : Volume I
			quest::summonitem(51121);
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
	elsif ($text=~/second book/i) {
		#:: Match if faction is Dubious or better
		if ($faction <= 7) {
			quest::say("Here is the second volume of the book you requested, may it serve you well!");
			#:: Give a 51122 - Tradeskill Basics : Volume II
			quest::summonitem(51122);
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
	elsif ($text=~/scout silvermesh leggings/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Scout silvermesh leggings are part of the garb of the Scouts of Tunare. Besides greater protection in battle, they offer a protection against magic and their unique powers boost the wearer's agility. They are meant for the scouts only and, as such, are not just given away. Are you [willing to earn the leggings]?");
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
	elsif ($text=~/willing to earn the leggings/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Tylfon says 'A former scout named Faldor Hendrys has stolen our [gem of tunare]. He has fled Faydwer and we have been unable to track him down. Perhaps if you go and speak with his brother, [Elmion Hendrys], and ask him of Faldor, we might learn something of value?");
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
	elsif ($text=~/gem of tunare/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("The bright green Gem of Tunare was discovered by the Scouts of Tunare in the trunk of a great tree. The lightning streaked down to split the tree in twain and there, inside, was the gem, Tunare's gift to the people of Kelethin. It has no magical properties, but it represents the glory of Tunare. It appears as a small emerald shard. Alas, now it has been stolen by Faldor Hendrys and only his brother [Elmion Hendrys] could know of his whereabouts.");
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
	elsif ($text=~/Elmion Hendrys/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Seek out the Fier'Dal, Elmion. He was last heard telling the local bar patrons that he was off to do some adventuring at the lake near the estate. What that is, I do not know.");
		}
		else {
			quest::say("You dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away, while you still can.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 18784 - Tattered Note
	if (plugin::takeItems(18784 => 1)) {
		quest::say("Hmm.. I hope you can prove yourself a lot more valuable than you look. Here, throw this on.. it'll help protect you a little. Once you have become a bit more experienced, return to me, I have many things to teach you about advanced combat and some of the various [trades] you will have available to you.");
		#:: Give a 13535 - Old Worn Gray Tunic*
		quest::summonitem(13535);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(316, 100);	#:: + Tunare's Scouts
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: LoY quest
	#:: Match 54019 - Encrypted Scout Note
	#:: elsif (plugin::takeItems(154019 => 1)) {
		#:: quest::emote("scans the note and sizes you up with a look.");
		#:: quest::say("Very well then, I thank you for assisting us. You have shown great bravery in aiding in this mission. Keep this as a symbol of our friendship.");
		#:: Give a 54022 - Scout's Mask
		#:: quest::summonitem(54022);
		#:: Grant a small amount of experience
		#:: quest::exp(100); 
	#:: }
	#:: Match 2gp and a 7007 - Rusty Dagger
	elsif (plugin::takeItemsCoin(0, 0, 2, 0, 7007 => 2)) {
		quest::say("Well, well. I didn't think you could do it. Here's your cut and don't be surprised that it's not much because it's your first lesson. Remember. the smaller the operation. the bigger the share, and the richest rogues have the tightest lips.");
		#:: Give a 7021 - Tarnished Dagger
		quest::summonitem(7021);
		#:: Ding!
		quest::ding();
		#:: Set faction - Confirmed on live.
		quest::faction(316, 1);		#:: + Tunare's Scouts
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 40 to 60cp
		my %cash = plugin::RandomCash(40,60);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 13322 - Emerald Shard
	elsif (plugin::takeItems(13322=> 1)) {
		#:: Match if Amiable or better
		if ($faction <= 4) {
			quest::say("You have done well, my friend. The elves of Kelethin are grateful. Please take the scout silvermesh leggings as a gift. Every Scout of Tunare shall find them useful. Once you are ready to begin your training, please make sure that you see Tilania Shadowwalker. She can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
			#:: Give a 3315 - Silvermesh Leggings
			quest::summonitem(3315);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(316, 100);	#:: + Tunare's Scouts
			#:: Grant a small amount of experience
			quest::exp(100);
			#:: Create a hash for storing cash - 5000 to 6000cp
			my %cash = plugin::RandomCash(5000,6000);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			#:: Made up
			quest::say("I have no use for this item, $name.  You can have it back.");
			#:: Return a 13322 - Emerald Shard
			quest::summonitem(13322);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
