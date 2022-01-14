sub EVENT_SAY {
	$makepoison = $client->GetSkill(56);
	#:: Match if faction is ally or better and Poison Making is greater than 278
	if ($faction <= 2 && $makepoison >= 278) {
		if ($text=~/hail/i) {
			quest::say("Master Hanns is going to kill me! I let that dark assassin look at his prized poison collection and he lifted it all when I wasn't looking! He even snatched his Grandmaster's Vial! Master Hanns was so furious he grabbed one of his old blades from his collection and jabbed it at the wall so hard it shattered! I really need some help replacing all that was [ruined] or I have a feeling Master Hanns is going to send me on a suicide mission!");
		}
		elsif ($text=~/ruined/i) {
			quest::say("Fantastic! I need to replace all those old poisons, the vial and that old scareling blade. I think the bottles had the following written on them Bane, Burn, Essence, Sloth, Rage, Swiftness, Disorientation, and Dimethyl. Please hurry!");
			#:: Give a 17148 - Unfilled Box
			quest::summonitem(17148);
		}
	}
	else {
		quest::say("Go away! We don't have time for the likes of you.");
	}
} 

sub EVENT_ITEM {
	#:: Match a 24072 - Grandmaster's Box
	if (plugin::takeItems(24072 => 1)) {
		$makepoison = $client->GetSkill(56);
		if ($faction <= 2 && $makepoison >= 278) {
			quest::say("Great! Looks like everything is here! Hopefully Master Hanns won't send me to Steamfront now, I have a really bad feeling about that assignment. Here take this Seal, it was dropped by that dark stranger. It glows with a dark power I just don't understand. Be wary of further sightings of that dark assassin.");
			#:: Give a 24073 - Grandmaster Assassin's Seal
			quest::summonitem(24073);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(223, 20); 	#:: + Circle Of Unseen Hands
			quest::faction(291, -20); 	#:: - Merchants of Qeynos
			quest::faction(230, 20);	#:: + Corrupt Qeynos Guards
			quest::faction(262, -20);	#:: - Guards of Qeynos
			quest::faction(273, 20);	#:: + Kane Bayle
			#:: Grant a huge amount of experience
			quest::exp(200000);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
		else {
			quest::say("Go away! We don't have time for the likes of you.");
			#:: Return a 24072 - Grandmaster's Box
			quest::summonitem(24072);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
