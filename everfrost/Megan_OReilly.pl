sub WAYPOINT_ARRIVE {
	if($wp==3){
		 Quest::SetRunning(true);
	}
	if($wp==6){
		 Quest::SetRunning(false);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Brrrr.. It.. Is sooo.. c-cold!! I never.. sh-should've j-joined.. the.. the W-wolves of the N-north!!");
		}
	if ($text=~/ivan's remains/i) {
		quest::say("You were sent to retrieve the remains? I am sorry, I lost them. It was not my fault! There was no escort as I was told. I got lost returning to Halas and ended up on a frozen river. The ice broke and the remains were scattered into the freezing water. Will you [" . quest::saylink("dive for the remains") . "]?");
		}
	if ($text=~/dive for the remains/i) {
		quest::say("Thank the Tribunal!! I would have, but I cannot swim. Take this chest. Fill it with the four pieces which fell below the surface. I know not what else lies within. When you fill the box and combine the items, return it to Renth. Good luck, $name.");
		quest::SummonItem(17945); # Empty Box
		}
	}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 13244 => 1)) { # One Quarter Bottle of Elixir
		quest::Say("Oh thank you. Sorry, but the bottle is empty now. I hope you did't need any. Take the empty bottle back to Dargon. He may refill it for you.");
		quest::SummonItem(13245); # Empty Bottle of Elixir
		quest::Ding();
		quest::Faction(213,1); # Merchants of Halas
		quest::Faction(294,1); # Shaman of Justice
		quest::Faction(311,1); # Steel Warriors
		quest::Faction(361,1); # Wolves of the North
		quest::exp(150);
		}
		
		#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS 
# END of FILE Zone:everfrost  ID:30029, 30096, 30119 -- Megan_OReilly
