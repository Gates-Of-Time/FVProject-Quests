sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good day to you! Be careful in the city of Qeynos. [Rumors] of corruption may be true. Believe me. I wish my [sister] were here to help.");
	}
	elsif ($text=~/rumors/i) {
		quest::say("I have heard that a few of the Qeynos merchants and guards are not very happy with the current state of the city. Taxes are too high and many of the guards have been sent to the outlands, leaving Qeynos vulnerable to attack. I do not feel the same way, but I fear these few may become many. I [fear for my life].");
	}
	elsif ($text=~/sister/i) {
		quest::say("My sister is in the Karanas. She is a warrior. Her name is Milea. I really need her. Would you please deliver a note to her? You look able-bodied enough for the job.");
	}
	elsif ($text=~/note/i) {
		if ($ulevel < 4) {
			quest::say("I cannot discuss such things with a person as young to the world as you are.");
		}
		elsif ($ulevel > 65) {
			quest::say("I cannot trouble a person of your stature with such trivial talk.");
		}
		else {
			quest::say("Here you go then, brave adventurer. Godspeed to you.");
			#:: Give a 18801 - Tattered Note
			quest::summonitem(18801);
		}
	}
	elsif ($text=~/fear/i) {
		quest::say("During a late night stroll by the pond in north Qeynos I spied a guard carrying a very large carpet on his shoulders. He approached the pond's edge and unrolled the carpet, the body of another guard rolled out and began to moan. The other guard grabbed for a long spear like weapon from his back. He drove the weapon into the man and pushed him into the pond. I screamed. He turned to me and I ran. I do not think he gave chase, too bad, he would not like to run into my [guardian] at home. I told my guardian and we both went to the pond and saw no body. He believes I was drinking too much wine. I do not drink. Now I fear for my life when I am in the streets of Qeynos.");
	}
	elsif ($text=~/guardian/i) {
		quest::say("When my big sister left Qeynos for adventure, she left me in the hands of her old time friend Kane Bayle. Yes, the commander of the Qeynos Guards is my guardian. You would think I would be safe. Every time I tell him the rumors I hear he just ignores me. He is too busy I guess.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 17
	if ($wp == 17) {
		quest::say("When will my sister show up? I need her!");
	}
	#:: Match waypoint 43
	elsif ($wp == 43) {
		quest::say("Bartender! Some water, please.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13302 - Monogrammed Cloth
	if (plugin::takeItems(13302 => 1)) {
		quest::say("Thank you my friend. I understand that Astaed Wemor of the Temple of Life has been concerned for my well being. Take him this note. I am sure he will reward you for easing my troubled mind.. If you are a respected member.");
		#:: Give a 18862 - Tattered Note
		quest::summonitem(18862);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(291, 15);		#:: + Merchants of Qeynos
		quest::faction(223, -3);		#:: - Circle Of Unseen Hands
		quest::faction(219, 2);			#:: + Antonius Bayle
		quest::faction(229, 1);			#:: + Coalition of Tradefolk
		quest::faction(262, 3);			#:: + Guards of Qeynos
		#:: Grant a moderate amount of experience
		quest::exp(3000);
		#:: Create a hash for storing cash - 900 to 1100cp
		my %cash = plugin::RandomCash(900,1100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
