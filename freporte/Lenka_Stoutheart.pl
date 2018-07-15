sub EVENT_SAY {
	if ($text=~/hail/i) {
		#Match Merchants of Halas Indifferent or Better
		if ($faction <= 5 ) {
			quest::say("Hi, kid! You seem to be a stranger in these parts. Heed my words, this city is dangerous to new blood!");
			quest::signal(10135,10); #:: Signal Bronto Thudfoot
		}
		#Match Merchants of Halas Worse than Indifferent
		elsif ($faction > 5 ) {
        quest::say("Run while ye still can!!  The Wolves o' the North will not tolerate yer presence!")
		}
	}
	if ($text=~/toala sent me/i) {
		quest::say("She does not even have the courtesy to come herself. Some old friend!! Listen, some rogue in this city broke into the [" . quest::saylink("Beast") . "] and stole a pouch containing a voucher ticket for a part I need to repair the Beast. I can't get the part back without the ticket. I did not see the rogue. I did not sleep on the Beast that night. Bronto was there. Ask him if he saw the rogue.");
	}
	if ($text=~/Beast/i) {
		quest::say("You're joking, right? You have never heard of the Blue Beast?!! She is the fastest ship in Norrath. She made the [" . quest::saylink("Kunark run") . "] in under three weeks. She was designed by [" . quest::saylink("Bronto") . "].");
	}
	if ($text=~/kunark run/i) {
		quest::say("The Kunark run is the most dangerous run between Freeport and [" . quest::saylink("Firiona Vie") . "], in Kunark. If the seas don't rip your hull to splinters and the pirates and sea wyrms don't kill you, you can make a quick run back and forth, avoiding any unwanted inspections.");
	}
	if ($text=~/Firiona Vie/i) {
		quest::say("Firiona Vie is an elven outpost on the continent of Kunark. Every so often I run supplies to and from there. Do not even think about asking me to take you there. It will be months before I can make improvements on the Blue Beast to make it impervious to aerial attacks.");
	}
	if ($text=~/journal strongbox/i) {
		quest::say("You must be from the Academy of Arcane Science.  Well, kid, bad news.  I was docked at the isle in the Ocean of Tears when I was boarded by the Freeport Militia.  To say the least, I panicked and dropped all my cargo.  It is still there.  Mostly illegal alcohol, but the strongbox is still out there, too.  Directly out from the dock.");
		#:: set a global called "strongbox" with a value of 1, type 7, for 1 hour
		quest::setglobal("strongbox",1,7,"H1");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13818 -  Boat Beakon
	if (plugin::check_handin(\%itemcount, 13818=> 1)) {
		quest::say("Oh!! You must work for that Erudite named Palatos. I guess he won't have to spend anymore money drinking in Freeport. Here. Here is the portrait I kept until he could get me a new boat beacon.");
		#:: Give item 12146 - Ak'anon's Portrait
		quest::summonitem(12146);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(361,1); 		#:: + Wolves of the North
		quest::faction(294,1); 		#:: + Shaman of Justice
		quest::faction(143,1); 		#:: + Heretics
		quest::faction(147,1); 		#:: + High Guard of Erudin
	}
	#:: Turn in for 13814 -  L.S. Pouch
	if (plugin::check_handin(\%itemcount, 13814=> 1)) {
		quest::say("You found my pouch! Thanks kid. Let me buy you A drink and this is for the good work. Hmmmm. It looks as though they took my voucher. Darn it! Hey... It looks like they were using my bag to hold items they were stealing. Here you go. You can have it. It looks like junk.");
		#:: Give random item Snapped Pole or Moggok's Right Eye
		quest::summonitem(quest::ChooseRandom(13922,13923));
		#:: Give a small amount of xp
		quest::exp(200);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(361,2); 		#:: + Wolves of the North
		quest::faction(294,2); 		#:: + Shaman of Justice
		quest::faction(213,2); 		#:: + Merchants of Halas
		quest::faction(311,1); 		#:: + Steel Warriors
		quest::faction(275,-2); 	#:: + Rogues of the White Rose
		quest::givecash(0,2,0,0);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
