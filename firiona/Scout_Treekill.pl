sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("has a helm tied to his belt. He is chewing something. He spits some shells out and they land on your chest. 'Sorry about that. Hehe.'");
	}
	elsif ($text=~/chewing/i) {
		quest::say("Can't you tell?!! It's on your chest. Heh!! What a dim one!! They're flarefire seeds. Only good thing about this land. Trackers find 'em in the field of bone near some lizard city.");
	}
	elsif ($text=~/helm/i) {
		quest::emote("grabs the helm and juggles it in front of your face. Bet you wish you had one. I busted some bard's lute for playing teir'dal songs. I told him I would move on to his face unless he had something of value. This is all he had. Said he found it in a place some call Sebilis. I took it even though it is something only a bard would wear. That's just me.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
