sub EVENT_SAY {
	#:: Going Postal Butcherblock to Kelethin Quest
	if ($text=~/hail/i) {
		quest::say("Hail. $name - Are you [" . quest::saylink("interested") . "] in helping the League of Antonican Bards by delivering some [" . quest::saylink("mail") . "]?");
	}
	if ($text=~/interested/i) {
		quest::say("I have messages that need to go to - well. right now I have one that needs to go to Kelethin.  Will you [" . quest::saylink("deliver") . "] mail to Kelethin for me?");
	}
	if ($text=~/mail/i) {
		quest::say("The League of Antonican Bards has a courier system made up of travelers, adventurers, and agents.  We pay good gold to anyone who will take messages from bards such as myself to one of our more distant offices.  Are you [" . quest::saylink("interested") . "]?");
	}
	if ($text=~/deliver/i) {
		quest::say("Take this letter to Jakum Webdancer. You can find him at the bard guild hall. I'm sure he will compensate you for your trouble.");
		#:: Give item 18160 - Bardic Letter (Kelethin)
		quest::summonitem(18160);
	}
}
