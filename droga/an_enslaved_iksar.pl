sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("looks up at you. You can tell his spirit is broken. His scars speak of a severe beating.");
	}
	elsif ($text=~/kaesora library/i) {
		quest::say("Oh!! You heard of the ancient library I discovered in Kaesora? I think the six scrolls of [Vok Na Zov] may lie there. I have not yet actually found the location of the library and it's very dangerous to lurk within the ruins of Kaesora. I would not venture there if I were you.");
	}
	elsif ($text=~/vok na zov/i) {
		quest::say("Forget them. I believe all six scrolls lie in the [Kaesora Library] and that is no safe place for any explorer. The scrolls are not readable by any livng person, but I came here in search of a machine which may be able to decipher them, the [Stupendous Contraption]. Should you return to Cabilis, see that the Arch Duke hears of the scrolls.");
	}
	elsif ($text=~/stupendous contraption/i) {
		quest::say("I have learned it was a machine tinkered by a legendary gnome. It has many uses. It lies in the slave pens of Droga. Perhaps it may be used to decipher the [Scrolls of Vok Na Zov]. I have leearned that it will not work without a [contraption needle]. Luckily I have found one in my journies.");
	}
	elsif ($text=~/contraption needle/i) {
		quest::say("The contraption needle is a piece of the machine, the [Stupendous Contraption]. It won't operate without it and if you want it, you're going to have to bring me the [pen keys].");
	}
	elsif ($text=~/pen keys/i) {
		quest::say("Pen keys!! I need the pen keys to get out of here! Find the ones who hold these keys. Bring me the key to pen number 1 and both keys to the pen gates. Do so and I shall give you the [contraption needle].");
	}
}

sub EVENT_ITEM {
	#:: Match a 12708 - Stone Key, a 12712 - Bone Key, and a 12713 - Bone Necklace
	if (plugin::takeItems(12708 <= 1, 12712 <= 1, 12713 <= 1)) {
		quest::emote("escapes with a flash, but before he goes, he speaks, 'At last!! The keys which shall bring me freedom! I thank you and here is the contraption needle. Good luck.'");
		#:: Give a 12714 - Coarse Iron Needle
		quest::summonitem(12714);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(2000);
		#:: Depop without spawn timer active
		quest::depop();
	}
	#:: Match a 12708 - Stone Key
	elsif (plugin::takeItems(12708 <= 1)) {
		quest::say("Oh no!! The bargain was, you bring me the keys to the main gates and the pen key to cell one.");
		#:: Give a 12708 - Stone Key
		quest::summonitem(12708);
	}
	#:: Match a 12712 - Bone Key
	elsif (plugin::takeItems(12712 <= 1)) {
		quest::say("Oh no!! The bargain was, you bring me the keys to the main gates and the pen key to cell one.");
		#:: Give a 12712 - Bone Key
		quest::summonitem(12712);
	}
	#:: Match a 12713 - Bone Necklace
	elsif (plugin::takeItems(12713 <= 1)) {
		quest::say("Oh no!! The bargain was, you bring me the keys to the main gates and the pen key to cell one.");
		#:: Give a 12713 - Bone Necklace
		quest::summonitem(12713);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
