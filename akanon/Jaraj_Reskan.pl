sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Greetings, child. Welcome to Gemchopper Hall. I trust that you are a [" . quest::saylink("warrior") . "], or perhaps you are [" . quest::saylink("lost") . "]..?");
	}
	if ($text=~/lost/i) {
		quest::emote("One can easily get lost in Ak'Anon. You must get your vision checked. If you are truly lost, I would advise speaking with a mechanical guide. There should be one close by on the main walkway.");
	}
	if ($text=~/warrior/i) {
		quest::emote("That is good news! We gnomes are not known for our love of battle so it is always good to bring new blood into our ranks. We shall prove our worth as warriors to all other races. For now. there is much to do in Ak'Anon. There are [" . quest::saylink("rogue clockworks") . "] and the [" . quest::saylink("cargo clockwork") . "].");
	}
	if ($text=~/rogue clockworks/i) {
		quest::emote("The clockworks are the responsibility of Manik Compolten. Speak with him - I am sure he is here somewhere.");
	}
	if ($text=~/cargo clockwork/i) {
		quest::emote("The cargo clockwork is located near the entrance to Ak'Anon in the Steamfont Mountains. It runs a delivery to the windmills every five days at eight in the morning. There have been attacks by a group of highwaymen. They are quite a formidable group. I have offered a reward for their heads. Be very careful if you plan on escorting the cargo clockwork. This trio of bandits is very strong.");
	}
}	
sub EVENT_ITEM {
	#:: Turn in for 85058 -  Highway Protectors Mask
	if (plugin::check_handin(\%itemcount, 85056 => 1, 85055 => 1, 85057 =>1)) { #:: Hector's Severed Head, Renaldo's Severed Head, Jerald's Severed Head
		quest::say("I heard our shipment made it back safely. These heads will send a message to any other thief that plans on robbing our cargo shipments. Thank you $name, take this mask and this coin as your reward.");
		#:: Give item 85058 -  Highway Protectors Mask
		quest::summonitem(85058);
		#:: Give a small amount of xp
		quest::exp(6000);
		#:: Give small amount of cash
		quest::givecash(0,2,1,6);	#:: Give a small amount of cash
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,15); 	#:: + Gem Cutters
		quest::faction(210,15); 	#:: + Merchants of Ak'Anon
		quest::faction(176,15); 	#:: + King Ak'Anon
		quest::faction(71,-15); 	#:: - Dark Reflection
		quest::faction(39,-15); 	#:: - Clan Grikbar
	}
	plugin::return_items(\%itemcount);
}
