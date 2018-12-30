sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
	#:: Create a timer that loops every 10 minutes
	quest::settimer("blurt", 6);
	quest::say("I set a blurt timer!");
	#:: Enable proximity say
	quest::enable_proximity_say();
}

sub EVENT_TIMER {
	quest::say("Event Timer has triggered!");
	#:: Catch the "blurt" timer
	if ($timer eq "blurt") {
		#:: Stop the timer "blurt"
		quest::stoptimer("blurt");
		quest::say("Oh Dear.. I can't believe I forgot.. He must be [" . quest::saylink("starving") . "]!");
		#:: Create a timer that loops every 10 minutes
		quest::settimer("blurt", 6);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. $name!  Welcome to Tagglefoot's Farm.  We grow nothing but the finest vegetables in our field.  We even manage to harvest the mystical jumjum stalk in our fields.  Karana has blessed us indeed, $name.");
	}
}

sub EVENT_PROXIMITY_SAY {
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
