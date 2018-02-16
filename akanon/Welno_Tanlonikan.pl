# Ak'Anon (akanon) >> Welno_Tanlonikan (55128)
# Newbie Recruitment Summons

sub EVENT_SPAWN {
	#:: Set up a 50 unit distance
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Check for 18776 - Recruitment Summons
	if (plugin::check_hasitem($client, 18776)) { 
		$client->Message(15,"A voice echoes throughout the room as you take in your surroundings. 'Hey you! This is Welno Tanlonikan. Remember me? Read the note in your inventory and then hand it to me. Hurry up! We don't have all day! You owe me a lot of money!'");
	}
}

sub EVENT_ITEM {
	#:: match for a 18776 - Note
	if (plugin::check_handin(\%itemcount, 18776 => 1)) {
		quest::Say("Yes, I just knew you'd see it my way, $name. Anyway, welcome to our little part of Ak'Anon's underworld. We have to pay a high price to keep our small orgainzation hidden, which keeps us all busy around here. Now throw this on, and let's put you to work.");
		# removed "Once you are ready to begin your training please make sure that you come back to see me after collecting your initial supplies! I have many things to teach you that you would benefit from, from furthering your knowledge of our arts, to the various [trades] you will have available to you."
		quest::summonitem(13519); #Scuffed Tunic*
		quest::faction(76,100); # Deep Muses
		quest::faction(210,15); # Merchants of Ak'Anon
		quest::faction(71,-15); # Dark Reflection
		quest::faction(115,15); # gem choppers
		quest::ding();
		quest::exp(100);
	}
	plugin::return_items(\%itemcount); # return unused items
}
