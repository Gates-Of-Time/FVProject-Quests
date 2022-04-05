sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Bah!! A powerful knight as myself confined to the post. My heart yearns for battle. I yearn to return to the [tunnels beneath] and face evil once again.");
	}
	elsif ($text=~/tunnels beneath/i) {
		quest::say("Aye!! The tunnels beneath the land. The location escapes me, but I do remember the evil beasts within!! Slime and even [madmen] from the races of Antonica. Hah!! What am I saying? That is all that inhabits Antonica.");
	}
	elsif ($text=~/madman/i) {
		quest::say("Madmen indeed. I must admit that I even saw a few of my own within their numbers. They fought with no fear. They fell before our swords. Some carried weapons the likes of which I have never seen. I myself own a [trophy] from that battle.");
	}
	elsif ($text=~/trophy/i) {
		quest::say("My trophy from the tunnels is some sort of baton. I cannot seem to get the hang of how to wield it. A monk once showed me the proper way to use it, but I I quickly dismissed him. Hah!! I need not take instructions from men who do not understand the beauty of the blade.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
