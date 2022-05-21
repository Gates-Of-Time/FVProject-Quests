sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, my name is Phin. Practice, practice, practice.. That's my motto. It is my responsibility to train our members, and help them to advance their skills and abilities. I also reward our members with colored [headbands] for completing certain tasks.");
	}
	elsif ($text=~/headbands/i) {
		quest::say("Yes, I give the [White], [Yellow], and [Orange] Headbands to our newer members, and Togahn gives out Red, Purple, and Blue Headbands to our elder members.");
	}
	elsif ($text=~/tomer/i) {
		quest::say("Tomer? I think Seta needs someone to go find him... Go ask her.");
	}
	elsif ($text=~/white/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("That is our training headband.. Beginning students can earn this by slaying four [gnoll] pups, and bringing their scalps back to me.");
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
		}
	}
	elsif ($text=~/gnoll/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Those vile creatures are constantly attacking our city.. and often killing innocent citizens. It is our duty to help defend Qeynos from their vicious raids.");
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
		}
	}
	elsif ($text=~/yellow/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			#:: Removed quest text indicator on "training headband" as no response exists
			quest::say("This is awarded to our students for helping clear out the evil that inhabits the old ruins of the Qeynos Hills. Just bring me back three putrid rib bones as proof of your good deeds and turn in your training headband, and then I will give you the yellow headband.");
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
		}
	}
	elsif ($text=~/orange/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			#:: Removed quest text indicator on "yellow headband" as no response exists
			quest::say("This is a difficult award to obtain. The city of Qeynos is, as you know, under constant attack by the gnolls of Blackburrow. The Silent Fist Clan rewards its members who venture deep into this gnoll stronghold and bring swift justice to these vile creatures. Please return two Blackburrow gnoll pelts - make sure they aren't ruined - and a Blackburrow gnoll skin as proof of your noble actions. Also, turn in your yellow headband, and then I shall give you the orange one. Good luck.");
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
		}
	}
	elsif ($text=~/black/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("The black headband is one of the highest honors of the Silent Fist Clan.  Only [Lu'Sun] gives those out.");
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
		}
	}
	elsif ($text=~/(lusun|lu'sun)/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Ahhh, Lu'Sun is a master of many skills.  He has traveled all of Norrath, studying various techniques and disciplines.  Now, he runs this small guild and passes on his knowledge to those willing to devote their lives to our cause.");
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
		}
	}
	elsif ($text=~/konem/i) {
		quest::say("Ah yes, Konem. I had him run an errand out to Surefall Glade over two days ago, and he still hasn't returned. Knowing Konem, he probably found a nice shady tree to take a nap under. If you happen to pass by him, could you please take him this note? Thanks, $name, and be safe.");
		#:: Give a 18921 - Message to Konem
		quest::summonitem(18921);
	}
	
}

sub EVENT_ITEM {
	#:: Match four 13789 - Gnoll Pup Scalp
	if (plugin::takeItems(13789 => 4)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Good job, $name, keep up the good work! Here is your white training headband. Wear it with honor, and make Lu'Sun proud.");
			#:: Give a 10110 - White Headband
			quest::summonitem(10110);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(309, 25);		#:: + Silent Fist Clan
			quest::faction(262, 3);			#:: + Guards of Qeynos
			quest::faction(361, 1);			#:: + Ashen Order
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
			#:: Return four 13789 - Gnoll Pup Scalp
			quest::summonitem(13789, 4);
		}
	}
	#:: Match three 13722 - Putrid Rib Bone and one 10110 - White Headband
	elsif (plugin::takeItems(13722 => 3, 10110 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Good work.. and, as promised, here is your reward. It is an honor to present this yellow headband to $name, for recent acts of courage and heroism, on behalf of the Silent Fist Clan.");
			#:: Give a 10111 - Yellow Headband
			quest::summonitem(10111);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(309, 50);		#:: + Silent Fist Clan
			quest::faction(262, 7);			#:: + Guards of Qeynos
			quest::faction(361, 2);			#:: + Ashen Order
			#:: Grant a small amount of experience
			quest::exp(200);
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
			#:: Return three 13722 - Putrid Rib Bone and one 10110 - White Headband
			quest::summonitem(13722);
			quest::summonitem(13722);
			quest::summonitem(13722);
			quest::summonitem(10110);
		}
	}
	#:: Match two 13027 - Blackburrow Gnoll Pelt, one 13028 - Blackburrow Gnoll Skin, and one 10111 - Yellow Headband
	elsif (plugin::takeItems(13027 => 2, 13028 => 1, 10111 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("It is an honor to present the orange headband of the Silent Fist Clan to one of our finest members, $name the mighty!");
			#:: Give a 10112 - Orange Headband
			quest::summonitem(10112);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(309, 50);		#:: + Silent Fist Clan
			quest::faction(262, 7);			#:: + Guards of Qeynos
			quest::faction(361, 2);			#:: + Ashen Order
			#:: Grant a small amount of experience
			quest::exp(300);
		}
		else {
			quest::say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Silent Fist. But, I feel that such a vital matter should be left to one of our more trusted members.");
			#:: Return two 13027 - Blackburrow Gnoll Pelt, one 13028 - Blackburrow Gnoll Skin, and one 10111 - Yellow Headband
			quest::summonitem(13027);
			quest::summonitem(13027);
			quest::summonitem(13028);
			quest::summonitem(10111);
		}
	}
	#:: Match a 18922 - Grathin's Invoice
	elsif (plugin::takeItems(18922 => 1)) {
		quest::say("Oh this is not good. Too many inoccent traders have been getting robbed lately by those vile bandits out in the Karanas. Something must be done soon. Anyway, thank you for delivering the message... you did very well, young $name. Here's a little something to quench your thirst from all that running around.");
		#:: Give a 13006 - Water Flask
		quest::summonitem(13006);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(309, 5);				#:: + Silent Fist Clan
		quest::faction(262, 1);				#:: + Guards of Qeynos
		quest::faction(361, 1);				#:: + Ashen Order
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
