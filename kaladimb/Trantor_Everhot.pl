#:: Create a scalar variable to store an item count
my $ItemCount;

sub EVENT_SPAWN {
	#:: Reset item count on spawn
	$ItemCount = 0;
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Yes, yes!! I am a very busy man. I've got blueprints to work on,  [" . quest::saylink("dwarven wire") . "] to perfect and formulae to calculate. In between those tasks, I have to find time to head down to Irontoe's and down a few Tumpy Tonics.");
	}
	if ($text=~/dwarven wire/i) {
		quest::say("Oh!! Interested in my dwarven wire, are you? Many are. I have no problem letting you use a spool, but I have to warn you that I have not perfected the strength of it yet. I will make you a trade. A couple of [" . quest::saylink("Tumpy Tonics") . "] for a spool.");
	}
	if ($text=~/tumpy tonics/i) {
		quest::say("Aaah!! I love Tumpy Tonics. They were created by Tumpy Irontoe. He was once a member of the famed Irontoe Brigade. Since they disbanded and left for parts unknown he decided to stay in Kaladim and open Irontoe's, the finest well in Faydwer.");
	}
}

sub EVENT_ITEM {
	#:: Match two 12114 - Tumpy Tonic
	if (plugin::takeItems(12114 => 2)) {
		quest::say("Great!! I did not have the time to get down to Irontoe's today. Here. Like I said. A spool of dwarven wire. Now go away. I ain't sharing these tonics"); 
		#:: Give a 12111 - Dwarven Wire
		quest::summonitem(12111);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Set factions
		quest::faction(314,5);		#:: + Storm Guard
		quest::faction(169,5);		#:: + Kazon Stormhammer
		quest::faction(219,5);		#:: + Miners Guild 249
		quest::faction(215,5);		#:: + Merchants of Kaladim
		quest::faction(57,-5);		#:: - Craknek Warriors
		#:: Reset item count
		$ItemCount = 0;
	}
	#:: Match one 12114 - Tumpy Tonic
	elsif (plugin::takeItems(12114 => 1)) {
		if ($ItemCount == 0) {
			quest::say('Hey!! Only one?!!');
			$ItemCount = 1;
		}
		else {
			quest::say("Great!! I did not have the time to get down to Irontoe's today. Here. Like I said. A spool of dwarven wire. Now go away. I ain't sharing these tonics"); 
 			#:: Give a 12111 - Dwarven Wire
			quest::summonitem(12111);
			#:: Ding!
			quest::ding();
			#:: Grant a moderate amount of experience
			quest::exp(1000);
			#:: Set factions
			quest::faction(314,5);		#:: + Storm Guard
			quest::faction(169,5);		#:: + Kazon Stormhammer
			quest::faction(219,5);		#:: + Miners Guild 249
			quest::faction(215,5);		#:: + Merchants of Kaladim
			quest::faction(57,-5);		#:: - Craknek Warriors
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
