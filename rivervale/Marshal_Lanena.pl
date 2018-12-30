sub EVENT_SAY {
	if ($text=~/hail/i) {
				quest::say("Hello. $name.  I am Lanena Wickystick. marshal of all Vale concerns.  If there are any troubles brewing in our fine town which concern the Guardians of the Vale. please inform me.  You must be a [" . quest::saylink("new deputy") . "] or are you an [" . quest::saylink("outsider") . "]?");
	}
	if ($text=~/new deputy/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("It is good to see such fine stock in the ranks of the Guardians.  Being new. there is much to learn. in battle and in life itself.  If you are not presently obligated. we have need of you here in the hollow.  There seems to be a [" . quest::saylink("small problem") . "].");
		}
		else {
			quest::say("You are not yet in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
		}
	}
	if ($text=~/outsider/i) {
			quest::say("Well. then!! You should not be in here.  This place is restricted to all outsiders.  You will leave at once!  Thank you and good day.");
		}
	if ($text=~/small problem/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("For months. Fiddy Bobick has petitioned the marshals to assist him with a problem he has.  With the addition of new deputies such as yourself. we can now give him the assistance he requires.  Just go down to Bobick's shop near the lake.  Tell him I sent you.");
		}
		else {
			quest::say("You are not yet in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
		}
	}
	if ($text=~/rantho rapier/i) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("The Rantho Rapier was crafted by the great blacksmith Rantho Goobler.  It was designed for use by the warriors of the wee folk.  With its light weight and special two-hand hilt, it becomes a formidable weapon in the hands of our younger deputies.  Only a [" . quest::saylink("new deputy") . "] has the right to earn one.");
		}
		else {
			quest::say("You are not yet in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
		}
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13870 - Piranha Tooth
	if (plugin::takeItems(13087 => 1 )) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("What was I thinking?!! Piranha are coming downstream and eating our supply of fish! We have never had a problem like this!!  Where are these little beasts coming from?  For now we must collect more. Take this bag. Collect enough teeth to fill the bag. Don't worry, if it takes a while I shall reward you with the [" . quest::saylink("Rantho Rapier") . "].  We will need to examine the teeth.");
			#:: Give item 17968 - Piranha Bag
			quest::summonitem(17968);
			#:: Give a small amount of xp
			quest::exp(200);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(133,10); 	#:: + Guardians of the Vale
			quest::faction(208,10); 	#:: + Mayor Gubbin
			quest::faction(316,10); 	#:: + Storm Reapers
			quest::faction(218,10); 	#:: + Merchants of Rivervale
			quest::faction(88,-10); 	#:: - Dreadguard Outer
			quest::givecash(0,1,0,0);	#:: Give a small amount of cash copper - plat
			}
		else {
			quest::say("You are not yet in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
			}
	}		
	#:: Turn in for 12155 - Bag of Piranha Teeth
	if (plugin::takeItems(12155 => 1 )) {
		#:: Match if faction is better than indifferent
		if ($faction < 5) {
			quest::say("Fine work. We shall continue to study these and shall determine if we need to seek the source.");
			#:: Give item 5423 - Rantho Rapier
			quest::summonitem(5423);
			#:: Give a small amount of xp
			quest::exp(200);
			#:: Ding!
			quest::ding();
			#:: Set faction
			quest::faction(133,10); 	#:: + Guardians of the Vale
			quest::faction(208,10); 	#:: + Mayor Gubbin
			quest::faction(316,10); 	#:: + Storm Reapers
			quest::faction(218,10); 	#:: + Merchants of Rivervale
			quest::faction(88,-10); 	#:: - Dreadguard Outer
			quest::givecash(0,1,0,0);	#:: Give a small amount of cash copper - plat
			}
		else {
			quest::say("You are not yet in good standing with the Guardians of the Vale. Continue with your good work and then we may speak.");
			}
	}		
#:: Return unused items
plugin::returnUnusedItems();
}
