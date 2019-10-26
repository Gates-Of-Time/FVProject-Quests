sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, child. Welcome to the Temple of Life. Here, you may pay homage to the [Prime Healer], [Rodcet Nife]. If you are in need of [healing] or require me to [cure disease] or [cure poison], please inform me. I am the resident healer of all Qeynos citizens.");
	}
	elsif (($text=~/prime healer/i) || ($text=~/rodcet nife/i)) {
		quest::say("He is the sustaining force of all life.  It is in honor of Him that the Temple of Life was built.  Engineered with the help of the [Academy of Arcane Science].");
	}
	elsif ($text=~/healing/i) {
		quest::say("You must pay a tribute of five gold coins before I perform the binding of your wounds.");
	}
	elsif ($text=~/cure disease/i) {
		quest::say("Yes, we can do that. First, you must fetch me some bandages and brew me some bog juice. I.. err.. require the bog juice to.. to dampen the bandages.. Yes that's it! To dampen the bandages.");
	}
	elsif ($text=~/cure poison/i) {
		quest::say("To cast the poison from your body I require one snake fang. The fang will contain a hint of poison which will help me focus my casting.");
	}
	elsif ($text=~/academy of arcane science/i) {
		quest::say("The Academy of Arcane Science is the greatest school of magic in Antonica. It houses a wealth of resources and knowledge pertaining to any of the circles of magic. It is also a marvel of magical engineering. If you should ever visit Freeport, be sure to let me know. I seek a faithful cleric to [pickup a reagent].");
	}
	elsif (($text=~/pickup a reagent/i) || ($text=~/pick up a reagent/i)) {
		quest::say("That would be grand!! It is a long journey to Freeport. I am lucky to find one who can endure the trip. Go to Freeport and seek out the Temple of Marr. Within, you shall find a cleric named [Serna Tasknon]. Give her this flask. It is an inert potion which she can use. In exchange she will give you the [shark powder] to return to me. Do this and I shall grant you the ability to call upon the power of life and smite thy foes.");
		#:: Give a 13983 - Inert Potion
		quest::summonitem(13983);
	}
	elsif ($text=~/serna tasknon/i) {
		quest::say("Serna Tasknon is a member of the Priests of Marr in the trade city of Freeport. I studied their ways of healing. The Priests of Marr can be found in the Temple of Marr.");
	}
	elsif ($text=~/shark powder/i) {
		quest::say("I am not sure what it is, but it surely has been proven to aid one's strength. Serna Tasknon in Freeport is the only one who can create it. She won't make it for you unless you bring her a potion from Toresian however. Last I saw of him he had returned to his home in Erudin.");
	}
}

sub EVENT_ITEM {
	#:: Match five gold
	if (plugin::takeCoin(0, 0, 5, 0)) {
		quest::say("The glory of Rodcet Nife flows through your soul. May your body and soul live in righteous health.");
		#:: Cast spell 17 - Light Healing on the player who triggered the event
		$npc->CastSpell(17,$userid);
	}
	#:: Match a 16581 - Bog Juice and a 13009 - Bandages
	elsif (plugin::takeItems(13009 => 1, 16581 => 1)) {
		quest::say("The glory of Rodcet Nife flows through your soul. May your body and soul live in righteous health.");
		#:: Cast spell 96 - Counteract Disease on the player who triggered the event
		$npc->CastSpell(96,$userid);
	}
	#:: Match a 13067 - Snake Fang
	elsif (plugin::takeItems(13067 => 1)) {
		quest::say("The glory of Rodcet Nife flows through your soul. May your body and soul live in righteous health.");
		#:: Cast spell 95 - Counteract Poison on the player who triggered the event
		$npc->CastSpell(95,$userid);
	}
	#:: Match a 12125 - Shark Powder
	elsif (plugin::takeItems(12125 => 1)) {
		quest::say("I thank you, my good friend. Surely the road to Freeport was not easily trod. Please take this as compensation for your costs and I also grant you the ability to call forth the power of Rodcet Nife to smite the enemy. Go forth to defend life.");
		#:: Give a 15016 - Spell: Smite
		quest::summonitem(15016);
		#:: Ding
		quest::ding();
		#:: Set factions
		quest::faction(341, 20);		#:: + Priests of Life
		quest::faction(280, 6);			#:: + Knights of Thunder
		quest::faction(262, 10);		#:: + Guards of Qeynos
		quest::faction(221, -5);		#:: - Bloodsabers
		quest::faction(219, 3);			#:: + Antonius Bayle
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 2200 to 2600cp
		my %cash = plugin::RandomCash(2200,2600);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
