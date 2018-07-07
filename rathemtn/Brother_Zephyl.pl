my $CombatState = 0;

sub EVENT_SPAWN {
	#:: Set a timer for four hours
	quest::settimer("BroZDepop",14400);
}

sub EVENT_COMBAT {
	#:: Combat State 1 is fighting
	if ($combat_state == 1) {
		$CombatState = 1;
	}
	#:: Combat State 0 is not fighting
	if ($combat_state == 0) {
		$CombatState = 0;
	}
}

sub EVENT_TIMER {
	#:: Match the four hour timer
	if ($timer eq "BroZDepop") {
		#:: Match if he's busy fighting
		if ($CombatState == 1) {
			#:: Stop the timer BroZDepop
			quest::stoptimer("BroZDepop");
			#:: Create a timer that triggers every five seconds
			quest::settimer("BroZOnBorrowedTime", 5);
		}
		#:: Match if he's not doing any fighting
		elsif ($CombatState == 0) {
			#:: Stop the timer BroZDepop
			quest::stoptimer("BroZDepop");
			#:: Depop and start the spawn point timer
			quest::depop_withtimer();
		}
	}
	#:: Match the five second timer
	if ($timer eq "BroZOnBorrowedTime") {
		#:: Match if he's busy fighting
		if ($CombatState == 1) {
			#:: Stop the timer
			quest::stoptimer("BroZOnBorrowedTime");
			#:: Reset the timer for another five seconds
			quest::settimer("BroZOnBorrowedTime", 5);
		}
		#:: Match if he's not doing any fighting
		elsif ($CombatState == 0) {
			#:: Stop the timer
			quest::stoptimer("BroZOnBorrowedTime");
			#:: Depop and start the spawn point timer
			quest::depop_withtimer();
		}
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. I am one with the [" . quest::saylink("Lost Circle") . "]. You have found me. What is it you desire?");
	}
	if ($text=~/lost circle/i) {
		quest::say("The [" . quest::saylink("monks of the Whistling Fist") . "] are called the Lost Circle by others. We are an ancient league of monks. Long forgotten and few yet remain. Within this realm there are only two. [" . quest::saylink("Brother Qwinn") . "] and I. We seek the items stolen from us. I seek the [" . quest::saylink("idol of Zan Fi") . "].");
	}
	if ($text=~/interested monk/i) {
		quest::say("Then venture to the lands of evil. The swamps of the trolls and ogres. There, seek out a monk called Raster. He has the idol. You will return here and wait for my reappearance. When we meet again, you shall hand me the idol and a red sash earned from the Ashen Order. Do so and you shall be closer to joining the brotherhood.");
	}
	if ($text=~/idol of zan fi/i) {
		quest::say("The idol of Zan Fi is a totem that is sacred to our brotherhood. I cannot share its secrets, but I can offer to you a reward for its return. Are you an [" . quest::saylink("interested monk") . "]?");
	}
	if ($text=~/brother qwinn/i) {
		quest::say("Brother Qwinn is searching for one who can return the [" . quest::saylink("Code of the Whistling Fist") . "]. I believe he is in the vicinity of the Plains of Karana.");
	}
	if ($text=~/code of the whistling fist/i) {
		quest::say("The tome called the Code of the Whistling Fist has been stolen from [" . quest::saylink("Brother Qwinn") . "]. It contains many secrets pertaining to our brotherhood. Thankfully, it is magically locked and only a Zan Fi master could unlock it. Still, Qwinn must see its safe return.");
	}
	if ($text=~/return the sash/i) {
		quest::say("Very well. Give to me that which you have been rewarded or the robe, if you have a tailored one.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12317 - The Idol and a 10133 - Red Sash of Order
	if (plugin::check_handin(\%itemcount, 12317 => 1, 10133 => 1)) {
		quest::say("We had an agreement. The proof of a skilled monk, the red sash, and the idol of Zan Fi.");
		quest::say("We thank you for the return of the idol of Zan Fi. Take this rare robe pattern. You shall find it useful should you aid [" . quest::saylink("Brother Qwinn") . "] in his quest. His item, the rare robe pattern, a swatch of shadow silk, and a scroll containing Jonathan's Whistling Warsong. Into a sewing kit they will be going. And into the brotherhood will you. I hope you do not wish me to [" . quest::saylink("return the sash") . "].");
		#:: Give a 12315 - Rare Robe Pattern
		quest::summonitem(12315); #Rare Robe Pattern
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Match a 12315 - Rare Robe Pattern
	elsif (plugin::check_handin(\%itemcount, 12315 => 1)) {
		#:: Give a 10133 - Red Sash of Order
		quest::summonitem(10133);
	}
	#:: Match a 12256 - Robe of the Lost Circle
	elsif (plugin::check_handin(\%itemcount, 12256 => 1)) {
    		#:: Give a 10133 - Red Sash of Order
		quest::summonitem(10133);
	}
	plugin::return_items(\%itemcount);
}
