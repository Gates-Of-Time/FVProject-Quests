sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/are you mizzle/i) {
			quest::say("Oh hello! I'm Mizzle, that I am. I bet you want to be given true clarity, don't you?");
		}
		elsif ($text=~/i am ready to collect/i) {
			quest::say("Then bring me a spoon, the one key, the lost scroll, and the book Charm and Sacrifice. I will then reward you with what you seek.");
		}
		elsif ($text=~/spoon"/i) {
			quest::say("Its a giant sized tool I will use to stir my magical pot. The spoon will help finish the ritual of crafting.");
		}
		elsif ($text=~/one key/i) {
			quest::say("It is a key I lost long ago when I was travelling with a companion. We were traveling in the new lands flying over some large crevices when the key dropped out of my pocket.");
		}
		elsif ($text=~/lost scroll/i) {
			quest::say("The lost scroll contains the magical incantation I need to help you out. It was penned ages ago by the Elves. It was lost along with its protector during one of the raids on the Outpost in Firiona. I fear it may be lost for good.");
		}
		elsif ($text=~/book of charm and sacrifice/i) {
			quest::say("Oh, that is a book of good reading. If you want to take the time to read it. I haven't had much free time to read it, but now that you are getting supplies for me, I can take a break.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if (plugin::takeItems(10604 => 1)) {
			quest::say("It is time then, are you ready to get the required components?");
			quest::ding();
			#:: Give item 10604 - Jeb's Seal
			quest::summonitem(10604);
			#:: Give item 17861 - Enchanter's Sack
			quest::summonitem(17861);
		}
		elsif (plugin::takeItems(10636 => 1)) {
			quest::say("Oh excellent, you have done what is required. Here take this part, and seek the third master, you are well on your way.");
			#:: Ding!
			quest::ding();
			quest::faction(404, 30, 0);#:: +30 Truespirit
			#:: Give 100,000 experience
			quest::exp(100000);
			#:: Give item 10611 - 2nd Piece of Staff
			quest::summonitem(10611);
		}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_AGGRO {
	quest::say("Click... Tick... City violation. Code 5150. This unit is authorized to execute punishment. Please stand still. Thank you.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Bzzzz... Click... This unit is terminally damaged. Destruction of city property is a violation of city code 22468. All units shall be notified of your offense...");
	#:: Spawn a Ak'Anon >> Clockwork_MM (55164) at the current coordinates
	quest::spawn2(55164, 0, 0, $x, $y, $z, $h+256);
}
