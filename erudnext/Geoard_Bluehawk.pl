sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. adventurer! After all those months of sweaty. hot and dirty battling of beasts untold. it is time to treat yourself to a tall. cool grog!");
	}
	if ($text=~/about a Erud's Tonic/i) {
		quest::say("Long ago, the great Erud found that excessive indulgence in spirits led to diminished mental awareness. His love of Kaladim brandy led him to concoct Erud's Tonic. The tonic blocked the effects of all spirits. Unfortunately, it is made from our precious [" . quest::saylink("Vasty Deep Water") . "] and therefore is not permitted to be exported or given to non-Erudites or adventuring Erudites.");
	}
	if ($text=~/have some Erud's Tonic/i) {
		quest::say("The sale or provision of Erud's Tonic to travelers is prohibited!");
		#:: Send signal to erudnext/Phloatin_Highbrow.pl
		quest::signal(24039,50);
	}
	if ($text=~/Vasty Deep Water/i) {
		quest::say("The Vasty Deep is a lake located on Odus. It contains the purest water in Norrath. Some say it is magical in nature. The High Council does not allow it to be taken by outsiders and those who try are usually converted to chum for the sharks.");
	}
}
