sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("How dare you speak to me, you impudent sack of nauseating refuse! For this outrage of insubordination I call forth the vengeance of House Mistmoore! You now have little time left to live.  Enjoy it.");
		quest::attack($name);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Spawn one and only one The Castle of Mistmoore >> Black Dire (59129), without grid or guild war, at the given location
	quest::unique_spawn(59129,0,0,-165,90,-221,56);
}