sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. I fear I do not have time to speak with you as I am working my shift. Please contact me at a later time.");
	}
	elsif ($text=~/phaeril/i) {
		quest::say("Phaeril Nightshire is the man with whom I have found comfort during these years of hardship. He has also taken the [position] that belonged to Davorre many years ago.");
	}
	elsif ($text=~/position/i) {
		quest::say("Davorre was once the Captain of Erudin's forces. He was relieved of those duties shortly before he disappeared. Again, thank you, good sir. I shall rest easier tonight, knowing that he is alive.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12998 - Rolled up Note
	if (plugin::takeItems(12998 => 1)) {
		quest::say("Davorre, he is still alive! All these years I had thought him dead. He has kept his promise to me, and yet my most recent actions betray him so. I did not know. Here. Please give this to him with my most sincere regrets. I have moved on with my life and it is good to know that he is alive and well. But [Phaeril] is now my life.");
		#:: Give a 12997 - Veisha's Engagement Ring
		quest::summonitem(12997);
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 12995 - Locked Chest
	elsif (plugin::takeItems(12995 => 1)) {
		quest::say("Vile creature! Child of heresy! My love's death shall be avenged! How dare you bring me his head in a box!");
		quest::attack($name);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
