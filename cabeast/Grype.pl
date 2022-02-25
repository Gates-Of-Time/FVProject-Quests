sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("gulps down the rest of his ale.");
    quest::say("Looks like I'll need another.");
  }
  if ($text=~/blue talon/i) {
    quest::emote("takes a swipe at you.");
    quest::say("We used to be the bruisers of the west side. We didn't take nothin' from no one!! Fist and mind was our motto. Now get lost before I introduce my fist to your face. Hmpf. Too late, I see.");
  }
}

sub EVENT_ITEM {
  #:: Match a 12862 - Stein
	if (plugin::takeItems(12862 => 1)) {			#:: Necromancer 6th Skullcap
    quest::say("Well, as promised, here's your Foot of the candlestick.");
		#:: Give a 12852 - Foot of Candlestick
		quest::summonitem(12852);
		#:: Ding!
		quest::ding();
	}

  elsif (plugin::takeItems(12609 => 4)) {
    quest::emote("swallows the whole bottle in one gulp.");
    quest::say("Here, go buy yourself a brain. What?!! You expecting something? How about this.. <BUUURRRPPPP!!> Thanks for helping me get through my dry spell, croak!! Never mess with a Blue Talon!!");
		#:: Return coin
    quest::givecash(1,0,0,0);
		#:: Grant a small amount of experience
    quest::exp(100);
  }
  plugin::return_items(\%itemcount);
}
