sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("an avenging caitiff glares at you with fangs bared as he draws an electrum-bladed wakizashi.");
	}
	elsif ($text=~/electrum-bladed wakizashi/i) {
		quest::say("HA! As if a mortal such as yourself is worthy of such a weapon. Leave me to my mission - my purpose in life - the slaying of those who brought me into this existence, then exiled me from this place.");
	}
	elsif ($text=~/who must be slain/i) {
		quest::say("Mother? Father? May you find peace at last. I shall avenge your suffering! I will grow stronger and set free the souls of the others.");
	}
	elsif ($text=~/mother/i) {
		quest::say("My mother was named Issis. She is, to my knowledge, employed as Lord Mistmoores maid.");
	}
	elsif ($text=~/father/i) {
		quest::say("Syncall is my fathers name. He serves as Lord Mistmoores butler.");
	}
}

sub EVENT_ITEM {
	if (plugin::takeItems(10179 => 1, 10178 => 1)) {
		quest::say("Mother? Father? May you find peace at last. I shall avenge your suffering! I will grow stronger and set free the souls of the others.");
		#:: Give a 5408 - Electrum-Bladed Wakizashi
		quest::summonitem(5408);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(5000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
