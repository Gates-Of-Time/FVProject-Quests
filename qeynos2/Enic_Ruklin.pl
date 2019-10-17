sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! These are the sacred grounds of the Temple of Life. Please do not cause any disturbances while on our grounds. I would hate to have to hurt you. In the name of Rodcet Nife, of course. Now excuse me, I have a [" . quest::saylink("problem") . "] to attend to.");
	}
	elsif ($text=~/problem/i) {
		quest::say("I have been charged with the duty of protecting the [" . quest::saylink("Pool of Jahnda") . "] and its fish. Now it seems as though a beast by the name of [" . quest::saylink("Frostbite") . "] has slurped up another one of the sacred fish, the [" . quest::saylink("Koalindl") . "]. If I do not get the little corpse of this fish back, I could be in trouble. Any respected member of this temple who aids me will be rewarded greatly.");
	}
	elsif ($text=~/pool of jahnda/i) {
		quest::say("The Pool of Jahnda is not meant for public use. It is a sacred pool created for the [" . quest::saylink("Koalindl") . "]. They say that, every so often, the Prime Healer visits our plane in the guise of a Koalindl. He swims in our pool.");
	}
	elsif ($text=~/koalindl/i) {
		quest::say("The fish called Koalindl were a gift to Priestess Jahnda from the Prime Healer. They come from the plane of health. To kill one Koalindl is to bring the wrath of Rodcet Nife and the Priests of Life down upon you.");
	}
	elsif ($text=~/frostbite/i) {
		quest::say("Frostbite is a dog. He belongs to some barbarian who visits the city every so often. I know not where they are from. I cannot see them coming from Halas. Their visits are too frequent.");
	}
	elsif (($text=~/donation to the temple of thunder/i) || ($text=~/donate to the temple of thunder/i)) {
		quest::say("I would be glad to help you out. The Knights of Thunder are a respected order.");
		#:: Give a 13292 - Donation
		quest::summonitem(13292);
	}
}

sub EVENT_ITEM {
	#:: Match a 13383 - Koalindl Fish
	if (plugin::takeItems(13383 => 1)) {
			quest::say("Thank you my friend! Every Koalindl must be accounted for, even the dead. Rodcet Nife shall be pleased and I shall reward you. Nothing much. Just a token of gratitude.");
			#:: Ding!
			quest::ding();
			#:: Set factions
			e.other:Faction(341,100); -- Priest of Life
			e.other:Faction(280,30); -- Knight of Thunder
			e.other:Faction(262,50); -- Guards of Qeynos
			e.other:Faction(221,-25); -- Bloodsabers
			e.other:Faction(219,15); -- Antonius Bayle
			e.other:SummonItem(eq.ChooseRandom(13297,13296));
			1plat, 3g reward
			#:: Grant a small amount of experience
			quest::exp(400);
		end
	end	
