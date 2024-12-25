sub EVENT_SPAWN {
	quest::say("Well met again, Srafen. How goes it?");
	#:: Send a signal '0' to Erud's Crossing >> Srafen_the_Soaked (98046) with no delay
	quest::signalwith(98046,0,0);
}

sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("Hey Srafen, who is this weirdo talking to me? Or is it another one of those funny illusions Froham keeps talking about?");
		#:: Send a signal '1' to Erud's Crossing >> Srafen_the_Soaked (98046) with no delay
		quest::signalwith(98046,1,0);
	}
	elsif($text=~/bore/i) {
		quest::say("Well ok, I was sent here a long time ago to wait. When I got here, I couldn't believe all the violence going on. Why would the spirits send me here to wait when all this fighting and commotion was going on, I wondered. There were great battles on the ocean in splendid ships made of pine and shining with [magical enhancements]. While I was waiting below, blasted, bloody body parts were floating down to the bottom of the ocean all around me.");
	}
	elsif($text=~/magical enhancements/i) {
		quest::say("Yes, their ships were very strange, constructed in very unusual designs and all seemed to shine with a multicolored glow. I heard there was even a ship that could stay completely underwater for long periods of time. It had huge steel spikes protruding from the top of its hull used to 'swim' under enemy ships and puncture their hulls. I always thought that someday all this magic would cause something [disastrous] and eventually, it did.");
	}
	elsif($text=~/disastrous/i) {
		quest::say("Well, one time, I was here waiting as usual. The fighting was particularly heavy up top, lots of banging and rumbling around. And suddenly there was a tremendous screech! I had to cover my ears, it was so loud, even down here. It felt like the water itself was being torn asunder; I could imagine what was happening above. After a few seconds of the screeching came a terrible tremor and rumbling. Great cracks opened up around me and water rushed to fill them, almost dragging me down into the gods know what. It calmed down a little while after that and there hasn't been any real fighting ever since. I suspect they're all dead now. For weeks afterwards, the water had a kind of dead taste to it. I became ill during that time.");
	}
}

sub EVENT_TIMER {
	if ($timer eq "DillonDepop") {
		#:: Depop without spawn timer
		quest::depop();
		#:: Stop the timer 'DillonDepop'
		quest::stoptimer("DillonDepop");
	}
}

sub EVENT_SIGNAL {
	if($signal == 0) {
		quest::say("Again? Oh I don't know Srafen, I don't want to [bore] our company, even if it is an illusion.");
	}
	elsif($signal == 1) {
		quest::say("Whatever.");
	}
	elsif($signal == 2) {
		quest::say("Hey wait! I'm coming with!");
		#:: Start Grid 58
		quest::start(58);
		#:: Create a timer 'DillonDepop' that triggers every 20 seconds
		quest::settimer("DillonDepop",20);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}