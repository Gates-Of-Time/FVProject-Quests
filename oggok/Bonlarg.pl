sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Shadowknight master me be!!  $name prove to me that $name be worthy to be one with Greenblood and me give $name black shadow tunic.  You want [black shadow tunic]?");
	}
	if ($text=~/black shadow tunic/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("You hunt lizard scouts. Them sometimes carry special fife to talk to other lizards far away. Greenbloods stop them. Bring Bonlarg three lizard scout fifes and green stained skin tunic you gots when you first talk to Soonog. Give all to Bonlarg and get tunic.");
		}
		#:: Match if faction is Indifferent or worse
		else {
			quest::say("Help Greenbloods you will. Give lizard tails to Grevak.  Den maybe we trust.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match if three 12198 - Lizardman Scout Fife and a 13527 - Green Stained Skin Tunic*
	if (plugin::takeItems(12198 => 3, 13527 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Took you long time! It easy task, but me guess you still earn black shadow tunic. You wear to show all that you young shadowknight. It help you be smarter likes Bonlarg. It only for young Greenblood shadowknight. Maybe later green shadow tunic you earn or maybe dead you be!");
			#:: Give a 12199 - Black Shadow Tunic
			quest::summonitem(12199);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(500);
			#:: Set factions - Note that these factions were bugged on live and 'fixed' here.
			quest::faction(261, 5);		#:: + Green Blood Knights
			quest::faction(228, 2);		#:: + Clurg
			quest::faction(312, -1);	#:: - Storm Guard
			quest::faction(308, -1);	#:: - Shadowknights of Night Keep
		}
		#:: Match if faction is Indifferent or worse
		else {
			quest::say("Help Greenbloods you will. Give lizard tails to Grevak.  Den maybe we trust.");
			#:: Give a 12198 - Lizardman Scout Fife
			quest::summonitem(12198);
			#:: Give a 12198 - Lizardman Scout Fife
			quest::summonitem(12198);
			#:: Give a 12198 - Lizardman Scout Fife
			quest::summonitem(12198);
			#:: Give a 13527 - Green Stained Skin Tunic*
			quest::summonitem(13527);
		}
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
  	#:: Return unused items
	plugin::returnUnusedItems();
}
