sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Greetings!  I am the holder of the secret of the [Breastplate of Ro].  You may rest here.  You are quite safe within this camp of paladins.");
	}
	elsif ($text=~/breastplate of ro/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("The Breastplate of Ro mold will be awarded to you.  First, you will perform a test of strength.  Go to Faydwer.  There you shall seek out and destroy the Teir'Dal who carry the dark cauldrons!!  They have been venturing into our lands and capturing many Koada'Dal and Fier'Dal for cooking purposes!  Bring to me two of their dark cauldrons.");
		}
		else {
			quest::say("You need to prove your loyalty to my temple.  Go to Felwithe and seek out the Clerics of Tunare.  Prove to them your faith.  Then ask the leader of this church if you are a [honored member]."); 
		}
	}
}

sub EVENT_ITEM {
	#:: Match two 12309 - Dark Cauldron
	if (plugin::takeItems(12309 => 2)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("You have earned the mold.  You will now need go and speak with Thomas about [Lord Searfire].");
			#:: Give a 12299 - Mold of Ro Breastplate
			quest::summonitem(12299);
			#:: Set factions
			quest::faction(226, 20);		#:: + Clerics of Tunare
			quest::faction(279, 20);		#:: + King Tearis Thex
			#:: Grant a moderate amount of experience
			quest::exp(1000);
		}
		else {
			quest::say("You need to prove your loyalty to my temple.  Go to Felwithe and seek out the Clerics of Tunare.  Prove to them your faith.  Then ask the leader of this church if you are a [honored member].");
			#:: Return two 12309 - Dark Cauldron
			quest::summonitem(12309);
			quest::summonitem(12309);
		}
	}
	#:: Match one 12309 - Dark Cauldron
	elsif (plugin::takeItems(12309 => 1)) {
		quest::say("I instructed you to return with no less than two dark pots.");
		#:: Return a 12309 - Dark Cauldron
		quest::summonitem(12309);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
