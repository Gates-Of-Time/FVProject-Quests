sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Fortune's Fancy $name. I carry only the finest jewels and jewelry in all the land. All of the [charges and accusations] made against me are obviously false as you can see by my beatiful wares.");
	}
	elsif ($text=~/charges and accusations/i) {
		quest::say("Bah! Some of the ehem, fine residents of this city have accused me of replacing some fine gems with glass. They have even gone so far as to say that I short change people. The nerve! It is good that so many [people] require my services.");
	}
	elsif ($text=~/people/i) {
		quest::say("Well you see, as I am the only jewler in this fine city, I am required to render service to the palace, all the guild houses and all of the fine citizens here. Between you and me, I think that's the only reason why I am still around.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
