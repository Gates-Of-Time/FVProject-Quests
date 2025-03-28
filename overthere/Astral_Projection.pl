sub EVENT_SAY {
	#:: Check for 1687 - Eye of Kaiaren
	if(plugin::check_hasitem($client, 1687)) {
		if($text=~/yes/i) {
			quest::say("I assume you have read about us and spoken with the old man, Kaiaren. Since that time, I have grown in power and influence to a point unseen by any mortal. Unfortunately, I will have to demonstrate a small amount of my skill when I destroy you. This is bad. I must decide whether you are worthy to see the techniques I wield, even though you will die shortly thereafter. Tell me, $name, who are you?");
		}
		if($text=~/i am the one/i) {
			quest::emote("chuckles.");
			quest::say("Thats quite a boast, $name. All beings strive for nothingness at the most basic level of sentience. However, almost none ever achieve this. Not even I have discarded my ego yet and you stand here and tell me you have? Perhaps you will be a worthy opponent. I shall be waiting in the great lake near here. Take that token as proof of things to come for you. If you still wish to throw your life away so needlessly, return it to my image there. I await your decision.");
			quest::depop_withtimer();
		}
	}
	else {
		quest::emote("ignores you.");
	}
}

sub EVENT_ITEM {
	#:: Match a 1686 - Trunt's Head
	if(plugin::takeItems(1686 => 1)) {
		quest::emote("looks up and down.");
		quest::say("Hmmm, I was hoping for something more impressive. This is just a small token of the last person who tried to interfere with my plans. He failed as shall you. But tell me truly, are you the one who has so rudely removed my students?");
		#:: Give a 1687 - Eye of Kaiaren
		quest::summonitem(1687);
		#:: Ding!
		quest::ding();
	}
	else {
		quest::say("I have no use of this, $name.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}