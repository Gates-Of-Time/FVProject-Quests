sub EVENT_SPAWN {
	#:: Set up a proximity, 100 units across and 50 units tall without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 25, $z + 25, 0);
}

sub EVENT_ENTER {
	#:: Match a 18785 - Tattered Note
	if (plugin::check_hasitem($client, 18785)) { 
		$client->Message(15,"Maesyn Trueshot strings his bow as you orient yourself amongst the treetop city of Kelethin. 'Greetings, young recruit. Should you wish to learn the ways of the Ranger, read the note in your inventory and hand it to me when you are ready to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		if ($class eq "Ranger") {
			quest::say("Welcome to Kelethin, $name! I am Maesyn Trueshot, commander of Faydark's Champions. We are the finest marksmen in all of Norrath. With our trusty [Trueshot longbows] we can miss no target regardless of the distance or the conditions.");
		}
		else {
			quest::say("Welcome to Kelethin, $name! I am Maesyn Trueshot, commander of Faydark's Champions. We are the finest marksmen in all of Norrath. With our trusty Trueshot longbows we can miss no target regardless of the distance or the conditions.");
		}
	}
	elsif ($text=~/trueshot longbows/i) {
		if ($class eq "Ranger") {
			quest::say("The Trueshot Longbow was created by my famed father, Eldin Trueshot. It is quite accurate and takes a ranger's skill to wield. We use our new recruits to [gather materials] needed by my father.  We shall soon begin to release the formula to good elves so all may fletch such a bow.");
		} 
		else {
			quest::say("The Trueshot Longbow was created by my famed father, Eldin Trueshot. It is quite accurate and takes a ranger's skill to wield.");
		}
	}
	elsif ($text=~/gather materials/i) {
		if ($class eq "Ranger") {
			#:: Match if faction is better than indifferent
			if ($faction < 4) {
				quest::say("Take this pack. Go to Kaladim, find Trantor Everhot and ask for dwarven wire. Then go to Freeport to meet Jyle Windshot. Search the inns for him and ask him for treant wood. Then, collect some spiderling silk from spiderlings and finally, in Steamfont, we have the permission of the gnomes to use any micro servos we find while destroying rogue spiders. Combine them all and return the pack to me.");
				#:: Give a 17951 - Material Pack
				quest::summonitem(17951);
			}
			else {
				quest::say("Faydark's Champions cannot call you foe, but you have yet to earn our trust.");
			}
		}
		else {
			#:: Do nothing
		}
	}
	elsif ($text=~/correct components/i) {
		if ($class eq "Ranger") {
			quest::say("Now that I have crafted the Treant Bow Staff, you shall need one Planing Tool, one Treant Bow Staff, one Micro Servo and one spool of Dwarven Wire. These items will be used with your Fletching Kit as all other bows. Be forewarned, only a Master Fletcher can create such a bow and even a master fails from time to time. Good Luck.");
		}
		else {
			#:: Do nothing
		}
	}
	elsif ($text=~/next incarnation/i) {
		if ($class eq "Ranger") {
			quest::say("The Trueshot Longbow was once enchanted by the Koada'Dal enchanters.  Once it was enchanted now it is no more.  I am sure if you were ask the Koada'Dal where the enchanted bows are, you will get an answer.");
		}
		else {
			#:: Do nothing
		}
	}
	elsif ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	elsif ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Match a 18785 - Tattered Note
	if (plugin::takeItems(18785 => 1)) {
		quest::say("Hail, $name, and welcome.. I am Maesyn Trueshot, leader of Faydark's Champions. I will teach and train you, as I have done for many others. Let's get started.. Here, put this on.. it'll help protect you from the elements. Once you are ready to begin your training please make sure that you see Samatansyn Flamecaller, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13536 - Dirty Green Tunic*
		quest::summonitem(13536);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(246, 100);		#:: + Faydark's Champions
		quest::faction(279, 25);		#:: + King Tearis Thex
		quest::faction(226, 25);		#:: + Clerics of Tunare
		quest::faction(310, 25);		#:: + Soldiers of Tunare
		quest::faction(234,-25);		#:: - Crushbone Orcs
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 12112 - Pack of Materials
	elsif (plugin::takeItems(12112 => 1)) {
		quest::say("I shall see that my father gets the materials. I hope this can be of use to you. It will serve as your starting point toward fletching a Trueshot longbow. It is unfortunate that we are unable to enchant the bow to its [next incarnation], but it is still a fine weapon. You do know the [correct components] needed for fletching such a bow, do you not?");
		#:: Give a 8091 - Treant Bow Staff
		quest::summonitem(8091);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(246, 25);		#:: + Faydark's Champions
		quest::faction(279, 6);			#:: + King Tearis Thex
		quest::faction(226, 6);			#:: + Clerics of Tunare
		quest::faction(310, 6);			#:: + Soldiers of Tunare
		quest::faction(234, -6);		#:: - Crushbone Orcs
		#:: Create a hash for storing cash - 500 to 700cp
		my %cash = plugin::RandomCash(500,700);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
  	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
