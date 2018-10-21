sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("HA! Greetings there. $name!  How are ya this fine day?  Me?  I'm doing all right.  Guard duty down here always reminds me of home.");
		#:: Signal Beur_Tenlah
		quest::signal(10106,1,0)
	}
	if ($text=~/message/i) {
		quest::say("Ok, $name, I need you to take this message to Janam in West Freeport. He is usually hanging out in front of the Theater of the Tranquil with that good-for-nothing Rebby. Anyway, give this note to Janam and bring his reply back to me.");
		#:: Give item 18015 - Note to Janam
		quest::summonitem(18015);
	}
}

sub EVENT_SIGNAL {
	#:: Signal From Beur_Tenlah.pl
	if ($signal == 1) {
		quest::say("Bah! Don't listen to this fool. Listen, I've something a little more important for you to do than buy ales. I need you to take a [" . quest::saylink("message") . "] to my friend Janam over in West Freeport.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18016 -  Note to Harkin
	if (plugin::check_handin(\%itemcount, 18016 => 1)) {
		quest::say("Ah, good work, $name. And quick too, I'll makes sure that Elisi hears of your loyal work. Here... take this for your efforts.. it's not much, but it's all I have on me right now.");
		#:: Give item 1054 - Used Merchants Gloves
		quest::summonitem(1054);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Give a small amount of cash copper - plat
		quest::givecash(6,0,0,0);
		#:: Set factions
		quest::faction(47,1); 		#:: + Coalition of Trade Folk
		quest::faction(48,1); 		#:: + Coalition of Tradefolk Underground
		quest::faction(31,1); 		#:: + Carson McCabe
		quest::faction(53,1); 		#:: + Corrupt Qeynos Guards
		quest::faction(105,1); 		#:: + Freeport Militia
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
