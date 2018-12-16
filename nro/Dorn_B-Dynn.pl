sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Just who are you? Do you expect some sort of courteous greeting? I have no time for idle chitchat!! Either you are here to [" . quest::saylink("attend to business") . "] or you [" . quest::saylink("seek shelter") . "], which is it?");
	}
	if ($text=~/attend to business/i) {
		quest::say("So, business is your mission! I have never met you. Who sent you?");
	}
	if ($text=~/seek shelter/i) {
		quest::say("Then look else where!! You are lucky your head still sits upon your shoulders. The dervish cutthroats are not fond of strangers. Now leave!");
	}		
	if ($text=~/Zimbittle/i) {
		quest::say("I do not know if I could trust you. You certainly do not look as though you are from Grobb, although your stench does hint of that place. If you are truly sent by Zimbittle, what is the password?");
	}	
	if ($text=~/Mukk/i) {
		# compares faction to is Amiable or Better to Indigo Brotherhood
		if ($faction <= 4 ) {
			quest::say("So you were sent by Zimbittle. Take this note to Kraagia of Da Bashers in Grobb. Do not lose the note. If it were to fall into the wrong hands of [" . quest::saylink("Goonda") . "], this whole plan could be disrupted. Now, leave, I can no longer tolerate you foul stench!");
			#:: 18886 - A Sealed Letter (Letter from The Dead)
			quest::summonitem(18886);
		}
		elsif ($faction > 4 ) {
		#:: Made up text here - need real text if found.
        quest::say("You may have been sent by Zimbittle, but I still don't trust you and can't abide by your foul stench. Don't return until you have proven allegiance to the Brotherhood ...sniff... and taken a bath!")
		}
	}
	if ($text=~/Goonda/i) {
		quest::say("In the western planes of Karana, you will find Goonda. He seems to be the Ogre shaman in charge out there.");
	}		
} 

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
