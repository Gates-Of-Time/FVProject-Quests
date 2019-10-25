sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am Toala Nehron. You must be another young warrior aspiring to join the ranks of the Steel Warriors. We welcome all who would try. When you have time there is a friend of mine I would like you to check on.");
	}
	elsif ($text=~/opal/i) {
		quest::say("Opal Darkbriar is a little plague rat.  She has used her knowledge of arcane arts to charm Cain Darkmoore.  I know that is what happened.  Why else would he be in love with her?  He is a mighty warrior and she is nothing more than a sickly little librarian for the Academy of Arcane Science.  He must truly yearn for a bold hearted female warrior such as myself.  Not that I care, of course.");
	}
	elsif ($text=~/Cain Darkmoore/i) {
		quest::say("Cain Darkmoore is only the most handsome of warriors!  He is also the strongest and most bold.  He has slain the mightiest of fiends.  He is truly the manliest man around.  It is no wonder he is the guildmaster of the Steel Warriors.");
	}
	elsif($text=~/have time/i) {
		#:: Match if faction with Steel Warriors is better than Indifferent
		if ($faction < 5) {
		quest::say("I have A friend by the name of Lenka Stoutheart. She reported to me that her ship was broken into and someone stole a pouch of hers. Could you go look into it for me? Just tell her Toala sent you. Oh, and pay no mind to the walking mountain by her. That will only be Bronto, her navigator. Thanks friend.");
		}
		else {
		#:: Match if faction with Steel Warriors is Indifferent
			if ($faction == 5) {
			quest::say("The Steel Warriors have no cause to dislike you, but you have yet to prove your worth to this guild.");
			}
		else {	
			#:: Match if faction with Steel Warriors worse than Indifferent
			if ($faction > 5) {
			quest::say("Your head shall look grand mounted on the wall of the Steel Warriors Arena!!");
			}
			}
		}
	}
	
	elsif($text=~/Lenka Stoutheart/i) {
		#:: Match if faction with Steel Warriors is better than Indifferent
		if ($faction < 5) {
		quest::say("Lenka Stoutheart is an old friend of mine. I met her in my younger days when the Steel Warriors sent me to train in the ways of the Wolves of the North, the barbarian warriors of Halas. She is now an adventurer of great renown. She travels from continent to continent aboard her ship,the Blue Beast, her ship.");
		}
		else {
			#:: Match if faction with Steel Warriors is Indifferent
			if ($faction == 5) {
			quest::say("The Steel Warriors have no cause to dislike you, but you have yet to prove your worth to this guild.");
			}
		else {	
			#:: Match if faction with Steel Warriors worse than Indifferent
			if ($faction > 5) {
			quest::say("Your head shall look grand mounted on the wall of the Steel Warriors Arena!!");
			}
			}
		}
	}
}


sub EVENT_ITEM {
	#:: Turn in for 18814 - Sealed Letter
	if (plugin::takeItems(18814 => 1 )) {
		#:: Match if faction with Steel Warriors is better than Indifferent	
		if ($faction < 5) {
			quest::say("Why, that little trollop! What is she up to? Cain will never believe this! She must be in league with some faction of the dark elves, but why? Neither the Academy of Arcane Science nor Cain will believe this note. I will see what I can do. As for you, I command you to kill this Shintl and her dark elf courier Hollish!! Put their heads into this box and combine them. We shall cut the link. Bring me thier heads.");
			#:: Ding!
			quest::ding();
			#:: Give a small amount of xp
			quest::exp(2000);
			#:: Give item 17971 - Toala's Box for heads
			quest::summonitem(17971);
		}
		else {
			#:: Match if faction with Steel Warriors is Indifferent
			if ($faction == 5) {
			quest::say("The Steel Warriors have no cause to dislike you, but you have yet to prove your worth to this guild.");
			}
		else {	
			#:: Match if faction with Steel Warriors worse than Indifferent
			if ($faction > 5) {
			quest::say("Your head shall look grand mounted on the wall of the Steel Warriors Arena!!");
			}
			}
		}
	}
	#:: Turn in for 12246 - Box with Two heads
	if (plugin::takeItems(12246 => 1 )) {
		#:: Match if faction with Steel Warriors is better than Indifferent	
		if ($faction < 5) {
			quest::say("Good work!! We will soon catch Opal. I have started to formulate a plan to stop her. When I complete it, I shall notify you. Here. Take this small reward. I am sure killing Shintl was no trouble. She was just a halfling.");
			#:: Ding!
			quest::ding();
			#:: Give a small amount of xp
			quest::exp(2000);
			#:: Set faction
			quest::faction(311,5);	 	#:: + Steel Warriors
			quest::faction(262,5); 		#:: + Guards of Qeynos
			quest::faction(281,5); 		#:: + Knights of Truth
			quest::faction(230,-10); 	#:: - Corrupt Qeynos Guards
			quest::faction(330,-10); 	#:: - The Freeport Militia
			#:: Create a hash for storing cash - 10 to 20000cp
			my %cash = plugin::RandomCash(10,20000);
				#:: Grant a random cash reward
				quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			#:: Match if faction with Steel Warriors is Indifferent
			if ($faction == 5) {
			quest::say("The Steel Warriors have no cause to dislike you, but you have yet to prove your worth to this guild.");
			}
		else {	
			#:: Match if faction with Steel Warriors worse than Indifferent
			if ($faction > 5) {
			quest::say("Your head shall look grand mounted on the wall of the Steel Warriors Arena!!");
			}
			}
		}
	}
	#:: Turn in for 13814 - L.S. Pouch
	if (plugin::takeItems(13814 => 1 )) {
		#:: Match if faction with Steel Warriors is better than Indifferent	
		if ($faction < 5) {
			quest::say("You found my pouch! Thanks kid. Let me buy you A drink and this is for the good work. Hmmmm. It looks as though they took my voucher. Darn it! Hey... It looks like they were using my bag to hold items they were stealing. Here you go. You can have it. It looks like junk.");
			#:: Ding!
			quest::ding();
			#:: Give a small amount of xp
			quest::exp(1000);
			#:: Set faction
			quest::faction(320,3);	 	#:: + Wolves of the North
			quest::faction(327,2); 		#:: + Shamen of Justice
			quest::faction(328,2); 		#:: + Merchants of Halas
			quest::faction(311,-2); 	#:: - Steel Warriors
			#:: Create a hash for storing cash - 10 to 20000cp
			my %cash = plugin::RandomCash(10,5000);
				#:: Grant a random cash reward
				quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			#:: Match if faction with Steel Warriors is Indifferent
			if ($faction == 5) {
			quest::say("The Steel Warriors have no cause to dislike you, but you have yet to prove your worth to this guild.");
			}
		else {	
			#:: Match if faction with Steel Warriors worse than Indifferent
			if ($faction > 5) {
			quest::say("Your head shall look grand mounted on the wall of the Steel Warriors Arena!!");
			}
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
