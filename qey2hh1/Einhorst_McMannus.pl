sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hmph. Hello. how are ye an' how do ye do? Now, what are ye planning to buy?");
	}
	elsif ($text=~/assist/i) {
		quest::say("Greetings, $name. Welcome to the fishing village of Clan McMannus. We sell what we can here. Have a look around but, please do not buy too much. We must save most of our stock for delivery to our home.");
	}
	elsif ($text=~/fugitive/i) {
		quest::say("I see they have sent someone to hunt the scoundrel down.  I am afraid I haven't seen the barbarian thief in quite some time.  You can search and search for him here in the western plains, but I doubt you shall find him.  Good luck.");
	}
	elsif ($text=~/lion meat shipment/i) {
		quest::say("Oh, yes, the lion meat shipment. Aye, it's here somewhere. Just a moment. Ah! Here you go. Apologize for the delay in this.");
		#:: Give a 13961 - Lion Meat Shipment
		quest::summonitem(13961);
	}
}
	
sub EVENT_ITEM {
	#:: Match a 18831 - Tattered Note
	if (plugin::takeItems(18831 => 1)) {
		quest::say("Yes. We almost forgot of the shipment of Karana clovers. Here you are, my friend. Back to the north with you. I am sure the Shamans of Justice will need this.");
		#:: Give a 13962 - Karana Clover Shipment
		quest::summonitem(13962);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1600);
		#:: Create a hash for storing cash - 600 to 1100 cp
		my %cash = plugin::RandomCash(600,1100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set Factions
		quest::faction(361, 1);		#:: + Wolves of the North
		quest::faction(294, 1);		#:: + Shamen of Justice
		quest::faction(213, 1);		#:: + Merchants of Halas 
		quest::faction(311, 1);		#:: + Steel Warriors	
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

#:: Converted to Perl by SS
