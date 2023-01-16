#:: Skull 7 :  http://web.archive.org/web/20020513143710/http://www.championsofcabilis.com/skull7.html

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Leave me in peace $name, I have little desire for company now. The Faceless sends visions to me that may hold the fate of our race in sway.");
	}
#::	elsif ($text=~/visions/i) {
#::		#:: Match if faction is Amiable or better
#::		if ($faction <= 4) {
#::			quest::say("The spirits tell me of strange happenings around the ancient city of Charasis. None of the mystics that have been sent to investigate have returned. Something is surely happening in the ancient tombs of that city. I pray to our lord for some way to calm the tortured spirits of our fallen brothers that haunt the Howling Stones.");
#::		}
#::	}
#::	elsif ($text=~/dreams cloud your mind/i) {
#::		#:: Match if faction is Amiable or better
#::		if ($faction <= 4) {
#::			quest::say("I see much darkness...darkness and death. A void of life...the cold grip of death. An Ancient pact...with forces too terrible to describe...A great Leader...a fall, and a second coming. I see...a symbol of...an ancient city...Kaesora. I would begin there young Mystic. The spirits of that fallen city may hold a key to our future.");
#::		}
#::	}
}

sub EVENT_ITEM {
#::	#:: Match if player has a 5146 - Iron Cudgel of the Hierophant
#::	if (plugin::check_hasitem($client, 5146)) {
#::		#:: Match if faction is Amiable or better
#::		if ($faction <= 4) {
#::			#:: Match a 30984 - Dusty Iksar Skull
#::			if (plugin::takeItems(30984 => 1)) {
#::				quest::emote("peers at the skull intently. 'There is strange magic in this skull $name, whatever necromancer animated this skeleton was a powerful warlock indeed. I sense the power of several ancients in this relic. Take this skull to Oracle Qulin in the field of bone, he may be able to perform the ritual which will free this ancient's spirit from the mortal realm.'");
#::				#:: Return a 30984 - Dusty Iksar Skull
#::				quest::summonitem(30984);
#::				#:: Ding!
#::				quest::ding();
#::			}
#::			#:: Match a 30986 - Note to Granix
#::			elsif (plugin::takeItems(30986 => 1)) {
#::				quest::say("It is as I feared, the mark of the warlock has surely driven these ancient spirits mad. We can not allow these spirits to roam free in our world " .. e.other:GetCleanName() .. ". Take this case and place the glowing skulls of other ancients inside of it. Return it to me with your Cudgel of the Heirophant so that we may remove these cursed spirits from our world forcefully.");
#::				#:: Give a 17134 - Ornate Skull Case
#::				quest::summonitem(17134);
#::				#:: Ding!
#::				quest::ding();
#::			}
#::			#:: Match a 30988 - Filled Ornate Skull Case, and a 5146 - Iron Cudgel of the Hierophant
#::			elsif (plugin::takeItems(30988 => 1, 5146 => 1)) {
#::				quest::say("You have done well $name. Perhaps you can help clear these troubling dreams from my tired aging mind. Commune with the spirits of our Ancestors and learn from them. Never forget that the ultimate power comes from knowledge. The ancients are privy to much knowledge that mortals will never see. Should you be granted enlightenment from our ancestors, share your knowledge with me so that we may use this knowledge for the benefit of our brethren. I will continue to study the [dreams] that [cloud] my mind.");
#::				#:: Give a 5148 - SkyIron Cudgel of the Arisen
#::				quest::summonitem(5148);
#::				#:: Ding!
#::				quest::ding();
#::			}
#::		}
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
