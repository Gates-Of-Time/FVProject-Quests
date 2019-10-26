sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hey..  What's up? My name's Knargon Lanenda. I just came over here from [Freeport] a couple of months ago. I used to run a big business importing goods from [Faydwer]. If you've been to [Freeport]. I'm sure you've heard of me.");
	}
	elsif ($text=~/freeport/i) {
		quest::say("It's a long way from here. . .which is a good thing for me.");
	}
	elsif ($text=~/faydwer/i) {
		quest::say("It's a long way from here. . .which is a good thing for me.");
	}
	elsif ($text=~/jracol/i) {
		quest::say("I don't know why [Carson] likes that guy ... he's certainly been nothing but trouble for me.");
	}
	elsif (($text=~/carson/i) || ($text=~/mccabe/i))  {
		quest::say("Carson McCabe? He runs that sham of a fortress called [Highpass Hold]. We've been dealing with him for a few years, now. But, lately he seems to be losing control of his business. [Hanns] will whip him into shape pretty soon though, I bet.");
	}
	elsif ($text=~/highpass hold/i) {
		quest::say("It's a long way from here. . .which is a good thing for me.");
	}
	elsif ($text=~/hanns/i) {
		quest::say("He is genuinely dangerous. If you think otherwise, you won't be thinking for long.");
	}
	elsif ($text=~/shipment/i) {
		quest::say("We have a small shipment of goods coming in later tonight. The [courier] will be waiting outside the city gates. Casually tell the courier [Lovely night for a stroll], and give him this old card as proof that you work for us. Make certain that you are not followed, and return the shipment to me.");
		#:: Give a 13903 - Bent Playing Card
		quest::summonitem(13903);
	}
	elsif ($text=~/courier/i) {
		quest::say("The courier that usually runs [McCabe]'s shipment, is that good for nothing J'Racol. I don't trust his kind.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 2
	if ($wp == 2) {
		quest::say("Hey Pelshia, how's business?");
		#:: Send a signal "1" to North Qeynos >> Pelshia_Thuxpire (2073)
		quest::signalwith(2073, 1, 0);
	}
	#:: Match waypoint 7
	elsif ($wp == 7) {
		quest::say("And what about you, gorgeous? Looking as delightful as ever, I must say.");
		#:: This seems to be aimed at Renux, response not found yet
	}
	#:: Match waypoint 18
	elsif ($wp == 18) {
		quest::say("So, yeah, that Pelshia, she's all over me. And Renux, too. She was giving me the look, man. I'm telling ya. Zan, all the ladies want a piece of the Knargman.");		#:: Send a signal "1" to North Qeynos >> Zannsin_Resdinet (2085)
		#:: Send a signal "1" to North Qeynos >> Zannsin_Resdinet (2085) with no delay
		quest::signalwith(2085, 1, 0);
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /qeynos2/Pelshia_Thuxpire.pl
	if ($signal == 1) {
		quest::say("How about you and I go take a stroll under the docks tonight?");
		#:: Send a signal "2" to North Qeynos >> Pelshia_Thuxpire (2073)
		quest::signalwith(2073, 2, 0);
	}
}

sub EVENT_ITEM {
	#:: Match a 18722 - Sealed Note For Knargon
	if (plugin::takeItems(18722 => 1)) {
		quest::say("Hmm. Carson better deal with his little 'problem' soon, it's costing us a lot of money. Hanns is gonna skin us all when he hears this. Go tell Hanns that [Carson has a mole in the Highpass] guards, and see what he wants us to do.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, 5);			#:: + Circle Of Unseen Hands
		quest::faction(291, -1);		#:: - Merchants of Qeynos
		quest::faction(230, 1);			#:: + Corrupt Qeynos Guards
		quest::faction(262, -1);		#:: - Guards of Qeynos
		quest::faction(273, 1);			#:: + Kane Bayle
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
