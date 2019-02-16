sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail there, $name! If you are not a [" . quest::saylink("member of the White Rose") . "], then it be best that you stay on the lower level. This here floor is for honest ...ermm respectable rogues only.");
	}
	elsif ($text=~/member of the white rose/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("I hope that you are indeed respectable and loyal to Halas and the Rogues of the White Rose. To do otherwise would bring the wrath of the Six Hammers down on you. But enough with talk! Our caravan to the frigid north leaves in less than two days, and we are short on mammoth calf hides. Return four of them and you will be given items that show your loyalty to our Clan.");
			#:: Send a signal to Halas >> Ysanna_MacGibbon (29070)
			quest::singalwith(29070,1,1);
		}
		else {
			quest::say("The Order of the White Rose does not trust you with such a task.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match four 5243 - Mammoth Calf Hide
	if (plugin::takeItems(5243 => 4)) {
		quest::say("You returned? We believed the gnoll pups got you. The caravan has already left, and these do me little good now. But, as I said before, one must remain respectable. Here is what I promised.");
		#:: Give a random reward:  5238 - Black Wolf Armplates, 5239 - Black Wolf Bracers, 5242 - Black Wolf Boots, 5236 - Black Wolf Cape, 5233 - Black Wolf Collar, 5231 - Black Wolf Crown, 5240 - Black Wolf Gloves, 5241 - Black Wolf Legplates, 5234 - Black Wolf Mail, 5232 - Black Wolf Mask, 5235 - Black Wolf Pauldrons, 5237 - Black Wolf Waistband
		quest::summonitem(quest::ChooseRandom(5238, 5239, 5242, 5236, 5233, 5231, 5240, 5241, 5234, 5232, 5235, 5237));
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(2500);
		#:: Set faction
		quest::faction(275, 10);	#:: + Rogues of the White Rose
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
