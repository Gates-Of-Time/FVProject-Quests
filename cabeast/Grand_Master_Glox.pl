sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18204 - Guild Summons
	if (plugin::check_hasitem($client, 18204)) { 
		$client->Message(15,"As you enter the Court of Pain, Grand Master Glox, sits in mediation. Without even looking up, he addresses you. 'The time has come for discipline. Read the note in your inventory and then hand it to me to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote('shows no reaction to your greeting.');
	}
	elsif ($text=~/trial of agility/i) {
		quest::say('I knew you were not the whiff others claimed you to be, are you sure you are [ready] to be tested in agility?');
	}
	elsif ($text=~/ready/i) {
		quest::say('We shall spar then, I hope you are as prepared as you think you are.');
		quest::movepc(106,-190.9,1089.8,-25.2); # Zone: cabeast
	}
}

sub EVENT_ITEM {
	#:: Match a 18204 - Guild Summons
	if (plugin::takeItems(18204 => 1)) {
		quest::emote('breaks his meditation and quickly grabs your forearms. You feel the raw power in his heavily callused hands. Out of nowhere, his tail sweeps forward and places a shackle upon your wrist. He then points south towards Master Bain and returns to his meditation.');
		#:: Give a 4190 - Shackle of Dust
		quest::summonitem(4190);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(444, 200);	#:: + Swift Tails
		quest::faction(441, 50);	#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100)
	}
	#:: Match a 14788 - Illegible Note: Helm
	elsif (plugin::takeItems(14788 =>1 )) {
		quest::emote("sits whispering incoherently for a long moment before even regarding the note you dropped in front of him. The Grand Master suddenly snatches up the note from Xlixinar, removes a small charcoal marker from a belt pouch, and scrawls some intructions upon it. He drops the note immediately after finishing and resumes his meditation without a word.");
		#:: Give a 18980 - Note from Glox
		quest::summonitem(18980);
	}
#::	#:: Match a 14782 - Tiny Collar and a 10032 - Star Ruby
#::	elsif (plugin::takeItems(14782 =>1, 10032 =>1 )) {
#::		quest::emote("nods slightly");
#::		#:: Give a 14783 - Glox Reference
#::		quest::summonitem(14783);
#::		#:: Ding!
#::		quest::ding();
#::		#:: Grant a large amount of experience
#::		quest::exp(10000);
#::	}
#::	plugin::try_tome_handins(\%itemcount, $class, 'Monk');
	#:: Return unused items
	plugin::returnUnusedItems();
}
