sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::doanim(39);
    quest::emote("begins to move. The room echoes with the clattering of his bones. As he speaks, you notice spiders clinging to stretched webs. 'Welcome. Sparklies are your interest? Which?'");
    quest::settimer("distracted",2);
  }
  elsif ($text=~/dread diamond/i) {
    quest::say("Dread diamonds are your interest? Lucky for you I have one left in stock. Shall we trade? Your soul perhaps? No. I have no need for that used up thing. Let the trade be dread diamond for dufrenite.");
  }
}

sub EVENT_ITEM {
	#:: Match a 10073 - Dufrenite
	if (plugin::takeItems(10073 => 1)) {
		quest::emote("places the gem in his web-covered mouth. 'Dread diamond. Valuable as is, but so much more so when crushed. Unfortunately, no ordinary pestle will suffice. One would need a spectral pestle and much skill as well as a medicine bag to capture the fragments.'");
		#:: Give a 12946 - Dread Diamond
		quest::summonitem(12946);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(3000);
    quest::settimer("cutting",4);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
  if ($timer eq "distracted") {
    quest::doanim(20);
    quest::say("Blast it! Distracted me you have! Now I need a new [green gem]!");
    quest::stoptimer("distracted");
  }
  if ($timer eq "cutting") {
    quest::emote("carries on cutting gems, oblivious to your presence.");
    quest::doanim(39);
    quest::stoptimer("cutting");
  }
}
