sub EVENT_SPAWN {
	quest::emote("'s voice echoes through the area. 'The efforts to help the Coldain and bring them together with the gnomes of Iceclad is quite impressive. There will be no doubt that they will continue to increase in power until they can overtake the Giants of Zek. Hey there, what is that on your shoulder?'");
	#:: Create a timer 'avatarshawl' that triggers every 900 seconds (15 min)
	quest::settimer("avatarshawl",900);
}

sub EVENT_SAY {
	if ($text=~/runed coldain prayer shawl/i) {
		quest::say("So it is the sacred rune of Coldain. Let me have a closer look at it.");
	}
}

sub EVENT_ITEM {
	#:: Match a 8895 - Runed Coldain Prayer Shawl
	if (plugin::takeItems(8895 => 1)) {
		quest::emote("holds the shawl up close to one eye to look at the rune sewn into it. He smiles to himself and then drops it to the ground and places one hand on it. A bright blue glow starts to emanate in the snow, then there is a sudden flash! The Avatar has dissipated. All that is left behind is the Shawl lying in the snow, shimmering with a new power. $name slowly bends down to pick it up, and is infused with a blessing from Brell.");
      	#:: Give a 1200 - Blessed Coldain Prayer Shawl
		quest::summonitem(1200);
		#:: Ding!
		quest::ding();
		#:: Send a signal "10" to Iceclad Ocean >> General_Bragmur_  (110118) with a five second delay
		quest::signalwith(110118, 10, 5);
		#:: Stop the timer 'avatarshawl'
		quest::stoptimer("avatarshawl");
		#:: Depop without spawn timer
		quest::depop();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL  {
	#:: Match the timer 'avatarshawl'
	if ($timer eq "avatarshawl") {
		#:: Stop the timer 'avatarshawl'
		quest::stoptimer("avatarshawl");
		#:: Depop without spawn timer
		quest::depop();
	}
}