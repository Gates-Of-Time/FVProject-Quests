sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("takes a sip of lager and looks up at you. 'Ahh! An adventurer of sorts? Looking for work, are we? If you have the time, I might have a bit of a [proposition] for you.'");
	}
	elsif ($text=~/proposition/i) {
		quest::say("I was sent by the Legion to deliver a restraining order to a few of the troopers. They have been ordered to stay away from the tavern. They have spent too much time drinking and not enough training. I am to have them initial the restraint order list, but my feet are killing me. Perhaps you could [deliver the restraining order]?");
	}
	elsif ($text=~/restraining order/i) {
		quest::say("Here is the restraint order. Go to the troopers and ask them to [sign the restraining order]. Also, make sure to have them sign it in alphabetical order. I am a very big stickler about this. The troopers' names are as follows; Ozlot, Ogmire, Nish Nish, Frogzin, Gummin, Inkin, Roklon, Taer, Fryp and Selbat. When all is done, I shall pay you.");
		#:: Give a 18240 - Legion Order
		quest::summonitem(18240);
	}
}

sub EVENT_ITEM {
	#:: Match a 18250 - Legion Order
	if (plugin::takeItems(18250 => 1)) {
		quest::say("Thank you so much. I am so glad I did not have to deal with such a rowdy band of troopers as these. Please take some coin and perhaps a book from my personal library.");
		#:: Give a 12460 - The Book of Knowledge or a 12461 - The Code of Combat
		quest::summonitem(quest::ChooseRandom(12460, 12461));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(440, 3); 		#:: + Cabilis Residents
		quest::faction(441, 3);			#:: + Legion of Cabilis
		#:: Grant a moderate amount of experience
		quest::exp(1200);
		#:: Create a hash for storing cash - 50 to 100cp
		my %cash = plugin::RandomCash(50, 100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
