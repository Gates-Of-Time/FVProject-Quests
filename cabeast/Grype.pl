#:: Create a scalar variable to store an item count
my $ItemCount;

sub EVENT_SPAWN {
	#:: Reset item count on spawn
	$ItemCount = 0;
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("gulps down the rest of his ale. 'Looks like I'll need another.'");
	}
	elsif ($text=~/blue talon/i) {
		quest::emote("takes a swipe at you. 'We used to be the bruisers of the west side. We didn't take nothin' from no one!! Fist and mind was our motto. Now get lost before I introduce my fist to your face. Hmpf. Too late, I see.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 12862 - Stein
	if (plugin::takeItems(12862 => 1)) {
		quest::emote("nearly faints. His eyes begin to tear up. 'Oh my sweet stein of sloshing! This is the great treasure. A shiny piece of broken metal! Ha! You never win when you deal with a Blue Talon!'");
		#:: Give a 12852 - Foot of Candlestick
		quest::summonitem(12852);
		#:: Ding!
		quest::ding();
	}
	#:: Match four 12609 - Cabilis Pale Ale
	elsif (plugin::takeItems(12609 => 4)) {
		quest::emote("swallows the whole bottle in one gulp. 'Here, go buy yourself a brain. What?!! You expecting something? How about this.. <BUUURRRPPPP!!> Thanks for helping me get through my dry spell, croak!! Never mess with a Blue Talon!!'");
		#:: Ding!
		quest::ding();
		#:: Give exactly 1 copper
		quest::givecash(1, 0, 0, 0);
		#:: Reset item count
		$ItemCount = 0;
	}
	#:: Match three 12609 - Cabilis Pale Ale
	elsif (plugin::takeItems(12609 => 3)) {
		if ($ItemCount == 0) {
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			#:: Increment the item count variable
			$ItemCount++;
			$ItemCount++;
			$ItemCount++;
		}
		else {
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("swallows the whole bottle in one gulp. 'Here, go buy yourself a brain. What?!! You expecting something? How about this.. <BUUURRRPPPP!!> Thanks for helping me get through my dry spell, croak!! Never mess with a Blue Talon!!'");
			#:: Ding!
			quest::ding();
			#:: Give exactly 1 copper
			quest::givecash(1, 0, 0, 0);
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Match two 12609 - Cabilis Pale Ale
	elsif (plugin::takeItems(12609 => 2)) {
		if ($ItemCount <= 1) {
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			#:: Increment the item count variable
			$ItemCount++;
			$ItemCount++;
		}
		else {
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			quest::emote("swallows the whole bottle in one gulp. 'Here, go buy yourself a brain. What?!! You expecting something? How about this.. <BUUURRRPPPP!!> Thanks for helping me get through my dry spell, croak!! Never mess with a Blue Talon!!'");
			#:: Ding!
			quest::ding();
			#:: Give exactly 1 copper
			quest::givecash(1, 0, 0, 0);
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Match two 12609 - Cabilis Pale Ale
	elsif (plugin::takeItems(12609 => 1)) {
		if ($ItemCount <= 2) {
			quest::emote("drinks the ale as if it were a shot. 'Ahhh!! Keep it coming. I think we are going to be good friends. Or something.'");
			#:: Increment the item count variable
			$ItemCount++;
		}
		else {
			quest::emote("swallows the whole bottle in one gulp. 'Here, go buy yourself a brain. What?!! You expecting something? How about this.. <BUUURRRPPPP!!> Thanks for helping me get through my dry spell, croak!! Never mess with a Blue Talon!!'");
			#:: Ding!
			quest::ding();
			#:: Give exactly 1 copper
			quest::givecash(1, 0, 0, 0);
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
