sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there $name. I don't suppose you can spare some coins? I'm just a poor halfling that is far away from home. I can't afford anything to eat or drink. Anything you can offer me will be of help.");
	}
}

sub EVENT_ITEM {
	$npc->SetAppearance(0);
	quest::say("Oh thank you . You are too kind to this poor halfling. Do you have anything else to give me?");
	quest::follow($charid, 10);
}
