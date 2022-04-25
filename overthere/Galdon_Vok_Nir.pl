sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Please do not harm me.  I am not the one who brought the outsiders to our land.  I am innocent and deserve to return to my people.");
	}
	elsif ($text=~/dai nozok skull canopic/i) {
		quest::emote("opens his eyes wide. 'Oh! You found one of my family's fine canopics. That particular one was made for the legendary mystic, Di Nozok. If you think you're going to open it, think again. I know how, and will gladly [open the Nozok canopic], for a price. I heard the second was stolen by a sarnak shaman.'");
	}
	elsif ($text=~/open the nozok canopic/i) {
		quest::say("Want it opened? I will need the two [keys of Dai], the Dai skull canopic, and my fee, 400 gold coins.");
	}
	elsif ($text=~/dai keys/i) {
		quest::say("There are two keys of Dai.  They were made of ceramic and were also crafted to look like warrior totems. I once broke one as a child and my grandfather got very angry.  He lashed me good!  I do not know what the big fuss was about; he easily put them back together using some sort of clay.");
	}
	elsif ($text=~/sealed canopic/i) {
		quest::say("I have heard of such things.  You must have stumbled upon an ancient jar devised by one of my long-dead ancestors.  They were fine craftsmen.  I do not share their gift, but I do know the secret of the locks.  If you have one of the ancient Vok Nir canopics, allow me to open it for you.");
	}
}

sub EVENT_ITEM {	  
	#:: Match a 12743 - Ton Warrior Totem (Key of Dai -I), a 12744 - Ton Warrior Totem (Key of Dai .I-), a 12712 - Dai Nozok skull canopic, and 400 gold
	if (plugin::takeItemsCoin(0, 0, 400, 0, 12743 => 1, 12744 => 1, 12742 => 1)) {
		quest::emote("takes the two keys. He inserts and twists them, one at a time, in hidden slots on the Dai skull canopic. Suddenly, it pops open and he hands you an iksar skull. 'Here you are,' he says, 'I hope it is what you were looking for.'");
		#:: Give a 12740 - Iksar Skull (Skull of Dai Nozok)
		quest::summonitem(12740);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 12743 - Ton Warrior Totem (Key of Dai -I)
	elsif (plugin::takeItems(12743 => 1)) {
		quest::say("To open the canopic, I require the two Dai keys, the Dai skull canopic and 400 gold coins.");
		#:: Give a 12743 - Ton Warrior Totem (Key of Dai -I)
		quest::summonitem(12743);
	}
	#:: Match a 12744 - Ton Warrior Totem (Key of Dai .I-)
	elsif (plugin::takeItems(12744 => 1)) {
		quest::say("To open the canopic, I require the two Dai keys, the Dai skull canopic and 400 gold coins.");
		#:: Give a 12744 - Ton Warrior Totem (Key of Dai .I-)
		quest::summonitem(12744);
	}
	#:: Match a 12712 - Dai Nozok skull canopic
	elsif (plugin::takeItems(12742 => 1)) {
		quest::say("To open the canopic, I require the two Dai keys, the Dai skull canopic and 400 gold coins.");
		#:: Give a 12712 - Dai Nozok skull canopic
		quest::summonitem(12712);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
