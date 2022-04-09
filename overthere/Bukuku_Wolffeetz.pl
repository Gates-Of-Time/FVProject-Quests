sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Har har har! Yu funy lukking. Oooo.. do u hav doze [smarty writin's]?");
	}
	elsif ($text=~/smarty writin/i) {
		quest::say("Me not know what dem ar for shure. Dem only hav dees names. Umm.. let me see if I can member dem. Taaalisman de umm.. Jasinth. Dat's one of dem. Spirited of Scaley?? OH!! Dis my favorite. Kripple. Den the last is the painful one. Canaabaalize canaabaalize canaabaalize. Yep, dat super duper one. Bring me bak one of dem, me trade.");
	}
}

sub EVENT_ITEM {
	#:: Match a 19269 - Spell: Cripple
	if (plugin::takeItems(19269 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19238 - Spell: Spirit of Scale
	elsif (plugin::takeItems(19238 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19264 - Spell: Talisman of Jasinth
	elsif (plugin::takeItems(19264 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19272 - Spell: Cannibalize III
	elsif (plugin::takeItems(19272 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
