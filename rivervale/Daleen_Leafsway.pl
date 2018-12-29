#:: Set up a 50 unit distance
sub EVENT_SPAWN {
	quest::set_timer("blurt", 600);
}

sub EVENT_TIMER {
	#:: Catch the "blurt" timer
	if ($timer eq "blurt") {
		#:: Stop the timer "blurt"
		quest::stoptimer("blurt");
		quest::say("Oh Dear.. I can't believe I forgot.. He must be [" . quest::saylink("starving") . "]!");
		#:: reset blurt timer
		quest::set_timer("blurt", 600);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. $Name!  Welcome to Tagglefoot's Farm.  We grow nothing but the finest vegetables in our field.  We even manage to harvest the mystical jumjum stalk in our fields.  Karana has blessed us indeed, $Name.");
	}
	if ($text=~/starving/i) {
		quest::say("Deputy Eigon! I forgot! I was supposed to bring him some turnips to eat while he is on patrol! Oh... He asked so nicely, too. I feel bad that I forgot. If only someone would take these [" . quest::saylink("turnips") . "] to the Deputy.");
	}
	if ($text=~/turnips/i) {
		quest::say("Oh, thank you so much! You can keep any payment he gives you. Be sure to tell him I'm sorry.");
		#:: Summon 16165 - Sack of Turnips
		quest::summonitem(16165);
	}
} 

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
