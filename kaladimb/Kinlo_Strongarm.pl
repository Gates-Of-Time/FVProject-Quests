sub EVENT_SPAWN {
	#:: Create a timer '1' that triggers in 2700 seconds (45 min)
	quest::settimer(1,2700);
}

sub EVENT_TIMER {
	quest::say("Mud, rock, crystals, gems, metal. Arrrrrr!");
}

sub EVENT_SAY {
	#:: Match if faction is Indifferent or better
	if ($faction <= 5) {
		if ($text=~/mud/i) {
			quest::say("Eh? Oh, the clay. Arrr. Lots o' that mud round 'ere. Mostly, a good dwarf not be needin' somethin' so soft 'n squishy but the womenfolk, you know, the elves come lookin' fer it. If ye be one o' those pansy elves wantin' some mud fer workin' into fairy statues, flashy trinkets, 'n pig sticker arrers then I can get it for ye. Course I'd be lowerin' meself, a good dwarf, ta be diggin' that kinda mush outta the ground, but I can do it fer ya.");
		}
		if ($text=~/do it for me/i) {
			quest::say("Arrr. Shaddap. I ain't doin' it til ya bring me somethin'. A fee, I guess ye'd call it, fer lowerin' meself ta elf woman work. Go get me a good strong axe and I'll do it fer ye. Mebbe somethin' with a good tinted polish on it. I got plenty o' axes but no tinted ones. Har har! Colored axe. Somethin' to go with the color left on the blade after I be crackin open a gobbo head.");
		}
		if ($text=~/ancient longsword/i) {
			quest::say("The ancient smiths, for what I think yer askin' about, ain't been around fer a long time, laddy. Last anyone heard o' the ancients was 'fore my time even. There be more than a few tales about 'em.");
		}
		if ($text=~/tales/i) {
			quest::say("There be some who talk about how the ancient smiths went down to work fer the Duke o' Below, sayin' he be needin' some fine dwarven smiths fer makin' some castle or some such. There be tales that the ancients were so good at smithin' that the Duke took 'em down and made 'em head smiths over his minions. There's even tales that some o' the smiths' souls were trapped in their hammers, stuck there by some necromancer or somethin', as punishment or retribution.");
		}
		if ($text=~/trapped in their hammers/i) {
			quest::say("Aye. Some says their souls were bound into their hammers by an Erudite necromancer and enchanter. They say they used the power of the hammers ta profit by makin' ships, boats, and houses better than any other merchants. Sad tale, if'n it be true.");
		}
		if ($text=~/necromancer and enchanter/i) {
			quest::say("I'm not knowin' more about the story, lad. Everythin' I know is already in what I said. Aye, Erudites. I suppose if yer wantin' ta run after shortbeard tales ya can look over on that plague island they call Odus.");
		}
		if (($text=~/rock/i) || ($text=~/gem/i) || ($text=~/metal/i)) {
			quest::say("Aye, good stuff ta be workin' with.");
		}
		if ($text=~/arrrr/i) {
			quest::say("Har, har!  Ooooo!  Arrrrrr!");
		}
	}
	else {
		quest::emote("will not speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Indifferent or better
	if ($faction <= 5) {
		#:: Match a 5664 - Jade Reaver
		if (plugin::takeItems(5664 => 1)) {
			quest::say("Arrrrr. Ooooo. Arrrrrr... Yah, now that's what I be callin' a good lookin' axe. I be crackin' a few skulls with this one. Oh, here's yer block o' mud. Our priests o' Brell use the mud pit fer relievin' themselves after really hard ale blessin' ceremonies, so ya ain't got ta be enchantin' it in holy water or anythin' cause they already have. Har har!");
			#:: Give a 20455 - Enchanted Clay
			quest::summonitem(20455);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 20478 - Soulbound Hammer
		elsif (plugin::takeItems(20478 => 1)) {
			quest::emote("examines the hammer respectfully, admiring its craftsmanship. He strikes it against his anvil and winces as a howl fills the air. 'This is one of the ancients' hammers? I can almost, well, almost hear it callin ta me. It's strong, that's fer sure, lad. I don't know how ye got it, but aye, a dwarf could make a mighty blade with this. It's lookin like this thing still has its owner inside it though. I'm not knowin how, and not wantin to know, but fer yer own good ye better find some way ta get 'im out.'");
			#:: Give a 20478 - Soulbound Hammer
			quest::summonitem(20478);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 20485 - Hammer of the Ancients
		elsif (plugin::takeItems(20485 => 1)) {
			quest::emote("looks at the hammer and nods once before slamming the head against his anvil, and shattering the head. In a cloud of dust, another dwarf appears from the cloud and tosses you a hunk of metal. Kinlo stares in awe.");
			#:: Give a 20482 - Small bit of Mithril Ore
			quest::summonitem(20482);
			#:: Ding!
			quest::ding();
			#:: Spawn a North Kaladim >> Usbak_the_Old (67089), without grid or guild war, at the given location
			quest::spawn2(67089,0,0,-189.5,346.8,1.8,34.5);
		}
		#:: Match a 20482 - Small bit of Mithril Ore
		elsif (plugin::takeItems(20482 => 1)) {
			quest::say("Erm. Well, I ain't never worked with this stuff but here's what I got for ya. It ain't bad, pretty much like the one ye got there. I suppose ye should take the one the ancient made and show it ta yer friend.");
			#:: Give a 20483 - Refined Mithril Blade
			quest::summonitem(20483);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::emote("will not take this item.");
		}
	}
	else {
		quest::emote("will not accept any items from you, yet.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}