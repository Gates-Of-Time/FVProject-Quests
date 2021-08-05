sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, researcher!  There are many things to be found here.  Our selection grows daily.  Would you [care for any books]?");
	}
	elsif ($text=~/books/i) {
	    quest::say("Excellent!  I love to see the young so interested in knowledge.  What subject would you like to research? My most interesting topics today would have to be the Hole, old Paineel, the Underfoot, and the history of Paineel.");
	}
	elsif ($text=~/history/i) {
		quest::say("Tis an excellent topic, $name.  Much can be learned of a civilization if one first understands its history.  I hope you enjoy the book.");
		#:: Give a 18093 - History of Paineel
		quest::summonitem(18093);
	}
	elsif ($text=~/hole/i) {
		quest::say("Here you are, $name.  The book has old bindings and is worthless to most, but the value of knowledge is priceless.");
		#:: Give a 18091 - History of the Hole
		quest::summonitem(18091);
	}
	elsif ($text=~/underfoot/i) {
		quest::say("Excellent choice, $name.  The Underfoot is a mysterious place.  I hope you get as much from the book as I did.");
		#:: Give a 18094 - Underfoot Musings
		quest::summonitem(18094);
	}
	elsif ($text=~/old/i) {
		quest::say("Take this book, $name.  It contains the history of the ancient city from which we came.");
		#:: Give a 18092 - Old Paineel
		quest::summonitem(18092);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
