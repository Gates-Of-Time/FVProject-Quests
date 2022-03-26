sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("seems to be preocupied. He is examining an egg. 'What?!! Who has [sent] you to me? Bah!! Away with you.' He ignores you and continues chanting.");
	}
	elsif ($text=~/di nozok sent me/i) {
		quest::emote("drops the egg he was holding. Egg yolk splatters on your foot. His eyes roll back into his head. He speaks, but his voice is that of a female. 'I await you, $name. My sisters and I yearn for the return of our skulls. We are the [Sisters of Scale]. Find us and bring to this hierophant our skulls and your iron cudgel of the Channeler. Go.'");
	}
	elsif ($text=~/zand/i) {
		quest::say("I await you, $name. My sisters and I yearn for the return of our skulls. We are the [Sisters of Scale]. Find us and bring to this hierophant our skulls and your iron cudgel of the Channeler. Go.");
	}
	elsif ($text=~/sisters/i) {
		#:: Animation 36 - kneel
		quest::doanim(36);
		quest::emote("wipes egg yolk from his clothing. 'My, what a mess!! Hmmph!! What did you say? Sisters of Scale? They were a legendary trio of mystics. We once had their skulls sealed within this temple, but now they are lost. I sent a channeler to retrieve them. His name was Vagnar. I am sure he shall find them.'");
	}
	elsif ($text=~/vagnar/i) {
		quest::say("He's a capable channeler, I trust he knows where to look and will prepare himself. Any competent servant of our Lord would prepare potions and supplies before going on such a quest. If he doesn't come back, it's no great loss, he wasn't Hierophant material anyway.");
	}
}

sub EVENT_ITEM {
	#:: Match a 5145 - Iron Cudgel of the Channeler, a 12748 - Iksar Skull, a 12749 - Iksar Skull, and a 12750 - Iksar Skull
	if (plugin::takeItems(5145 => 1, 12748 => 1, 12749 => 1, 12750 => 1)) {
		quest::say("You have returned the skulls of the Sisters of Scale. For this you shall be rewarded. Take this hierophant's weapon. May you use it to smite the foes of our people.' Dexl comes out of the trance. 'What?!! Whew. Hey!! Where is my cudgel?");
		#:: Give a 5146 - Iron Cudgel of the Hierophant
		quest::summonitem(5146);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(445, 0);		#:: + Scaled Mystics
		quest::faction(441, 0);		#:: + Legion of Cabilis
		#:: Grant a large amount of experience
		quest::exp(2000);
		#:: Create a hash for storing cash - 900 to 2000cp
		my %cash = plugin::RandomCash(900,2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
