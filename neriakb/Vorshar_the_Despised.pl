sub EVENT_SAY { 
	if ($text=~/why were you selected/i) {
		quest::say("You dare to ask one such as I the will of the Hateful Father?! However. you do seem to be quite lacking in the field of thought and intelligence. which would easily explain why you have not heard my name nor of my [legend].");
	}
	elsif ($text=~/what legend/i) {
		quest::say("I. my dear witless Dark Elf. was chosen by Innoruuk's hand during the uprising and fall of the [Combine Empire.] When the Teir`Dal first began to discuss the decision to sign a treaty and join the Empire. I was one of the few who opposed siding with humans and the rest of the lowly creatures of this world.");
	}
	elsif ($text=~/why did you return/i) {
		quest::say("It is the Dark Father's will that I have returned to this realm. I do not question his judgement. nor shall I ever. His will is mine. and I do not question myself. The Dark Father wishes to expand his followers within the Realm of Heroes. and thus. I have been sent as more of a judge and jury for those who would consider themselves [worthy of Innoruuk's recognition] and divine favor.");
	}
	elsif ($text=~/who.*king/i) {
		quest::say("The mighty empire of the Teir'Dal is ruled by King Naythox Thex.  All hail Thex!");
	}
	elsif ($text=~/who.*the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/where.*lodge of the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/who.*queen cristanos/i) {
		quest::say("Queen Cristanos is the queen of Neriak, of course!  She was the one who formed the necromancers and shadowknights into the guild called the Dead.");
	}
	elsif ($text=~/what.*indigo brotherhood/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*cauldron of hate/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*commons quarter/i) {
		quest::say("You are in the Commons Quarter.  This quarter is designated for all common Teir'Dal.  You can find an abundance of merchants as well as the arena and warriors guild here.");
	}
	elsif ($text=~/what.*warriors guild/i) {
		quest::say("Within this area you will find the Cauldron of Hate which is home to the Teir'Dal warriors.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
