sub EVENT_SPAWN {
	#:: Create a timer 'depop' that loops every 600 seconds (10 min)
	quest::settimer("depop",600);
	#:: Zone emote in yello text
	quest::ze(15,"a royal fish changes into a beautiful princess!!");
	quest::shout("I am free..");
	quest::emote("<glug>'  She motions to you to follow her to shore.'");
}

sub EVENT_TIMER {
	#:: Match timer 'depop'
	if ($timer eq "depop") {
		quest::depop();
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am rescued from the hands of the Teir'Dal! I am grateful.  Show me your [proof of allegiance] along with a key to remove these [dark shackles] and I shall reward thee.");
	}
	elsif ($text=~/proof of allegiance/i) {
		quest::say("When I speak of proof of allegiance, I speak of proof you were sent by one of the [Silent Watch].");
	}
	elsif ($text=~/dark shackles/i) {
		quest::say("My Teir'Dal captors have placed magical shackles upon me.  The shackles prevent me from using my magic to transport myself home nor do they allow me to venture far from Lake Rathetear.  I will require special shackle keys from Highkeep.");
	}
	elsif ($text=~/silent watch/i) {
		quest::say("The Silent Watch are the Royal Family's guardians. If you run into one, maybe he'll teach you a lesson or two!");
	}
}

sub EVENT_ITEM {
	#:: Match a 20008 - Brass Key, and a 13108 - Tearon's Bracer
	if (plugin::takeItems(20008 => 1, 13108 => 1)) {
		quest::say("You have saved me!!  $name, you are my hero!!  Take my amulet and the royal suite key to Tearon in Highkeep.  Help put his soul at ease and he shall reward you.  Now I must go.. I am sorry I cannot transport you as well, but my powers are weak from much swimming.  Farewell, brave soul!");
		#:: Give a 13109 - Royal Amulet of Thex
		quest::summonitem(13109);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(5001, 10);		# + Anti-mage
		quest::faction(226, 10);		# + Clerics of Tunare
		quest::faction(279, 10);		# + King Tearis Thex
		#:: Grant a small amount of experience
		quest::exp(500);
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
