sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. Have you heard of [Rineval] Talyas?");
	}
	elsif ($text=~/rineval/i) {
		quest::say("Rineval is a strange, but special young lady. I've been told that she can read and write in ways that only a few in Norrath can. She usually does not speak of this, however I am a dear friend of hers. Say that you are in need of a scribe. If she asks you who told you this mention my name.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
