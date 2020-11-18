sub EVENT_SAY {
	if ($text=~/hail/i) {
 		quest::emote("casts an icy glare at you and says 'I, Zanotix Ixtaz, am the greatest weaponsmith in all of Neriak. Have you disturbed me to purchase one of my superior products or have you come to learn the art of crafting [indigo sabres]? '");
	}
	elsif ($text=~/indigo sabres/i) {
		quest::say("Indigo sabres are the weapons of choice for true swordsmen. They are constructed of the finest adamantite and can only be crafted in our unique Teir'Dal forge. In order to successfully craft an indigo sabre. you will require a curved blade mold. Neriak nectar. a folded sheet of adamantite. and a mold for the hilt and pommel. If you are a faithful follower of our Lord of Hate then you may be interested in crafting an imbued indigo sabre. You will need to temper the sword with shadow temper instead of Neriak nectar. and will have to forge a sapphire that has been imbued by a cleric into the sword at the time of its creation.");
	}
	elsif ($text=~/blue flame/i) {
		quest::emote("gazes at you for many breaths, studying your eyes before looking back at his forge and saying, 'The Blue Flame. This is what allows us to forge our ancestral armor and weapons of adamantite. That and my unmatched skill that is. Many souls were [ritually] sacrificed to spark the flame that now feeds off the constant flow of hatred and envy of the victims . Some call it the Flame of Vengence.' Zanotix stares into the flames, poking at it absently.");
	}
	elsif ($text=~/ritual/i) {
		quest::say("The Ritual? Well I was young when it took place. I don't really remember. I've had so much on my mind lately, what with all these new taxes. For instance, I need to come up with an extra 75 pieces of platinum just to cover the forge tax. I don't know what I'm going to do.....*cough*.");
	}
	elsif ($text=~/who.*king/i) {
		quest::say("The mighty empire of the Teir'Dal is ruled by King Naythox Thex.  All hail Thex!");
	}
	elsif ($text=~/who.*the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/where.*lodge of the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/who.*queen cristanos/i) {
		quest::say("Queen Cristanos is the queen of Neriak, of course!  She was the one who formed the necromancers and shadowknights into the guild called the Dead.");
	}
	elsif ($text=~/what.*indigo brotherhood/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*cauldron of hate/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*commons quarter/i) {
		quest::say("You are in the Commons Quarter.  This quarter is designated for all common Teir'Dal.  You can find an abundance of merchants as well as the arena and warriors guild here.");
	}
	elsif ($text=~/what.*warriors guild/i) {
		quest::say("Within this area you will find the Cauldron of Hate which is home to the Teir'Dal warriors.");
	}
}

sub EVENT_ITEM {
	#:: Match 75pp
	if (plugin::takePlatinum(75)) {
		#:: Key a data bucket
		$key = $client->CharacterID() . "-Zanotix-cool-down";
		#:: Match if the data bucket does not exist
		if (!quest::get_data($key)) {
			quest::emote("quickly pockets the coins and says, 'Go see the Librarian, Nallar. Tell him Denouncer Ixtaz sent you. Do not return here for at least 3 days, now go, $race.");
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience, based on level
			$client->AddLevelBasedExp(1, 30);
			#:: Set the data bucket with a value of '1' that expires in 12960 seconds (3 in-game days)
			quest::set_data($key, 1, 12960);
		}
		else {
			#:: Return coin
			quest::givecash(0, 0, 0, 75);
		}
  	}
	#:: Match a 1890 - Vial of Noble's Blood
	elsif (plugin::takeItems(1890 => 1)) {
		quest::emote("accepts the vial and looks you over, eyebrow raised. He says, 'Well, a sacrifice to feed my forge. You have done Neriak a great service, Citizen $name. I shall burn it now.' He then holds the vial up the the flames, the blood seems to glow brightly as he stares into it. Then suddenly, with the shout of an arcane phrase, he throws the vial violently into the flame. The force shatters the vial, spilling the blood about the flames. Almost immediately the flames flare up to the ceiling. When they die down a presence is felt within the flames.");
		#:: Spawn a Neriak - Commons >> vengeful_spirit (41106), no grid or guildwar, at the specified coordinates
		quest::spawn2(41106, 0, 0, -867, 70, -35, 510);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
