sub EVENT_SPAWN {
	#:: Create a timer 'AbeAsksAboutArrow' that triggers every 240 seconds
	quest::settimer("AbeAsksAboutArrow",240);
	#:: Create a timer 'AbeDepart' that triggers every 420 seconds
	quest::settimer("AbeDepart",420);
	#:: Create a timer 'SSpawn' that triggers every 540 seconds
	quest::settimer("SSpawn",540);
	#:: Create a timer 'AbeDepop' that triggers every 541 seconds
	quest::settimer("AbeDepop",541);
}

sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::emote("turns his head slowly toward you but his eyes never come into focus. You can't tell if he's looking at you, behind you, or right in front of his own face. Then, suddenly, he shouts at the top of his lungs, 'HOOOOKAAAHEEEEYYYY! I AM [ABE]!");
	}
	elsif($text=~/Abe/i) {
		quest::say("Nothing is hidden. All is discernible if you only know where to look and you have the right [eyes]. Don't be angry with me if you can't get your eyes right to see what you're looking for. I'd lend you mine but I don't wear the same size.");
	}
	elsif($text=~/eyes/i) {
		quest::emote("begins to draw a picture in the mud with his finger although it doesn't seem to make any sense at all. He points to his picture and nods approvingly at you, saying, 'You see? The curtains fell and it was naught but a dream upon a landscape that we thought we knew. The dream of the [Combine] fulfilled when we finally trimmed our fingernails and looked into the mud. And now we are abandoned, in a world that none can see, no one has the eyes.");
	}
	elsif($text=~/combine/i) {
		quest::emote("shakes his head in amusement and says, 'Heheheh, yeah, you'd think so, wouldn't you? But I guess not.");
	}
	elsif($text=~/broken arrow/i) {
		quest::emote("'s eyes suddenly come into focus, looking deep into your own and says, 'There was a time when we cared for the world and trod with the spirits along the paths of the cosmos. We built many great things and worked to preserve what was. I came here to wait for an answer when we began to die off. We could not figure why this was and I was chosen to come here and commune with our friends. We carved an arrow, and everyone who was left shaved a sliver of wood from it. We let it drop to hallowed ground and our highest shaman stepped on it, breaking it. I've been waiting here for so long. So, so long, to give it to the spirits, and thank them.");
	}
	elsif($text=~/give them the arrow/i) {
		quest::emote("removes a quiver slung across his shoulder and solemnly hands it to you without a word.");
		#:: Give a 1680 - Broken Arrow
		quest::summonitem(1680);
	}
}

sub EVENT_TIMER {
	if ($timer eq "AbeAsksAboutArrow") {
		quest::say("Shaman? My time will soon be at hand and I fear I will never see our friends again. But the arrow must be given, our holy broken arrow. Shaman, will you bear our obligation and [give them the arrow]? You will know who to give it to when it is time.");
		#:: Stop the timer 'AbeAsksAboutArrow'
		quest::stoptimer("AbeAsksAboutArrow");
	}
	elsif ($timer eq "AbeDepart") {
		quest::emote("suddenly gasps and says, 'I have found it! I know the answer! Come with me and I will tell you. Eyes are everywhere and this knowledeg is not for everyone. Finally my centuries of waiting are over hahahaha! Follow me Shaman!");  quest::start(58);
		#:: Stop the timer 'AbeDepart'
		quest::stoptimer("AbeDepart");
	}
	elsif ($timer eq "SSpawn") {
		#:: Spawn a Erud's Crossing >> a_greater_spirit (98052), without grid or guild war, at the specified location
		quest::spawn2(98052,0,0,4176.4,-1563.6,-291.4,115.3);
		#:: Stop the timer 'SSpawn'
		quest::stoptimer("SSpawn");
	}
	elsif ($timer eq "AbeDepop") {
		#:: Depop without spawn timer
		quest::depop();
		#:: Stop the timer 'AbeDepop'
		quest::stoptimer("AbeDepop");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}