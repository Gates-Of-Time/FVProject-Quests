sub EVENT_SIGNAL {
	#:: Match signal "1" from Thurgadin >> Horasug (115013)
	if ($signal == 1) {
		quest::emote("raises an eyebrow at Horasug.");
		#:: Send a signal "2" to Thurgadin >> Horasug (115013) with a 11000 ms (11 second) delay
		quest::signalwith(115013,2,11000);
	}
	#:: Match signal "2" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 2) {
		quest::say("Saramor, please remind me to water down the spirits a bit.");
		#:: Send a signal "5" to Thurgadin >> Rumagur (115011) with a 8000 ms (8 second) delay
		quest::signalwith(115011,5,8000);
		#:: Send a signal "5" to Thurgadin >> Rumagur (115187) with a 8000 ms (8 second) delay
		quest::signalwith(115187,5,8000);
	}
	#:: Match signal "3" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 3) {
		quest::say("So I was polishing up the bar the other day when in hops this piece of rope and says, 'I'll take a bottle of Frostreaver's Frozen Vodka.' I look at him and I says, 'We don't serve no ropes here, now beat it!' Hehe. . .");
		#:: Send a signal "6" to Thurgadin >> Rumagur (115011) with no delay
		quest::signalwith(115011,6);
		#:: Send a signal "6" to Thurgadin >> Rumagur (115187) with no delay
		quest::signalwith(115187,6);
	}
	#:: Match signal "4" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 4) {
		quest::say("Not ten minutes later a piece of rope comes hoppin' in and says the same thing, only this one's tied up in the middle and one end is all messed up. So I says, 'Hey, ain't you the same piece o' rope I just kicked outta here?'");
		#:: Send a signal "7" to Thurgadin >> Rumagur (115011) with no delay
		quest::signalwith(115011,7);
		#:: Send a signal "7" to Thurgadin >> Rumagur (115187) with no delay
		quest::signalwith(115187,7);
	}
	#:: Match signal "5" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 5) {
		quest::say("He looks me dead in the eyes and says, 'Nope, I'm afraid not.' <grin>");
		#:: Send a signal "8" to Thurgadin >> Rumagur (115011) with a 8000 ms (8 second) delay
		quest::signalwith(115011,8,8000);
		#:: Send a signal "8" to Thurgadin >> Rumagur (115187) with a 8000 ms (8 second) delay
		quest::signalwith(115187,8,8000);
	}
	#:: Match signal "6" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 6) {
		quest::say("Hmm, let's see here, aah yes. This is a special bottle handed down to me by my father, and it's been in my family for ages. Not really sure what it's made of, but yer welcome to give it a try.");
		#:: Send a signal "9" to Thurgadin >> Rumagur (115011) with a 8000 ms (8 second) delay
		quest::signalwith(115011,9,8000);
		#:: Send a signal "9" to Thurgadin >> Rumagur (115187) with a 8000 ms (8 second) delay
		quest::signalwith(115187,9,8000);
	}
	#:: Match signal "7" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 7) {
		quest::emote("watches as Rumagur pours the contents of the bottle into his mouth.");
		#:: Send a signal "10" to Thurgadin >> Rumagur (115011) with a 8000 ms (8 second) delay
		quest::signalwith(115011,10,8000);
		#:: Send a signal "10" to Thurgadin >> Rumagur (115187) with a 8000 ms (8 second) delay
		quest::signalwith(115187,10,8000);
	}
}