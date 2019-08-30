sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Me says hi to you. What you want from me? Oh!! Me shaman trainer. You must be shaman. Are you [" . quest::saylink("shaman Darkone") . "]?");
	}
	elsif ($text=~/shaman darkone/i) {
		quest::say("You choose rite if you bes a shaman. Wes da best. You remember ta not get in Kaglari way. He get mad berry easy. He gets berry mad at Urako if he finds out me make [" . quest::saylink("big mistake") . "].");
	}
	elsif ($text=~/big mistake/i) {
		quest::say("Kaglari makes Urako cleans his kwarters. He says nots to open closet. Me make mistake and opens his closet and out comes da skeletons. Dey runs out into Grobb. Me needs ta gets dem back before Kaglari finds out. Me needs sumwun to [" . quest::saylink("collect Kaglari skeletons") . "].");
	}
	elsif ($text=~/collect kaglari skeletons/i) {
		quest::say("Tank you!! Dere is fours of dem. You can finds dem here in Grobb. I no tink dey will want to come homes to Kaglari's closet. You ask dem to [come back to the closet] and see whut dey say. If you gets dem back me promise to gives you a [" . quest::saylink("Kaglari mana doll") . "].");
	}
	elsif ($text=~/kaglari mana doll/i) {
		quest::say("Kaglari catch many humans. He pull spirit from dem and force into dolls. Now deir spirit give shaman extra mana. Dey good power source. Now humans good for someting. Da mana dolls only for shaman power.");
		#:: Spawn Grobb >> a_skeleton (52056)
		quest::spawn2(52056,0,0,-290.21,159.80,7.13,0);
	}
}

sub EVENT_ITEM {
	#:: Match 12213 - The Baker, 12214 - The Butcher, 12215 - The Captain, 12216 - The Minstrel
	if (plugin::takeItems(12213 => 1, 12214 => 1, 12215 => 1, 12216 => 1)) {
		quest::say("Ohh, tank you!! Kaglari not hafta do bad tings to Urako!! Me berry berry happy!! Oh, here is da doll, me tanks you a lot!!");
		#:: Give a 12212 - Kaglari Mana Doll
		quest::summonitem(12212);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(237, 10);		#:: + Dark Ones
		quest::faction(416, 2);		#:: + Shadowknights of Night Keep
		quest::faction(251, -1);	#:: - Frogloks of Guk
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
