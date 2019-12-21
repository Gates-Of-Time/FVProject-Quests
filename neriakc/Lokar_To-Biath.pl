sub EVENT_COMBAT {
	#:: Combat state 1 is entered combat
	if ($combat_state == 1) {
		quest::say("Come and feel the blade of the Dark Bargainers.");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am the Scribe of Innoruuk. If you do not have business with me, begone!");
	}
	elsif ($text=~/innoruuk/i) {
		quest::say("I am his scribe, and He is our god. There is nothing else to be said.");
	}
	elsif ($text=~/scribe of dal/i) {
		quest::say("The Scribes of Dal? All of them are long since [dead].. or at least most would say that.");
	}
	elsif ($text=~/dead/i) {
		quest::say("Perhaps, perhaps not. I cannot remember, but perhaps Innoruuk would help me remember should you tithe him a bottle of red wine from the Blind Fish.");
	}
	elsif ($text=~/vow/i) {
		quest::say("Break the vow? She might. Were you to tithe 70 gold to your god, Innoruuk, he might aid you.");
	}
}

sub EVENT_ITEM {
	#:: Match seventy gold pieces
	if (plugin::takeCoin(0, 0, 70, 0)) {
		quest::say("Take this note to the Scribe of Dal, and perhaps she will break her vow.");
		#:: Give a 18200 - Note
		quest::summonitem(18200);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(236, 10);		#:: + Dark Bargainers
		quest::faction(334, 1);			#:: + Dreadguard Outer
		quest::faction(370, 1);			#:: + Dreadguard Inner
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match four 13030 - Red Wine
	elsif (plugin::takeItems(13030 => 4)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Ah, yes, let me pray to our god.. Yes, Innoruuk has given me wisdom. A Scribe of Dal still exists, disguised as a barkeep in the Blind Fish. This information will not help you though, for she has sworn a [vow] of silence and will not speak of the Dal.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(236, 40);	#:: + Dark Bargainers
			quest::faction(334, 4);		#:: + Dreadguard Outer
			quest::faction(370, 4);		#:: + Dreadguard Inner
			#:: Grant a moderate amount of experience
			quest::exp(2000);
		}
		else {
			quest::say("Leave my sight at once! You are no friend to the Dark Bargainers.");
			#:: Return four 13030 - Red Wine
			quest::summonitem(13030);
			quest::summonitem(13030);
			quest::summonitem(13030);
			quest::summonitem(13030);
		}
	}
	#:: Match three 13030 - Red Wine
	elsif (plugin::takeItems(13030 => 3)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Ah, yes, let me pray to our god.. Yes, Innoruuk has given me wisdom. A Scribe of Dal still exists, disguised as a barkeep in the Blind Fish. This information will not help you though, for she has sworn a [vow] of silence and will not speak of the Dal.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(236, 30);	#:: + Dark Bargainers
			quest::faction(334, 3);		#:: + Dreadguard Outer
			quest::faction(370, 3);		#:: + Dreadguard Inner
			#:: Grant a moderate amount of experience
			quest::exp(1500);
		}
		else {
			quest::say("Leave my sight at once! You are no friend to the Dark Bargainers.");
			#:: Return three 13030 - Red Wine
			quest::summonitem(13030);
			quest::summonitem(13030);
			quest::summonitem(13030);
		}
	}
	#:: Match two 13030 - Red Wine
	elsif (plugin::takeItems(13030 => 2)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Ah, yes, let me pray to our god.. Yes, Innoruuk has given me wisdom. A Scribe of Dal still exists, disguised as a barkeep in the Blind Fish. This information will not help you though, for she has sworn a [vow] of silence and will not speak of the Dal.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(236, 20);	#:: + Dark Bargainers
			quest::faction(334, 2);		#:: + Dreadguard Outer
			quest::faction(370, 2);		#:: + Dreadguard Inner
			#:: Grant a moderate amount of experience
			quest::exp(1000);
		}
		else {
			quest::say("Leave my sight at once! You are no friend to the Dark Bargainers.");
			#:: Return two 13030 - Red Wine
			quest::summonitem(13030);
			quest::summonitem(13030);
		}
	}
	#:: Match one 13030 - Red Wine
	elsif (plugin::takeItems(13030 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Ah, yes, let me pray to our god.. Yes, Innoruuk has given me wisdom. A Scribe of Dal still exists, disguised as a barkeep in the Blind Fish. This information will not help you though, for she has sworn a [vow] of silence and will not speak of the Dal.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(236, 10);	#:: + Dark Bargainers
			quest::faction(334, 1);		#:: + Dreadguard Outer
			quest::faction(370, 1);		#:: + Dreadguard Inner
			#:: Grant a small amount of experience
			quest::exp(500);
		}
		else {
			quest::say("Leave my sight at once! You are no friend to the Dark Bargainers.");
			#:: Return one 13030 - Red Wine
			quest::summonitem(13030);
		}
	}
  	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
     quest::say("The death of a Dark Bargainer never goes unnoticed!");
}
