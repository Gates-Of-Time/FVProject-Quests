sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Please do not harm me.  I am not the one who brought the outsiders to our land.  I am innocent and deserve to return to my people.");
	}
	elsif ($text=~/What will you trade for the skull of Di Nozok?/i) {
		quest::say("Ah, doing the bidding of the council are you?  I will only give up the skull for the 2 Ton Warrior Totems held by the goblins of nurga and frogloks of the swamp of no sarrow, the Canopie of Di Nozok held by the goblin Overseer Dlubish, and 400 gold pieces.");
	}
	elsif ($text=~/sealed canopic/i) {
		quest::say("I have heard of such things.  You must have stumbled upon an ancient jar devised by one of my long-dead ancestors.  They were fine craftsmen.  I do not share their gift, but I do know the secret of the locks.  If you have one of the ancient Vok Nir canopics, allow me to open it for you.");
	}
	elsif ($text=~/dai keys/i) {
		quest::say("There are two keys of Dai.  They were made of ceramic and were also crafted to look like warrior totems. I once broke one as a child and my grandfather got very angry.  He lashed me good!  I do not know what the big fuss was about; he easily put them back together using some sort of clay.");
	}
}

sub EVENT_ITEM {	  
	#:: Match a 12743 - Ton Warrior Totem (Key of Dai -I), a 12744 - Ton Warrior Totem (Key of Dai .I-), a 12712 - Dai Nozok skull canopic and 400 gold
	if (plugin::takeItemsCoin(0,0,400,0, 12743 => 1, 12744 => 1, 12742 => 1)) {
		quest::say("A deal is a deal I suppose, many have attempt to do what I have asked, but fallen to the Overseer.");
    	#:: Give item 12740 - Iksar Skull (Skull of Dai Nozok)
		quest::summonitem(12740);
		#:: Ding!
		quest::ding();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
