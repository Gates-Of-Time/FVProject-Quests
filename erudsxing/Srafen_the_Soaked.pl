sub EVENT_SPAWN {
	#:: Create a timer 'DillonSpawn' that triggers every 180 seconds
	quest::settimer("DillonSpawn",180);
	#:: Create a timer 'AskDillon' that triggers every 840 seconds
	quest::settimer("AskDillon",840);
	#:: Create a timer 'SrafenDepart' that triggers every 1020 seconds
	quest::settimer("SrafenDepart",1020);
	#:: Create a timer 'FrohamSpawn' that triggers every 1200 seconds
	quest::settimer("FrohamSpawn",1200);
	#:: Create a timer 'SrafenDepop' that triggers every 1201 seconds
	quest::settimer("SrafenDepop",1201);
}

sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Why hello there! Ahh, it's good to see a new face down [here]. So you've come to [wait] with [us] eh? That is splendid! It's been getting very boring lately.");
	}
	elsif($text=~/here/i) {
		quest::say("Oh! Well this is where [we wait]. It's not much for looks but if you're lucky, a pretty fish will swim by. Oh, and once Dillon said he saw one of those fish women, a mermaid, he called it! Although, I'm not so sure of his state of mind, hehehe. He's been waiting here much longer than I.");
	}
	elsif($text=~/\bus\b/i) {
		quest::say("Well, there's me, Srafen. I've been down here for, can't quite remember, a number of years, I guess. If my wife saw the condition my clothes are in, she'd whack me, I'm sure, heheh. Although I'd bet she's long since dead, probably. Then there's Dillon. He says he's been here since those people up top in Erud blew that big hole in the ground. Not sure what happened but I guess it was a long time ago. Hmmmm, who [else]?");
	}
	elsif($text=~/wait/i) {
		quest::say("We've been waiting quite some time, really. I have been here the least amount of time, but that doesn't help keep the boredom away, heheh. What are we waiting for, you ask? HehehHAahahah! What are we waiting for?? Heheheh, what a silly question! It's quite obvious if you take the time to think about it. Heh. Ummm.. I'm really not sure.");
	}
	elsif($text=~/else/i) {
		quest::say("Ahh, yes, there's also a really old guy I've only seen a couple times, name's Froham. Whew, he is really old, and not much of a talker. Mostly mumbles from time to time. Dillon says he's been here since Erud first took his people across the sea. Not sure who this Erud feller is but Froham isn't in the best of shape, so it must have been a LONG time ago. Froham did mention there's one other guy but we've never seen him. He apparently had something to do with the Combine Empire, no idea what that is though.");
	}
	elsif($text=~/not an illusion/i) {
		quest::say("Awww, well that's too bad. Although illusions and real people don't seem to be much different at times, so, please stay and keep Dillon and me company. We could use it, right Dillon?");
		#:: Send a signal '1' to Erud's Crossing >> Dillon_the_Drowned (98051) with no delay
		quest::signalwith(98051,1,0);
	}
}

sub EVENT_SIGNAL {
	if($signal == 0) {
		quest::say("Hey there, Dillon! Good to see you again, I think.");
	}
	if($signal == 1) {
		quest::emote("looks around frantically a moment then laughs and says, 'Ohhh, them! Hehehe! This is a friend of mine come to wait with us. Isn't that exciting, Dillon? And it's not just an illusion, I don't think! Say, are you [an illusion], shaman?");
	}
}

sub EVENT_TIMER {
	if ($timer eq "DillonSpawn") {
		#:: Spawn a Erud's Crossing >> Dillon_the_Drowned (98051), without grid or guild war, at the specified location
		quest::spawn2(98051,0,0,4198.4,-1563.4,-291.5,152);
		#:: Stop the timer 'DillonSpawn'
		quest::stoptimer("DillonSpawn");
	}
	elsif ($timer eq "AskDillon") {
		quest::say("Hey Dillon, why don't you tell us again about what happened up top? You know, where they blew that big hole into the ground.");
		#:: Send a signal '0' to Erud's Crossing >> Dillon_the_Drowned (98051) with no delay
		quest::signalwith(98051,0,0);
		#:: Stop the timer 'AskDillon'
		quest::stoptimer("AskDillon");
	}
	elsif ($timer eq "SrafenDepart") {
		#:: Start Grid 58
		quest::start(58);
		quest::say("'Okay, well, I've had enough. Yet again, we've waited for nothing. Sometimes I really wonder if the spirits are real after all. Well I for one am going to go find something fun to do - this is obviously a waste of time. Come with me, shaman, it'll be great fun! Fairwell Dillon.");
		#:: Send a signal '2' to Erud's Crossing >> Dillon_the_Drowned (98051) with no delay
		quest::signalwith(98051,2,0);
		#:: Stop the timer 'SrafenDepart'
		quest::stoptimer("SrafenDepart");
	}
	elsif ($timer eq "FrohamSpawn") {
		#:: Spawn a Erud's Crossing >> Froham_the_Forgotten (98047), without grid or guild war, at the specified location
		quest::spawn2(98047,0,0,4208.8,-1588.6,-291.7,205);
		#:: Stop the timer 'FrohamSpawn'
		quest::stoptimer("FrohamSpawn");
	}
	elsif ($timer eq "SrafenDepop") {
		#:: Depop without spawn timer
		quest::depop();
		#:: Stop the timer 'SrafenDepop'
		quest::stoptimer("SrafenDepop");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}