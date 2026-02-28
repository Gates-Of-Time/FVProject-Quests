sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Bark! Lo furless one. My people are Snowfang. Once mighty tribe, now snowfang home lost to vengeful winter.");
	}
	elsif ($text=~/vengeful winter/i) {
		quest::say("Our tribe once many strong, then vengeful winter come. Tribe grow lost in storm of ice. Many moon, no food, no water, no home. Many snowfang die, many snowfang leave to find new home.");
	}
	elsif ($text=~/new home/i) {
		quest::say("Many go north, not see again. Many family go, Keref family go. Aroooooooo. Someday Keref become brave, like mighty hero Groumshak. Keref go find pack to north.");
	}
	elsif ($text=~/Groumshak/i) {
		quest::say("Groumshak mighty snowfang hero. Groumshak make battle with furless one fifty paws high. When Groumshak return to tribe, vengeful winter fall. If you bring Keref mighty harpoon like Groumshak, then Keref become hero like Groumshak. Will give totem of great protection for thanks.");
	}
}

sub EVENT_ITEM {
	#:: Match a 30052 - Rune Shafted Harpoon
	if (plugin::takeItems(30052 => 1)) {
		quest::emote("gasps in astonishment.");
		quest::say("This true hero weapon. This just like harpoon of mighty Groumshak! Now I can find family! Many thanks, friend to Snowfang. Take this for thanks. It protect from danger.");
		quest::emote("hands you an intricately carved ice totem. A feeling of safety washes over you as he places it in your hand.");
		#:: Give a 30051 - Icy Totem of Protection
		quest::summonitem(30051);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
		#:: Set faction
		quest::faction(439,30); 	#:: + Snowfang Gnolls
		quest::faction(431,-30);	#:: - Ulthork
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}