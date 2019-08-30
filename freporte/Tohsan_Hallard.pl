sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings and welcome to Hallard's!  You will find many aged weapons begging you to shine them up and make them great once more.  We will gladly pay you top dollar for any rusty weapons you may have found littering the Commonlands.  I have a [" . quest::saylink("special offer") . "] for those who have obtained orc pawn picks.");
	}
		if ($text=~/special offer/i) {
		quest::say("I will pay some silver pieces for every four orc pawn picks returned to me.  I shall also throw in a ticket to the Highpass Hold lottery.  It could be a winner!!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13885 -  Orc Pick
	if (plugin::check_handin(\%itemcount, 13885 => 4)) {
		quest::say("As I promised, some silver and of course, the Highpass lottery ticket. Oh yes, I forgot to mention the ticket was for last season's lottery. Ha Ha!! You now own a losing Highpass lottery ticket, lucky you! Ha!!");
		#:: Lottery Ticket #14350, Lottery Ticket #14001, Lottery Ticket #15600, Lottery Ticket #15601, Lottery Ticket #15602, or Lottery Ticket #16568
		quest::summonitem(quest::ChooseRandom(12264, 12265, 12261, 12262, 12263,12266));
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(229,1); 		#:: + Coalition of Tradefolk
		quest::faction(281,1); 		#:: + Knights of Truth
		quest::faction(291,1); 		#:: + Merchants of Qeynos
		quest::faction(336,1); 		#:: + Coalition of Tradesfolk Underground
		quest::givecash(0,0,3,0);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
