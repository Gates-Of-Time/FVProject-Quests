my $spawn;

sub EVENT_SPAWN {
  	$spawn = 0;
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name. Are you perchance a minstrel?");
	}
	if ($text=~/i am a minstrel/i) {
		quest::say("I, too, am a bard, or was rather. I have been cursed by that blasted pile of bones who calls itself, Trakanon.");
	}
	if ($text=~/trakanon/i) {
		quest::say("He is the undead dragon who rules this realm. I came on a quest seeking strings for my new instrument.");
	}
	if ($text=~/new instrument/i) {
		quest::say("I sought to create a Magical Lute.");
	}
	if ($text=~/magical lute/i) {
		quest::say("One that would make me the greatest bard in all the lands! Are you on a similar quest?");
	}
	if ($text=~/i am on a similar quest/i) {
		quest::say("Excellent. I have stayed here far too long and I wish to go to my eternal slumber. But before I do so, I ask for one last request.");
	}
	if ($text=~/last request/i) {
		quest::say("Well then, I would ask you a favor for one in return. If I bring that cursed dragon here, will you kill it for me?");
	}
	if ($text=~/i will kill it for you/i) {
		quest::say("Give me the Mystical Lute Body you have. I will return it, don't worry. I only wish to hold an instrument one last time before I leave.");
	}
}

sub EVENT_ITEM {
	#:: Match a 20536 - Mystical Lute Body
	if (plugin::takeItems(20536 => 1)) {
		quest::say("I feel so powerful once again...a strange feeling is overcoming me!");
		#:: Give a 20536 - Mystical Lute Body
		quest::summonitem(20536);
		quest::attack($name);
		$spawn = 1;
	}
	else {
		quest::say("I do not need this.");
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH {
	if($spawn == 1) {
		quest::spawn2(89181,0,0,-693,-2103,-140.62,0);
		$spawn = 0;
	}
}