sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hekzin G`Zule says 'How's it going scrub? Correct me if I'm wrong, but you appear to be a rogue. If you're a [new rogue], it's my job to test your skill. If you are not then you by speaking with me I see you show interest in [joining this house of rogues].");
	}
	elsif ($text=~/new rogue|joining this house of rogues/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("We of the Ebon Mask must first be sure you are skilled with a blade. At the same time. we are attempting to create a new type of armor for our rogues. So it is the test of each young rogue to take this bag into Nektulos and fill it with three moss snake skins and three snake fangs. then combine them. We get the bag and you earn a little respect as well as the [Dark Shield of Ebon].");
			#:: Give a 17943 - Empty Bag
			quest::summonitem(17943);
		}
		else {
			quest::say("You are quite bold to approach a member of the Ebon Mask. Now be smart and run away.");
		}
	}
	elsif ($text=~/dark shield of ebon/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("The Dark Shield of Ebon was made for the use of this house by the finest craftsmen of Neriak.  It can be carried in the hand as well as slung upon one's back.  Besides this advantage, it is much lighter than most other shields.");
		}
		else {
			quest::say("You are quite bold to approach a member of the Ebon Mask. Now be smart and run away.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13889 - Bag of Snake Parts
	if (plugin::takeItems(13889 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Fine work for a scrub. Maybe one day you will be able to test this new snakescale armor out. For the moment you shall take the [Dark Shield of Ebon] if you do not own one already.");
			#:: Give a 12258 - Dark Shield of Ebon
			quest::summonitem(12258);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(320, -2);		#:: - Wolves of the North
			quest::faction(262, -1);		#:: - Guards of Qeynos
			quest::faction(244, 10);		#:: + Ebon Mask
			quest::faction(263, -1);		#:: - Guardians of the Vale
			quest::faction(329, -2);		#:: - Carson McCabe
			#:: Grant a moderate amount of experience
			quest::exp(1000);
			#:: Create a hash for storing cash - 75 to 100cp
			my %cash = plugin::RandomCash(75,100);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
 		}
		else {
			quest::say("You are quite bold to approach a member of the Ebon Mask. Now be smart and run away.");
			#:: Return a 13889 - Bag of Snake Parts
			quest::summonitem(13889);
		}
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
	#:: Return unused items
	plugin::returnUnusedItems();
}
