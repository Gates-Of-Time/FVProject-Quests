sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Greetings, young one. I am Manik Compolten, High Watchman. Are you a [" . quest::saylink("new warrior") . "] or an [" . quest::saylink("experienced fighter") . "]?");
	}
	if ($text=~/new warrior/i) {
		quest::say("It is always good to see new blood amongst the Gemchoppers. I have a small task for you. Take this keycard. I will give you only one at a time. Use each to obtain blackboxes for the C series clockworks. I am sure you are familiar with the clockworks. When you are done, bring them all to me. Let me know if you need another keycard.");
		#:: Give a 13844 - Shiny Card
		quest::summonitem(13844);
	}
	if ($text=~/keycard/i) {
		quest::say("It is always good to see new blood amongst the Gemchoppers. I have a small task for you. Take this keycard. I will give you only one at a time. Use each to obtain blackboxes for the C series clockworks. I am sure you are familiar with the clockworks. When you are done, bring them all to me. Let me know if you need another keycard.");
		#:: Give a 13844 - Shiny Card
		quest::summonitem(13844);
	}
	if ($text=~/experienced fighter/i) {
		quest::say("Good. I require your talents to destroy rogue clockworks. After we sent the clockworks to destroy the Asylum of the Mad we found some of the clockworks went haywire and never returned. We must destroy them, not for the safety of the people, but to keep our technology from falling into the hands of any other nation. Go to the Steamfont Mountains and return their rogue blackboxes to me.");
	}
	if ($text=~/clockwork/i) {
		quest::say("The clockworks were developed by the Eldritch Collective. They are used as our policing force in Ak'Anon. They come in many series. The letter following their number is the series model.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13215 -  Rusted Blackbox
	if (plugin::check_handin(\%itemcount, 13215=> 1)) {
		quest::say("Ah! Excellent work! I think we may have further use for you if you like.");
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,3); 		#:: + Gem Choppers
		quest::faction(210,10); 	#:: + Merchants of Ak'Anon
		quest::faction(176,3); 		#:: + King Ak'Anon
		quest::faction(71,-10); 	#:: - Dark Reflection
		quest::faction(39,-10); 		#:: - Clan Grikbar
		quest::givecash(2,1,3,1);	#:: Give a small amount of cash copper - plat
	}
	#:: Turn in for 13208 -  Series C Black Boxes Quest: Blackbox XIIC, Blackbox XXVIC, Blackbox XVIIC, Blackbox XXVIIC
	if (plugin::check_handin(\%itemcount, 13212 => 1, 13211 => 1, 13213 =>1, 13214 =>1)) {
		quest::say("Ah!! I see you had no problem finding all of the C series clockworks. Good work. Here. Take this blackbox. We received it from Clockwork 27C. Take it to Jogl Doobraugh. He is the operator of the only blackbox definer in Ak'Anon. He is out at the windmills checking on their operation.");
		#:: Give a 13209 - Blackbox XXVIIC (Blackbox for 27C Returned)
		quest::summonitem(13209);
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,1); 		#:: + Gem Choppers
		quest::faction(210,1); 		#:: + Merchants of Ak'Anon
		quest::faction(176,1); 		#:: + King Ak'Anon
		quest::faction(71,-1); 		#:: - Dark Reflection
		quest::faction(39,-1); 		#:: - Clan Grikbar
	}
	#:: Turn in for 13208 -  Red V Clockwork
	if (plugin::check_handin(\%itemcount, 13208 => 1)) {
		quest::say("This is fabulous news!! You have done well, young one.");
		#:: Randomly choose one of the following: Bull Smasher, Iony's Absorber, or various pieces of small cloth armor
		quest::summonitem(quest::ChooseRandom(13219, 13219, 13220, 13220, 1013, 1018, 1015, 1019, 1022, 1023, 1024, 1017, 1016, 1020, 1014, 1021));
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,1); 		#:: + Gem Choppers
		quest::faction(210,1); 		#:: + Merchants of Ak'Anon
		quest::faction(176,1); 		#:: + King Ak'Anon
		quest::faction(71,-1); 		#:: - Dark Reflection
		quest::faction(39,-1); 		#:: - Clan Grikbar
		quest::givecash(0,0,3,1);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
