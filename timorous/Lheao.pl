sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("jumps at your voice and begins laughing at his skittishness.  He says, 'Ahh, hello there. Not many people know of this place, so visitors are quite rare. Hehehe. It's a very beautiful place indeed, so.. ummm, dont go telling everyone you know about it. Heheh. Thanks, Friend.'");
	}
	elsif ($text=~/i have found the book of immortals/i) {
		quest::emote("looks up at you, eyes wide in astonishment, and says, 'My god, you found Immortals?! Where did you find it? Nevermind, that is unimportant. I have in my possession a book that explains more of these individuals. Its value is unimaginable as well as the impact it is capable of. As you can see, I grow old. I need an individual to watch over this book and make sure it is protected. Would you be willing to take this [responsibility]?'");
	}
	elsif ($text=~/responsibility/i) {
		quest::say("Im sorry, $name, but I could only give this book to a true master, such as a member of the Whistling Fists Order. And unless you can give me proof that you are one, in addition to Danls reference, which is very unlikely, there is no way I'll let you take charge of the [Celestial Fists].");
	}
	elsif ($text=~/celestial fists/i) {
		quest::say("The Celestial Fists is the title of a book written by an unknown author. His writing is sub par but the legend is interesting from a biographical standpoint alone. It's rarity commands top dollar in the scholarly community but the secrets revealed in the book are what truly makes it dangerous. I hope Im able to find someone to watch over it soon.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12970 - Robe of the Whistling Fists, and a 1682 - Danl's Reference
	if (plugin::takeItems(12970 => 1, 1682 => 1)) {
		quest::say("Astonishing! To think that you are a master of an order thought to be lost in our world. Forgive my earlier doubts. I believe you are indeed worthy to be given the responsibility of watching over this book. Take great care that it does not fall into the wrong hands as it would be truly disastrous.");
		#:: Give a 1683 - Celestial Fists
		quest::summonitem(1683);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
