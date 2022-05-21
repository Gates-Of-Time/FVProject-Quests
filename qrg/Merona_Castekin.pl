sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh, hello! Welcome to Surefall Glade. Are you planning a trip to Qeynos? If you are, I could use some help finding my [brother].");
	}
	elsif ($text=~/brother/i) {
		quest::say("My brother Ronn went to Qeynos several days ago for supplies. He was just going to Sneed's and back. But he hasn't been seen since. I can't leave the Glade because the Sabertooths could attack at any minute. Could you please find out what happened to my brother? Ask Sneed about [Ronn Castekin].");
	}
	elsif ($text=~/who.*leader/i) {
		quest::say("The land of Surefall Glade is ruled by no single hand other than Tunare, but if guidance is what you seek, I would suggest you speak with Te`Anara.  She is the head of the Jaggedpine Treefolk.  Otherwise, you could speak with Hager Sureshot of the Protectors of the Pine.");
	}
	elsif ($text=~/what poachers/i) {
		quest::say("Poachers have been plaguing our land.  We do our best to stop them.  If you wish to join the fight, seek the masters of the Protectors of the Pine.");
	}
	elsif ($text=~/where.*mammoth/i) {
		quest::say("That information is best kept secret.");
	}
	elsif ($text=~/where.*cave/i) {
		quest::say("That information is best kept secret.");
	}
	elsif ($text=~/where.*druid guild/i) {
		quest::say("The Jaggedpine Treefolk are the local druids.  The masters can be found here within the great tree.");
	}
	elsif ($text=~/where.*forge/i) {
		quest::say("We have nothing like that here in Surefall Glade.  You must venture to Qeynos.");
	}
	elsif ($text=~/where.*oven/i) {
		quest::say("We have nothing like that here in Surefall Glade.  You must venture to Qeynos.");
	}
	elsif ($text=~/where.*armor/i) {
		quest::say("Oftentimes you can find a traveling merchant in one of the nearby houses.  Other than that you would have to travel to Qeynos.");
	}
	elsif ($text=~/where.*qeynos/i) {
		quest::say("The great city of Qeynos can be found by walking along the path outside of Surefall Glade.  Many of our rangers and druids serve alongside the Qeynos Guard when the need arises.");
	}
	elsif ($text=~/where.*bank/i) {
		quest::say("There is no need for a vault among our people.  You could try the Qeynos Hold in Qeynos.");
	}
	elsif ($text=~/who.*talym shoontar/i) {
		quest::say("Talym Shoontar is a wanted man.  He is a very infamous poacher.  Hager Sureshot has placed a bounty upon his head.");
	}
	elsif ($text=~/who.*chanda/i) {	
		quest::say("The entire Miller family are nothing more than scum.  It is they who entice poachers to continue with their slaughter so they can profit from the skins of the wildlife.");
	}
	elsif ($text=~/tunare/i) {
		quest::say("Tunare is the Mother of All.  It is through Her will that we protect this land and its many creatures.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18014 - Torn Parchment
	if (plugin::takeItems(18014 => 1)) {
		quest::say("Oh Tunare why!?!? Those foul Bloodsabers will pay for my brother's death!! Here. You have given us valuable information about a new threat to our homes. Take this as token of our appreciation.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(302, 5);		#:: + Protectors of Pine
		quest::faction(272, 1);		#:: + Jaggedpine Treefolk
		quest::faction(306, -1);	#:: - Sabertooths of Blackburrow
		quest::faction(262, 1);		#:: + Guards of Qeynos
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Give a random reward: 13184 - Band of Tunare, 8011 - Hunting Bow, 13004 - Large Lantern, 13015 - Loaf of Bread, 13185 - Ring of Pine, 13081 - Summoned: Bandages, 13006 - Water Flask
		quest::summonitem(quest::ChooseRandom(13184, 8011, 13004, 13015, 13185, 13081, 13006));
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
