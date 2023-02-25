sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to intelligence, young $name! Did you think all ogres were inept? Ha!! I hope you show the glimmer. We shamans need more within our ranks. Our race needs to evolve!! So, are you one of the [smart ogres], or have I spoken too many syllables?");
	}
	elsif ($text=~/syllables/i) {
		quest::say("As I thought. Perhaps you would fare better speaking with the Crakneks.");
	}
	elsif ($faction > 5) {
		quest::say("Knights! Come at once. There is a foe of the Greenbloods to deal with.");
	}
	elsif ($text=~/smart ogre/i) {
		quest::say("Well, I suppose your intelligence shall grow. You will have to do. I have a mission for you. First, go and speak with Grevak of the Greenblood Knights. He will have a job for you. After you have performed some manner of service and advanced at least 5 ranks, return to me and ask me about my [secret mission].");
	}
	elsif ($text=~/secret mission/i) {
		if ($ulevel < 5) {
			quest::say("You must advance your skills further, $name.  Come back when you are more prepared.");
		}
		else {
			quest::say("I have heard of your advancements. You are a fine addition to Oggok. I require your skill in handling a delicate matter. I want you to run out to the Bouncer's keep near the entrance to Oggok. There, you shall find a froglok named Glib. He will pose no threat to you. He has come on business and I have promised him protection. Tell him the Greenblood shaman sent you. He shall fill you in. Go at once.");
			#:: Spawn a Oggok >> Emissary_Glib (49127)
			quest::unique_spawn(49127,0,0,383,-205.3,66.1);
		}
	}
	elsif ($text=~/glib/i) {
		#:: dialogue made up.
		quest::say("Run out to the Bouncer's keep near the entrance to Oggok--he was last seen there.");
		#:: Spawn a Oggok >> Emissary_Glib (49127)
		quest::unique_spawn(49127,0,0,383,-205.3,66.1);
	}
}

sub EVENT_ITEM {
	if ($faction > 6) {
		quest::say("Knights come at once!  There is a foe of the Greenbloods to deal with.");
	}
	elsif ($faction > 5) {
		quest::say("There is much you must do to prove your loyalty to the cause of the Greenbloods.");
	}
	#:: Match a 18884 - Tattered Note
	elsif (plugin::takeItems(18884 => 1)) {
		quest::say("I see you finally decided to return. Hmmm. What is this? Those little hoppers have done well. What!! So the troll scum have been aiding our foes, the lizards!! The lizard mystics are trained by this troll shaman called Zimbittle. Find him!! Kill him. Bring me his shaman pouch!! Now!!");
		#:: Give a random reward: 15270 - Spell: Drowsy, 15226 - Spell: Endure Disease, 15279 - Spell: Spirit of Bear, 15211 - Spell: Summon Drink
		quest::summonitem(quest::ChooseRandom(15270,15226,15279,15211));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience based on level
		$client->AddLevelBasedExp(10,1);
		#:: Set faction
		quest::faction(394,20);		#:: + Shamen of War
	}
	#:: Match a 18885 - Tattered Cloth Note
	elsif (plugin::takeItems(18885 => 1)) {
		quest::say("What is this? More information? There seems to be a larger plan in the making. B'Dynn sounds like a Dark Elf name. I do not like the sound of this. You must go quickly to North Ro. Find this Dark Elf. Find out what he knows, any way you can.");
		#:: Give a random reward: 15270 - Spell: Drowsy, 15226 - Spell: Endure Disease, 15279 - Spell: Spirit of Bear, 15211 - Spell: Summon Drink
		quest::summonitem(quest::ChooseRandom(15270,15226,15279,15211));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience based on level
		$client->AddLevelBasedExp(10,1);
		#:: Set faction
		quest::faction(394,20);		#:: + Shamen of War
	}
	#:: Match a 17929 - Zimbittle's Pouch
	elsif (plugin::takeItems(17929 => 1)) {
		quest::say("Ahhh!! Good work. You are a bright one. Now let us see if you can master this spell. Learn it well and may it bring you much glory.");
		#:: Give a random reward: 15270 - Spell: Drowsy, 15226 - Spell: Endure Disease, 15279 - Spell: Spirit of Bear, 15211 - Spell: Summon Drink
		quest::summonitem(quest::ChooseRandom(15270,15226,15279,15211));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience based on level
		$client->AddLevelBasedExp(14,1);
		#:: Set faction
		quest::faction(394,20);		#:: + Shamen of War
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
