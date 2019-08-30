##############################################################
# NPC:  Nicholas
# Zone:  Rathe Mountains
# Quest:  Boots of Ro, Chalice of Conquest
##############################################################

sub EVENT_SAY {
	if ($text=~/boots of ro/i) {
		#:: Check faction--amiable or better to get the quest
		if ($faction <= 4) {
			quest::say("If you desire the mold needed for smithing the Boots of Ro, then first, you shall prove your power. I have long sought an ancient holy weapon called the brazen brass kilij. I have heard rumors of detailed plans on how to make it, coming from Faydwer. Seek out the kilij plans. Bring them to me and you shall have the mold.");
		} else {
			quest::say("You and I must be brothers and serve the Lord of Underfoot. Go to Kaladim and serve her cathedral. When you think you are ready. then ask Lord Datur if you are an [honored member] of the temple. If the answer is yes, then I will trust you.");
		}
	}
	elsif ($text=~/chalice of conquest/i) {
		#:: Check faction--amiable or better to get the quest
		if ($faction > 4) {
			quest::say("How dare you approach a member of the Clerics of Underfoot?! Dogs such as you lie in the same bed as aviaks and ogres!!");
		} else {
			quest::say("You must be the one Sir Dru of Kaladim sent to retrieve the candlestick which was broken in the [" . quest::saylink("orc onslaught") . "]. I have only this piece in my possession as the other portion was taken by an [" . quest::saylink("odd druid") . "] of these mountains. Should you reclaim it, I am sure the maker of the candlestick can patch it together.");
			#:: Give a 12276 - Stem of Candlestick
			quest::summonitem(12276);
		}
	}
	elsif ($text=~/candle of bravery/i) {
		#:: Check faction--amiable or better to get the quest
		if ($faction > 4) {
			quest::say("How dare you approach a member of the Clerics of Underfoot?! Dogs such as you lie in the same bed as aviaks and ogres!!");
		} else {
			quest::say("You must be the one Sir Dru of Kaladim sent to retrieve the candlestick which was broken in the [" . quest::saylink("orc onslaught") . "]. I have only this piece in my possession as the other portion was taken by an [" . quest::saylink("odd druid") . "] of these mountains. Should you reclaim it, I am sure the maker of the candlestick can patch it together.");
			#:: Give a 12276 - Stem of Candlestick
			quest::summonitem(12276);
		}
	}
	elsif ($text=~/orc onslaught/i) {
		quest::say("The orcs attempted to take the hill, as they do on a frequent basis. We repelled them, of course, but a [" . quest::saylink("blue orc") . "] rushed off with the [" . quest::saylink("Chalice of Conquest") . "]. Where he came from, I do not know. He was no part of the battle!! I believe he just found an opportune moment to loot our camp.");
	}
	elsif ($text=~/blue orc/i) {
		quest::say("I had a visiting ranger track him to his camp near Lake Rathetear. I spied the camp and saw his lifeless body near two other blue orcs. Apparently, he must have taken a fatal blow, but had enough stamina to make it to his camp. I returned the following day with my fellow paladins and found the camp long gone. The ranger, who was still with us, found two sets of tracks leading away. We found [" . quest::saylink("orc remnants") . "].");
	}
	elsif ($text=~/orc remnants/i) {
		#:: Check faction--amiable or better to get the quest
		if ($faction > 4) {
			quest::say("How dare you approach a member of the Clerics of Underfoot?! Dogs such as you lie in the same bed as aviaks and ogres!!");
		} else {
			quest::say("Here. We found this worthless orc bracelet with the name Klunga on it. There was also an orc shovel and a bag of Cauldron prawns. We left them, of course. The camp has now been taken over by the green-skinned orcs. I would advise you to stay clear of this camp in Lake Rathe.");
			#:: Give a 12280 - Klunga's Bracelet
			quest::summonitem(12280);
		}
	}
	elsif ($text=~/odd druid/i) {
		quest::say("The mountains have been plagued not only by beasts, but by evil druids!! They attempt to force all men from this land. One has stolen the foot of the candlestick which holds the [" . quest::saylink("Candle of Bravery") . "]. I remember that battle cry of hers, 'Long live the green!!'.");
	}
}

sub EVENT_ITEM {
	#:: Check faction--amiable or better to get the quest.  Match for 12206 - Kilij Plans
	if (($faction <= 4) && (plugin::check_handin(\%itemcount,12206=>1))) {
		quest::say("Ahh!!  The kilij!!  The legend was true.  As for you..  the mold for the Boots of Ro.  Go and speak with Thomas for the final component.  Ask him of 'Lord Searfire'.  Brell be with you.");
		#:: Give a 12304 - Mold of the Boots of Ro
		quest::summonitem(12304);
		#:: Set Faction
		quest::faction(227,2);		# Clerics of Underfoot
		quest::faction(274,2);		# Kazon Stormhammer
		quest::faction(293,2);		# Miners guild 249
		quest::exp(100000);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

#END of FILE Zone:rathemtn  ID:50110 -- Nicholas
