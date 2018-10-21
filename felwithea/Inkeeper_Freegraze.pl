sub EVENT_SAY {
	if ($text=~/tolon nurbyte/i) {
		quest::say("So you are inquiring about Mister Tolon Nurbyte, eh? He is on the second floor, last door on the right. You two had best not be up to any mischief. The pair of you look a little shifty for the kingdom of Felwithe.");
		#:: Spawn a Northern Felwithe >> Tolon_Nurbyte (61095)
		quest::spawn2(61095, 0, 0, -343, 155, 17, 8);
	}
}
