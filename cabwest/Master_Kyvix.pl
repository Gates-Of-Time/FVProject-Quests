sub EVENT_SAY {   
	if ($text=~/hail/i) {
		if (plugin::check_hasitem($client, 4246)) {
			quest::say("So you are expecting to earn your way to rank of revenant, eh? You shall when I have the base and stem of the candle your occultist skullcap.");
		}
		else {
			quest::say("Quite busy!! Quite busy!! Things must be done. [New components] to be collected!!");
		}
	}
	elsif ($text=~/new components/i) {
		quest::say("Yes, yes!! I will need components from beyond the gates. I must find an [apprentice of the third rank].");
	}
	elsif ($text=~/apprentice of the third rank/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("If you truly be an apprentice of the third circle, then there is a Dark Binder skullcap to be earned. Take this sack and fill it with a creeper cabbage, a heartsting telson with venom, brutling choppers and a scalebone femur. When they are combined within the sack, you may return it to me with your third rank skullcap and and we shall bid farewell to the title, 'apprentice'.");
			#:: Give a 17024 - Brood Sack
			quest::summonitem(17024);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you have shown more devotion to the Brood of Kotiz, we can discuss such things.");
		}
		else {
			quest::say("You are a true simpleton to think you can speak to me.  You are no ally to the Brood of Kotiz.  Begone, before I make your blood boil!");
		}
	}
	elsif ($text=~/true mission/i) {
		#:: Match a 4263 - Dark Binder Skullcap
		if (plugin::check_hasitem($client, 4263)) {
			quest::say("I have been waiting for a Nihilist to return. His name was Ryx and I fear his love of ale and the high seas has kept him from his mission. All I want you to do is find him. He should be disguised as a worker and he will give you a tome to bring to me. Return it with your Dark Binder Cap. I am sure that is simple enough for one as simple as you. Be sure to give him this.");
			#:: Give a 12848 - Spectacle
			quest::summonitem(12848);
		}
		else {
			quest::say("When you have shown more devotion to the Brood of Kotiz, we can discuss such things.");
		}
	}
#::	#:: fake text
#::	elsif ($text=~/kor sha candlestick/i) {
#:: 		quest::say("I need the foot and stem of my candlestick. The Stem comes from Sarnaks. The foot has been stolen by Gripe, in East Cabilis.");
#::	}
#::	elsif ($text=~/new revenant/i) {
#::		quest::say("");
#::	}
}

sub EVENT_ITEM { 
	#:: Match a 12420 - Full Component Sack, a 4262 - Apprentice Skullcap - 3rd Rank
	if (plugin::takeItems(12420 => 1, 4262 => 1)) {
		quest::say("You have taken far too long! Already another apprentice has performed this task.  You will still be rewarded with the Dark Binder skullcap, but now you must aid in a [true mission].");
		#:: Give a 4263 - Dark Binder Skullcap
		quest::summonitem(4263); 
		#:: Set factions
		quest::faction(443, 10);  	#:: + Brood of Kotiz
		quest::faction(441, 2);  	#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 1000 to 2000cp
		my %cash = plugin::RandomCash(1000, 2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12420 - Full Component Sack
	elsif (plugin::takeItems(12420 => 1)) {
		quest::say("I demand a full fish sack and your third circle apprentice skullcap.");
		#:: Give a 12420 - Full Component Sack
		quest::summonitem(12420);
	}
	#:: Match a 4262 - Apprentice Skullcap - 3rd Rank
	elsif (plugin::takeItems(4262 => 1)) {
		quest::say("I demand a full fish sack and your third circle apprentice skullcap.");
		#:: Give a 4262 - Apprentice Skullcap - 3rd Rank
		quest::summonitem(4262);
	}
	#:: Match a 18065 - Journal, a 4263 - Dark Binder Skullcap
	elsif (plugin::takeItems(18065 => 1, 4263 => 1)) {
		quest::say("I did not expect you to return.  You have made me lose a bet with one of the other scholars.  Seeing as you have delivered the tome, I shall not harm you, but rather welcome you into the rank of occultist.  No go see Keeper Rott and tell him you are [the chosen occultist].");
		#:: Give a 4264 - Occultist Skullcap
		quest::summonitem(4264);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 20);  	#:: + Brood of Kotiz
		quest::faction(441, 5);  	#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Match a 18065 - Journal
	elsif (plugin::takeItems(18065 => 1)) {
		quest::say("Give me the journal and your Dark Binder skullcap.");
		#:: Give a 18065 - Journal
		quest::summonitem(18065);
	}
	#:: Match a 4263 - Dark Binder Skullcap
	elsif (plugin::takeItems(4263 => 1)) {
		quest::say("Give me the journal and your Dark Binder skullcap.");
		#:: Give a 4263 - Dark Binder Skullcap
		quest::summonitem(4263);
	}
	#:: Match a 12853 - Stem of Candlestick, a 12852 - Foot of Candlestick, a 4264 - Occultist Skullcap
	elsif (plugin::takeItems(12853 => 1, 12852 => 1, 4264 => 1 )) {
		quest::emote("grabs the candle parts and puts them in an odd pouch, then takes your cap which disintegrates in his palm. He hands you another cap. 'Welcome, Revenant $name. You have done well. The Harbinger awaits you. He seeks a [new revenant].'");
		#:: Give a 4265 - Revenant Skullcap
		quest::summonitem(4265); 
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 0);  	#:: + Brood of Kotiz
		quest::faction(441, 0);  	#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 500 to 1000cp
		my %cash = plugin::RandomCash(500, 1000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
