sub EVENT_AGGRO {
	quest::say("Guards! Guards! Help me!!")
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there $name. I don't suppose you can spare some coins? I'm just a poor halfling that is far away from home. I can't afford anything to eat or drink. Anything you can offer me will be of help.");
	}
}

sub EVENT_ITEM {
	#:: Note that we are intentionally eating any items
	quest::say("Oh thank you . You are too kind to this poor halfling. Do you have anything else to give me?");
	#:: Stand
	$npc->SetAppearance(0);
	#:: Follow the player who triggered this event
	quest::follow($userid);
}
