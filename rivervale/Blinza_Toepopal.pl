sub EVENT_SPAWN {
	#:: Set a timer for 10 minutes
	quest::settimer("jillin", 600);
	#:: Set the proximity bounds around the NPC on spawn, 50 units across
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x-25, $x+25, $y-25, $y+25);
	quest::enable_proximity_say();
}


sub EVENT_TIMER {
	if ($timer eq "jillin") {
		quest::say("[" . quest::saylink("Jillin") . "]? Jillin? Where did he go? Hrumph!");
	}
}

sub EVENT_PROXIMITY_SAY {
	if ($text=~/jillin/i) {	
		quest::say("Jillin is my courier. He was supposed to take this pot of [" . quest::saylink("stew") . "] over to Deputy Lowmot in Guardian Stronghold. It is just about ready and Mayor Gubbin hates cold stew!");
	}
	elsif ($text=~/stew/i) {
		quest::say("Here. Take it to Lowmot. The stew is already paid for but the good Deputy usually tips Jillin quite well. Hurry! It's getting cold!");
		#:: Give a 13959 - Carrot Stew
		quest::summonitem(13959);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name.  Welcome to the Fool's Gold!  Cards are upstairs, drinks are down here.  Have fun!");
	}
}

sub EVENT_ITEM {
	#:: Match a 13958 - Crate of Carrots
	if (plugin::takeItems(13958 => 1)) {
		quest::say("Well it is about time!  The mayor gets very upset if he does not have the freshest of carrots in his stew.  Here is the money for the carrots.  Be off with you.  Now, where the heck did [" . quest::saylink("Jillin") . "] go?");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 2 to 8cp
		my %cash = plugin::RandomCash(2,8);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions				
		quest::faction(77, 1);		#:: + Deeppockets
		quest::faction(218, 1);		#:: + Merchants of Rivervale
		quest::faction(31, -2);		#:: - Carson McCabe
		quest::faction(33, -2);		#:: - Circle of Unseen Hands
		quest::faction(48, -2);		#:: - Coalition of Tradefolk Underground
	}
	#:: Match a 13957 - Crate of Fine Carrots
	elsif (plugin::takeItems(13957 => 1)) {
		quest::say("Oh excellent! These carrots are perfect! The finest Reebo has ever sent us. The mayor will be so pleased. Here is the payment for the carrots. Excuse me, but I must finish preparing the stew. Hmm. Where the heck did [" . quest::saylink("Jillin") . "] go?");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10,20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions				
		quest::faction(77, 5);		#:: + Deeppockets
		quest::faction(218, 5);		#:: + Merchants of Rivervale
		quest::faction(31, -10);	#:: - Carson McCabe
		quest::faction(33, -10);	#:: - Circle of Unseen Hands
		quest::faction(48, -10);	#:: - Coalition of Tradefolk Underground
	}
	#:: Match a 13971 - Crate of Rotten Carrots
	elsif (plugin::takeItems(13971 => 1)) {
		quest::say("What are these?!  I am trying to make stew for the mayor and you bring me ROTTEN CARROTS?!  Have you no sense??  Take these back to Reebo.");
		#:: Give a 13972 - Crate of Rotten Carrots
		quest::summonitem(13972);
		#:: Set factions				
		quest::faction(77, -4);		#:: + Deeppockets
		quest::faction(218, -4);	#:: + Merchants of Rivervale
		quest::faction(31, 2);		#:: - Carson McCabe
		quest::faction(33, 2);		#:: - Circle of Unseen Hands
		quest::faction(48, 2);		#:: - Coalition of Tradefolk Underground
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
