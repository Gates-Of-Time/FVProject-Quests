my $random = int(rand(100));

sub EVENT_SAY {
	#:: If faction is better than dubious
	if ($faction < 7) {
		if ($text=~/hail/i) {
			quest::say("What business do you have here?!! Trying to keep safe? Expecting us to fight your battles? Bah!!");
			#:: Send a signal to Nyrien_Lyrdarniel after 5 second pause
			quest::signal(70006,5);
		}
		if ($text=~/chalice of conquest/i) { 
			quest::say("Looking for the chalice, are you? Ha!! I don't know where it is, but I know a [" . quest::saylink("lost soul") . "] who does and he could lead you right to it. He had a taste of it and now he can't get enough. He is sort of under the weather, or do I mean under the ground? Ha!!");
		}
		if ($text=~/lost soul/i) { 
			quest::say("The orc named Captain Klunga knows where it's buried. Unfortunately, his time on Norrath has passed. I happen to know two things... one, he is buried somewhere in this territory and two, I can [" . quest::saylink("raise Klunga") . "] and he can show you where the chalice is.");
		}
		if ($text=~/raise klunga/i) {
			quest::say("I can raise Captain Klunga if I have a portion of his blood, an item he once owned and the most important part, 100 gold coins!! Hehe!! A gnome's got to make a living, you know?");
		}
	} else {
		quest::say("You dare to speak to a member of the Eldritch Collective!! You had best leave before you find your soul displaced from your body.");
	}
}

sub EVENT_ITEM { 
	#:: Set a scalar variable to convert currency
	my $cash = $copper + $silver * 10 + $gold * 100 + $platinum * 1000;
	#:: Match 18946 - Bloodstained Note, 12280 - Klunga's Bracelet, and 100 gold
	if (($cash >= 10000) && plugin::check_handin(\%itemcount, 12280=> 1, 18946=> 1)) {
		quest::say("Biggily boo, biggily borc.. Raise that stinky orc!! Bamm!! Okay!! It's done. Now all you have to do is find him in the spot where his soul left him and give him an orc shovel. Oh!! I didn't mention that? Oh, well. I'm sure you can find one.. somewhere. Now, get lost before I turn you into a toad!");
		#:: Give a 12277 - Candle of Bravery
		quest::summonitem(12277);
		#:: Set Factions
		quest::faction(91,25);		# Eldritch Collective
		quest::faction(71,-25);		# Dark Reflection
		quest::faction(322,-25); 	# The Dead
		quest::faction(115,25);		# Gem Choppers
		quest::faction(176,25); 	# King Ak'Anon
		#:: Ding!
		quest::ding();
		#:: Give xp reward
		quest::exp(18000);
		#:: Spawn 70072 - #Captain Klunga
		quest::spawn2(70072,0,0,-2133.49,-727.05,154.86,0);
	}
	#:: Return Unused Items
	plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
	#:: Signal received from Sigan Ilbirkun or Nyrien Lyrdarniel
	quest::say("Ha!! One like that one stands no chance within this realm. The goblins shall skin him alive!!");
	#:: Send a signal to Elmion Hendrys after 5 seconds
	quest::signal(70005,5);
}

# converted by SS (and Mostly TermoilToad) 2/19/18
