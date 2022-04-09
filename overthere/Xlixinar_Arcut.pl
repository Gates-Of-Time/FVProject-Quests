sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("sighs heavily and after a long while says, 'Leave us, $race. Leave us to our eternal damnation.'");
	}
	elsif ($text=~/curse/i) {
		quest::emote("twists his face into a frown and says, 'You read what's written, $race. It's clear enough so we won't bother to explain the details. We can only stand our guard and hope for [redemption].'");
	}
	elsif ($text=~/redemption/i) {
		quest::emote("grits his teeth and snaps, 'It's very simple, $name! We are fallen! We seek redemption! We guard our 'brothers' here among the Howling Stones until we are relieved. Whether that will ever happen, we do not know. We can only hope that by providing the great warriors of the legion with our [ancient armor], we will earn salvation.'");
	}
	elsif ($text=~/ancient armor/i) {
		quest::say("You wish the armor of our ancestors? The armor donned by the Guard whose duty was to protect the Chosen? A warrior relies not on strength alone, but many virtues. If a warrior learns to balance each virtue, then he may be fit to guard the Chosen. Each piece of armor reflects a [virtue], and each virtue must be learned before the armor is given.");
	}
	elsif ($text=~/virtue/i) {
		quest::say("The armor I keep are the symbols of focus, sacrifice, and perseverence. The [helm], [pauldrons], [vambraces], and [breastplate]. You must bring me proof that you know these virtues before attaining the armor I keep. I also will need a piece of Banded armor of the type you desire. My brother keeps the other pieces.");
	}
	elsif ($text=~/helm/i) {
		quest::say("You must first learn focus before being awarded the legionnaire scale helm. The Swifttails are the masters of focus and as such you will learn from the Grand Master of the Court. It has been so long, I do not know who is Grand Master now. Whoever it is, give him this note and follow his instruction. Once you have learned, return to us and the helm will be yours.");
		#:: Give a 14788 - Illegible Note: Helm
		quest::summonitem(14788);
	}
	elsif ($text=~/pauldron/i) {
		quest::say("Upon our shoulders we carry the virtue of sacrifice. Our bodies are ruined in the name of our Lord. Pain and suffering please him and our ancestors. Without knowing sacrifice, a warrior can never protect his charge from harm as he sees himself as greater than his duty. The mystics embody sacrifice. Find their highest authority and give him this note. He will recognize it.");
		#:: Give a 14795 - Illegible Note: Pauldron
		quest::summonitem(14795);
	}
	elsif ($text=~/vambraces/i) {
		quest::say("Our arms carry more than the weapons of war and the hands that make use of them. We sacrifice the strength in our arms to carry our duties and obligations. Unless we can sacrifice our own bodies and abilities to carry these ideals, we will never be fit to protect the Chosen. Take this note to the master of the mystics in Cabilis, he will teach you a lesson in sacrifice.");
		#:: Give a 14790 - Illegible Note: Vambraces
		quest::summonitem(14790);
	}
	elsif ($text=~/breastplate/i) {
		quest::say("The monk is the master of focus, the shaman of sacrifice and the shadowknight of righteousness. Lastly, our brothers of the dark know confidence. It is then our duty to know perseverance more than any other. When others fall from spear and sword, we must stand. When others are washed away by fire and ice, we must stand. When others are frustrated and confused, we must continue on. There is a warrior in the swamp near the city. He is an exile, like my brother and I. He knows more about than I.");
		#:: Give a 14789 - Illegible Note: Breastplate
		quest::summonitem(14789);
	}
}

sub EVENT_ITEM {
	#:: Match a 14783 - Glox Reference, and a 3053 - Banded Helm
	if (plugin::takeItems(14783 => 1, 3053 => 1)) {
		quest::say("Well done");
		#:: Give a 4976 - Trooper Scale Helm
		quest::summonitem(4976);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Match a 14786 - Vek's Reference: Vambraces, and a 3060 - Banded Sleeves
	elsif (plugin::takeItems(14786 => 1, 3060 => 1)) {
		quest::say("Well done");
		#:: Give a 4979 - Trooper Scale Vambraces
		quest::summonitem(4979);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Match a 14783 - Glox Reference, and a 3056 - Banded Mail
	elsif (plugin::takeItems(14783 => 1, 3056 => 1)) {
		quest::say("Well done");
		#:: Give a 4977 - Trooper Scale Breastplate
		quest::summonitem(4977);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Match a 14787 - Vek's Reference: Pauldrons, and a 3056 - Banded Mail
	elsif (plugin::takeItems(14787 => 1, 3056 => 1)) {
		quest::say("Well done");
		#:: Give a 4978 - Trooper Scale Pauldron
		quest::summonitem(4978);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
