sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Come forward and speak.  What is it you seek within these walls?  Let it be the knowledge of wizardry, for that is what we are.  Only a [" . quest::saylink("servant of wizardry") . "] should be within these walls.");
	}
	if ($text=~/servant of wizardry/i) {
		quest::say("A servant. you say?  If you be a young apprentice, perhaps you might assist me? I could use you to [" . quest::saylink("collect components") . "].  If you believe yourself to be beyond such things, you may wish to assist me with a [" . quest::saylink("special matter") . "].");
	}
	if ($text=~/collect components/i) {
		quest::say("Of course you may assist me!! We have much need of a certain item which can only be found in the frigid peaks of Everfrost. There you shall find creatures called ice goblins. Take this bag and fill it with ice goblin beads and be sure to combine them before you return them. Well, then... Off with you!! And be quick about it and I shall give you a fine wizard's weapon. None of this rust-covered garbage offered by our associates!");
		#:: Give item 17944 - Empty Bag (*Bag for Ice Necklaces)
		quest::summonitem(17944);
	}
	if ($text=~/special matter/i) {
		quest::say("An old friend of mine cannot rest till he his research is finished.  If I only knew what he was working on. Go to the forest of Toxxulia and seek him out. Bring me back what information you can find about what he was researching before his demise.");
	}
}
				
sub EVENT_ITEM {
	#:: Match turn in for 13898 - Bag of Ice Necklaces
	if (plugin::check_handin(\%itemcount, 13898 => 1)) {
		quest::say("Well done, my young apprentice. I call you apprentice for you are nothing but a spark to my fire. This is the final component for my greatest creation. AHA!! I call it - iced tea!! Never again shall I boil under the hot sun. As for you, take this. It should serve you well. Now go away. There is no iced tea for you");
		#:: Give item 12208 - Servant's Staff
		quest::summonitem(12208);
		#:: Give a small amount of coin
		quest::givecash(0,7,0,0);
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(60,10);		#:: + Crimson Hands
		quest::faction(145,10);		#:: + High Council of Erudin
		quest::faction(143,-30);	#:: - Heretics
		quest::faction(147,10);		#:: + High Guard of Erudin							
	}
	#:: Match turn in for 12207 - Half of a Spell
	if (plugin::check_handin(\%itemcount, 12207 => 1)) {
		quest::say("Go now and use his research to aid yourself. Seems that I lack the will to use Ilanic's knowledge for my better good.");
		#:: Give item 15380 - Spell: Column of Frost
		quest::summonitem(15380);
		#:: Give a small amount of coin
		quest::givecash(0,7,0,0);
		#:: Give a small amount of xp
		quest::exp(1000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(60,10);		#:: + Crimson Hands
		quest::faction(145,10);		#:: + High Council of Erudin
		quest::faction(143,-30);	#:: - Heretics
		quest::faction(147,10);		#:: + High Guard of Erudin							
	}
	plugin::return_items(\%itemcount);
}
