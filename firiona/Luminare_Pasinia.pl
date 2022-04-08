sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("waves her hands as if to cast a spell. 'GREETINGS!! I am the Luminare of Firiona by decree of his royal highness, King Thex,I am here to research spells and artifacts. I have much to do. I welcome any enchanter who offers to [assist the great Luminare].'");
	}
	elsif ($text=~/assist/i) {
		quest::say("And great I am, indeeed!! Alas, not great enough to be everywhere at once. I would gladly reward you if you would [collect components] for me.");
	}
	elsif ($text=~/collect/i) {
		quest::say("Then go into the wilds beyond the outpost and upon your return, you shall give to me the powder of Nok, heart of ice. Ton warrior totem, and a sabertooth tiger mane. This shall earn you knowledge of an enchanter spell I recently scribed.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12948 - Nok Shaman Powder, a 12834 - Heart of Ice, a 12743 - Ton Warrior Totem, and a 12824 - Sabertooth Tiger Mane
	if (plugin::takeItems(12948 => 1, 12834 => 1, 12743 => 1, 12824 => 1)) {
		quest::emote("places the items into a sack and removes a scroll from her robe. This is yours. A spell I discovered and translated for one with less intelligence than the great Luminare of Firiona Vie. You may kiss my feet now.'");
		#:: Give a 12949 - Vision of Sebilite
		quest::summonitem(12949);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 3);			#:: + Inhabitants of Firiona Vie
		quest::faction(326, 2);			#:: + Emerald Warriors
		quest::faction(312, 2);			#:: + Storm Guard
		quest::faction(441, -1);		#:: - Legion of Cabilis
		quest::faction(313, -1);		#:: - Pirates of Gunthak
		#:: Grant a small amount of experience
		quest::exp(250);
	}
	#:: Match a 12948 - Nok Shaman Powder
	elsif (plugin::takeItems(12948 => 1)) {
		quest::say("Do you not remember that I asked for powder of Nok, a Ton warrior totem, a heart of ice and a sabertooth tiger mane? Incomplete deeds shall fetch no enchanter reward.");
		#:: Give a 12948 - Nok Shaman Powder
		quest::summonitem(12948);
	}
	#:: Match a 12834 - Heart of Ice
	elsif (plugin::takeItems(12834 => 1)) {
		quest::say("Do you not remember that I asked for powder of Nok, a Ton warrior totem, a heart of ice and a sabertooth tiger mane? Incomplete deeds shall fetch no enchanter reward.");
		#:: Give a 12834 - Heart of Ice
		quest::summonitem(12834);
	}
	#:: Match a 12743 - Ton Warrior Totem
	elsif (plugin::takeItems(12743 => 1)) {
		quest::say("Do you not remember that I asked for powder of Nok, a Ton warrior totem, a heart of ice and a sabertooth tiger mane? Incomplete deeds shall fetch no enchanter reward.");
		#:: Give a 12743 - Ton Warrior Totem
		quest::summonitem(12743);
	}
	#:: Match a 12824 - Sabertooth Tiger Mane
	elsif (plugin::takeItems(12824 => 1)) {
		quest::say("Do you not remember that I asked for powder of Nok, a Ton warrior totem, a heart of ice and a sabertooth tiger mane? Incomplete deeds shall fetch no enchanter reward.");
		#:: Give a 12824 - Sabertooth Tiger Mane
		quest::summonitem(12824);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
