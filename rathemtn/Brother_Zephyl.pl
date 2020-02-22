my $CombatState = 0;

sub EVENT_SPAWN {
	#:: Set a timer 'depop' that triggers every 14,400 seconds (4 hours) 
	quest::settimer("depop", 14400);
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		$CombatState = 1;
	}
	#:: Match combat state 0 - left combat
	elsif ($combat_state == 0) {
		$CombatState = 0;
	}
}

sub EVENT_TIMER {
	#:: Match the 'depop' timer
	if ($timer eq "depop") {
		#:: Match if fighting
		if ($CombatState == 1) {
			#:: Stop the timer 'depop'
			quest::stoptimer("depop");
			#:: Create a timer 'fighting' that triggers every 5 seconds
			quest::settimer("fighting", 5);
		}
		#:: Match if he's not doing any fighting
		elsif ($CombatState == 0) {
			#:: Stop the timer 'depop'
			quest::stoptimer("depop");
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	#:: Match the timer 'fighting'
	elsif ($timer eq "fighting") {
		#:: Match if not fighting
		if ($CombatState == 0) {
			#:: Stop the timer 'fighting'
			quest::stoptimer("fighting");
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. I am one with the [Lost Circle]. You have found me. What is it you desire?");
	}
	elsif ($text=~/lost circle/i) {
		quest::say("The [monks of the Whistling Fist] are called the Lost Circle by others. We are an ancient league of monks. Long forgotten and few yet remain. Within this realm there are only two. [Brother Qwinn] and I. We seek the items stolen from us. I seek the [idol of Zan Fi].");
	}
	elsif ($text=~/monks of the whistling fist/i) {
		quest::say("The monks of the Whistling fist were forged from the vision of the great master, Zan Fi. When the Combine Empire reigned supreme, a single bard grew to learn the ways of the monk. This bard was Zan Fi. The brotherhood was all but destroyed in the times that followed. Now only a few remain to carry on Zan Fi's legacy.");
	}
	elsif ($text=~/brother qwinn/i) {
		quest::say("Brother Qwinn is searching for one who can return the [Code of the Whistling Fist]. I believe he is in the vicinity of the Plains of Karana.");
	}
	elsif ($text=~/idol of zan fi/i) {
		quest::say("The idol of Zan Fi is a totem that is sacred to our brotherhood. I cannot share its secrets, but I can offer to you a reward for its return. Are you an [interested monk]?");
	}
	elsif ($text=~/interested monk/i) {
		quest::say("Then venture to the lands of evil. The swamps of the trolls and ogres. There, seek out a monk called Raster. He has the idol. You will return here and wait for my reappearance. When we meet again, you shall hand me the idol and a red sash earned from the Ashen Order. Do so and you shall be closer to joining the brotherhood.");
	}
	elsif ($text=~/code of the whistling fist/i) {
		quest::say("The tome called the Code of the Whistling Fist has been stolen from [Brother Qwinn]. It contains many secrets pertaining to our brotherhood. Thankfully, it is magically locked and only a Zan Fi master could unlock it. Still, Qwinn must see its safe return.");
	}
	elsif ($text=~/return the sash/i) {
		quest::say("Very well. Give to me that which you have been rewarded or the robe, if you have a tailored one.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12317 - The Idol, and a 10133 - Red Sash of Order
	if (plugin::takeItems(12317 => 1, 10133 => 1)) {
		quest::say("We thank you for the return of the idol of Zan Fi. Take this rare robe pattern. You shall find it useful should you aid [" . quest::saylink("Brother Qwinn") . "] in his quest. His item, the rare robe pattern, a swatch of shadow silk, and a scroll containing Jonathan's Whistling Warsong. Into a sewing kit they will be going. And into the brotherhood will you. I hope you do not wish me to [return the sash].");
		#:: Give a 12315 - Rare Robe Pattern
		quest::summonitem(12315); #Rare Robe Pattern
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Match a 12315 - Rare Robe Pattern
	elsif (plugin::takeItems(12315 => 1)) {
		#:: Give a 10133 - Red Sash of Order
		quest::summonitem(10133);
	}
	#:: Match a 12256 - Robe of the Lost Circle
	elsif (plugin::takeItems(12256 => 1)) {
    		#:: Give a 10133 - Red Sash of Order
		quest::summonitem(10133);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
