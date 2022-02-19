sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name, Perhaps you've come to purchase some of my rare supplies? I have a special blend of eleven herbs and spices......oh wait.....I'm sold out of that......anyway. What can I do for you?");
	}
	#:: Match if faction is Dubiously or better
	if ($faction < 7) {
		if ($text=~/vagnar/i) {
			quest::say("Vagnar? I don't recall.....Unless Vagnar was that shaman supposedly on some quest to save our entire race from total destruction..someone always on one of those. He bought some charms to ward of [Dragon kin]. He's most likely in the belly of some beast now.");
		}
		elsif ($text=~/dragon kin/i) {
			quest::say("Yes he said he needed to steal secrets from the hated Sarnaks to aid him in his true quest. He said the sarnak know ways to cleanse the mind from intrusion, he would say no more.");
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
