sub EVENT_SAY {
	if ($text=~ /Hail/i) {
		quest::say("Hail yerself. I'm sure ye've better things to do than to bother a man makin' his potions, then, eh?");
	}
	if ($text=~ /potion of sorrow/i) {
		quest::say("Ach! What'd ye be needin' that fer? Only those of dark magicks require such a thing and by me mother's eyes, never could I sell to such a soul.  If yer soul be clean, then put yer [" . quest::saylink("money") . "] in this enchanted pouch and I'll know yer intent.  If yer soul be rotten, I'll knowin', and ye'll be dead.  Tis indifferent I'd better be to yer actions.");
	}
	if ($text=~ /money/i) {
		quest::say("Sure'n ye dinnae think I'd give ye a potion fer free, then?  I'll be needin' five hundred gold coins to make such an item.  'Tis hard t' make and few are the uses fer such a potion.");
	}
}

sub EVENT_ITEM {
	#:: Set a scalar variable to accept only gold
	my $cash = $gold);
 	#:: Match if cash is greater than 500 gp
	if ($cash >= 500) {
		quest::say("Aye, I guess ye truly are a good soul.  Good luck on whatever ye needed such a dread item fer.");
		#:: Grant a small amount of experience
		quest::exp(1250);
		#:: Give a 7113 - Potion of Sorrow
		quest::summonitem(7113);
	}
	else {
		#:: Return unused money
		quest::givecash($copper, $silver, $gold, $platinum);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
