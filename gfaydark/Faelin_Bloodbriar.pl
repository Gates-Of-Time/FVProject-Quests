sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers in 1200 seconds (20 min)
  	quest::settimer("depop",1200);
}

sub EVENT_TIMER {
	if ($timer eq "depop") {
		#:: Stop the timer "depop"
		quest::stoptimer("depop");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 12121 - Worn Note
		if (plugin::takeItems(20472 => 1)) {
			quest::emote("reads the note carefully and growls to herself. 'Bad news, eh? Take this ring. There is one elf, dark elf even, whom we must go to in order to gather insight into Innoruuk's plans. Giz X'Tin, he goes by most commonly. Kithicor seems to be his favorite haunt and most likely you will find him there. Don't ask how I know him. Just take the ring as my sign to him and he will speak to you. We don't need to speak again, so don't seek me out. Just go to Telin. I must leave to investigate these events.'");
			#:: Give a 20446 - Faelin`s Ring
			quest::summonitem(20446);
			#:: Ding!
			quest::ding();
			#:: Stop the timer "depop"
			quest::stoptimer("depop");
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
		else {
			quest::emote("does not accept the item.");
		}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}