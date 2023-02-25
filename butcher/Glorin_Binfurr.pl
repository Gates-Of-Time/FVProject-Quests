sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("For the glory of Kaladim, have at thee!!");
	}
}

sub EVENT_NPC_SLAY {
	quest::say("For the glory of Kaladim!! You are no more.");
}

sub EVENT_SLAY {
	quest::say("For the glory of Kaladim!! You are no more.");
}

sub EVENT_SAY {	
	if ($text=~/hail/i) {
		quest::say("Pleasure to meet you.  Keep your eye out for the ship.  You don't want to miss it.");
	}
	elsif ($text=~/mudtoe's|mudtoes/i) {
		quest::say("Mudtoes!! I have heard tales of that foul clan of ogres. A few passengers aboard the ships have claimed to have seen one of them, off and on, amongst the pirates in the Ocean of Tears!!");
	}
	elsif ($text=~/i love you/i) {
		quest::say("Glorin and $name. We would make a fine couple.");
	}
	elsif ($text=~/marry me/i) {
		quest::say("Why yes I'll marry you $name. We would make a fine couple.");
	}
	elsif ($text=~/you are ugly/i) {
		quest::say("I believe the word '$name' is dwarven for ignorant, smelly skuzz bucket. That's what I hear.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My brothers of the Stormguard shall avenge me!! Your days are numbered!");
}
