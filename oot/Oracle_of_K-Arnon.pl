sub EVENT_SAY {
	#:: Match if faction is Apprehensive or worse
	if ($faction > 5) {
		quest::say("Your reputation preceeds you. You are no friend to me.");
	}
	elsif ($text=~/hail/i) {
		quest::say("Greetings, $name, I am the Oracle of K'Aron. Do you quest for [knowledge] yourself, or do you offer that which I [seek].");
	}
	elsif ($text=~/knowledge/i) {
		quest::say("I have lived long and have insight into many matters, yet I despise charity. To learn from me, you must first bring me that which I [seek].");
	}
	elsif ($text=~/seek/i) {
		quest::say("I seek knowledge, which is superior to all things. And no knowledge is greater than that which is contained within the [Tome of Ages].");
	}
	elsif ($text=~/tome of ages/i) {
		quest::say("The Tome of Ages has been compiled over the millennia by the Scribes of [Dal]. It was divided into seven distinct [books] by the scribes to keep the knowledge from one such as me. That said, with aid, I shall unite these books and the Tome of Ages shall be mine.");
	}
	elsif ($text=~/dal/i) {
		quest::say("They were elves once, but now are Teir'Dal, and as evil as they are wise. Many tomes have they written, but none greater than the Tome of Ages.");
	}
	elsif ($text=~/books/i) {
		quest::say("The seven books that make up the Tome of Ages are those of [Enlightenment], [Scale], [Turmoil], [Monuments], [Elders], [Blood], and the [Lost].");
	}
	elsif ($text=~/enlightenment/i) {
		quest::say("I do not seek the Book of Enlightenment at this time, but I might have need of it in the future.");
	}
	elsif ($text=~/scale/i) {
		#:: quest::say("I do not seek the Book of Scale at this time, but I might have need of it in the future.");
		#:: Part of The Fiery Avenger, Paladin Epic 1.0
		quest::say("Ah, the Book of Scale.. It would be wondrous indeed if you could recover the Book of Scale for me. If you do manage to procure the Book of Scale, I will gladly part with an artifact of my own that may be of interest to you.");
	}
	elsif ($text=~/turmoil/i) {
		quest::say("Ah, yes! The Book of Turmoil. I seek this book, and should you find it and return it to me, I will reward you with secret knowledge.");
	}
	elsif ($text=~/monuments/i) {
		quest::say("I do not seek the Book of Monuments at this time, but I might have need of it in the future.");
	}
	elsif ($text=~/elders/i) {
		quest::say("I do not seek the Book of Elders at this time, but I might have need of it in the future.");
	}
	elsif ($text=~/blood/i) {
		quest::say("I do not seek the Book of Blood at this time, but I might have need of it in the future.");
	}
	elsif ($text=~/lost/i) {
		quest::say("I do not seek the Lost Book at this time, but I might have need of it in the future.");
	}
}


sub EVENT_ITEM {
	#:: Match if faction is Apprehensive or worse
	if ($faction > 5) {
		quest::say("Your reputation preceeds you. You are no friend to me.");
	}
	#:: Part of The Fiery Avenger, Paladin Epic 1.0
	#:: Match 18302 - Book of Scale
	elsif (plugin::takeItems(18302 => 1)) {
		quest::say("Unbelievable! The legendary Book of Scale is mine! Please, take this as a small token of my thanks. I warn you however, if you ever manage to join the corporeal body to the evil that resides within, you will rue the day.");
		#:: Give a 19072 - Miragul's Phylactery
		quest::summonitem(19072);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(402, 10);
		quest::faction(403, -10);
		#:: Grant a large amount of experience
		quest::exp(72900);
	}
	#:: Match a 18202 - Book of Turmoil
	elsif (plugin::takeItems(18202 => 1)) {
		quest::say("Thank thee for this tome. Be sure to check back with me later, as I might have another task for thee.");
		#:: Give a 10071 - Glowing Torch
		quest::summonitem(10071);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(402, 10);		#:: + Oracle of Karnon
		quest::faction(403, -10);		#:: - Oracle of Marud
		#:: Grant a large amount of experience
		quest::exp(72900);
	}
	quest::say("I have no need for this item, $name. You can have it back.");
	#:: Return unused items
	plugin::returnUnusedItems();
}
