sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("It is always a pleasure to meet a new face. We have many who travel far and wide to visit our great academy. Many who brave the long trip by boat. Many who dare to cross the territory of the [" . quest::saylink("Deathfist orcs") . "].");
	}
	elsif ($text=~/Deathfist orcs/i) {
		quest::say("The Deathfist are a clan of orcs. They are not very powerful, yet I hear they dabble in the circles of magic. Their skills in the ways of magic are limited. It is my duty to study them. I shall pay for your services. Will you [" . quest::saylink("assist with the research") . "]?");
	}
	elsif ($text=~/assist with the research/i) {
		quest::say("Yes. You will do. Go into the lands which surround Freeport. There you shall encounter Deathfist apprentices. They are as young as yourself and each should carry an orc cantrip. Return one for further studies. Do so and you will earn your pay as well as our respect.");
	}
	elsif ($text=~/test the might of the orc oracles/i) {
		quest::say("The word of mouth in the Academy of Arcane Science is that you are no foe, but you have yet to prove your worth to us. Perform more tasks for the great Tara Neklene.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13845 - Illegible Cantrip
	if (plugin::takeItems(13845=> 1 )) {
		quest::say("Very fine work, my young apprentice. This shall be very useful in understanding their ways. I have heard rumors of a scribe who can decipher these scrolls. He is said to frequent the local taverns. Bah!! If I cannot decipher them, no one can!! Continue with your work. Soon you shall advance enough to [" . quest::saylink("test the might of the orc oracles") . "].");
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(25);
		#:: Set faction
		quest::faction(220,1);	 	#:: + Arcane Scientists
		quest::faction(281,1); 		#:: + Knights of Truth
		quest::faction(296,-1); 	#:: - Opal Darkbriar
		quest::faction(330,-1); 	#:: - The Freeport Militia
		#:: Create a hash for storing cash - 10 to 2000cp
		my %cash = plugin::RandomCash(10,2000);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
