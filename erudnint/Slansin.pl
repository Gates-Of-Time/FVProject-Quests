sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings and welcome! Please feel free to look around");
	}
}

sub EVENT_ITEM {
	#:: Match turn in for 13983 - Inert Potion
	if (plugin::check_handin(\%itemcount, 13983 => 1)) {
		#:: Create a scalar variable for mob class
		my $mobclass = $npc->GetCLass();
		#:: Match if class is 41 - shopkeeper
		if ($mobclass == 41) {
			quest::say("Thank you. I have been expecting this. We require it for mixing.");
			#:: Give a small amount of xp
			quest::exp(300);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(56,-5);		#:: - Craftkeepers
			quest::faction(145,-5);		#:: - High Council of Erudin
			quest::faction(143,1);		#:: + Heretics
			quest::faction(147,-5);		#:: - High Guard of Erudin
			#:: Depop no timer
			quest::depop();
		}
		#:: Match if class is 14 - enchanter
		elsif ($mobclass == 14) {
			quest::say("Ha!! What a fool!! I have stolen another potion to add to the crate. I shall make a fortune!! The real Slansin is in back. Now it is time for me to leave.");
			#:: Give a small amount of xp
			quest::exp(300);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(48,5);		#:: + Coalition of Tradefolk Underground
			quest::faction(47,5);		#:: + Coalition of Tradefolk
			quest::faction(31,5);		#:: + Carson McCabe
			quest::faction(51,5);		#:: + Corrupt Qeynos Guards
			quest::faction(105,5);		#:: + Freeport Militia
		}
	}
	plugin::return_items(\%itemcount);
}
