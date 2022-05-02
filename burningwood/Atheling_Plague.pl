my $ClerkDovalID = 87154;

sub EVENT_SAY {
  if ($text=~/hail/i) {		
		#:: Match a 5145 - Iron Cudgel of the Channeler
		if (plugin::check_hasitem($client, 5145)) {
			quest::say("Ahh!! A conversationalist. How good to meet you, $name. Yes. I have heard of you. Go ahead and ask for that which has brought you to my tower and emboldened you to slay my weaker minions.");
		}
  }
	elsif ($text=~/sisters of scale/i) {		
		#:: Match a 5145 - Iron Cudgel of the Channeler
		if (plugin::check_hasitem($client, 5145)) {
			quest::say("What a coincidence! I, too, seek a skull. Perhaps you might help me [obtain the skull]. Perhaps then you shall have the skull you desire.");
		}
  }
  elsif ($text=~/hail/i) {		
		#:: Match a 5145 - Iron Cudgel of the Channeler
		if (plugin::check_hasitem($client, 5145)) {
			quest::say("I am sure you would not mind removing the head of a scaled mystic. I hope not. There is an old Iksar who once called me slave. Now he shall adorn my wall, mounted on a fine plaque. His name is Digalis. Find him. Do not return until your task is complete.");
		}
  }
}

sub EVENT_ITEM {
	#:: Match a 5145 - Iron Cudgel of the Channeler
	if (plugin::check_hasitem($client, 5145)) {
		#:: Match a 12764 - Iksar Skull (Skull of Digalis)
		if (plugin::takeItems(12764 => 1)) {
			quest::shout("Excellent. You show signs of a true Iksar slayer. Too, bad I have already given the skull of the Sister of Scale to another. Perhaps you would like to meet him before he departs. Say hello, Doval.");
			#:: Give a 12750 - Iksar Skull (Engraving ' :-) ')
			quest::summonitem(12750);
			#:: Ding!
			quest::ding();
			#:: Spawn one and only one Burning Woods >> Clerk_Doval (87154), without grid or guild war, at the specified location
			quest::unique_spawn($ClerkDovalID, 0, 0, -4067, 6351, -53);
			#:: Create a timer 'heal_clerk_doval' that triggers every 20 seconds
			quest::settimer("heal_clerk_doval", 20);
		}
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match the timer 'heal_clerk_doval'
	if ($timer eq "heal_clerk_doval") {
		my $ClerkDoval = $entity_list->GetNPCByNPCTypeID($ClerkDovalID);
		if ($MainNPC) {
			#:: Cast 12 - Healing on Clerk_Doval
			$npc->CastSpell(12, $ClerkDovalID); -- Spell: Healing
		}
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' 
	if ($signal == 1) {
		quest::stoptimer("heal_clerk_doval");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::stoptimer("heal_clerk_doval");
}