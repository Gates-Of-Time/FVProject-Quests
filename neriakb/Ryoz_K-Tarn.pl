sub EVENT_SAY {
	if ($text=~/hail/i) {
		#:: Text taken from quest response when task is active
		quest::say("Time grows short and my patience grows thin. Get back on task or you will regret it.");
	}
#:: Quest Dialogue from Illusion Guktan quest:  https://everquest.allakhazam.com/db/quest.html?quest=2651
#:: 	if ($text=~/hail/i) {
#:: 		quest::say("Hm, I don't recognize you, but perhaps you are one that has come to help me exact [revenge]?");
#:: 	}
#:: 	elsif ($text=~/revenge/i) {
#:: 		quest::say("Yes, yes! Revenge is what I yearn. I want blood, amphibious blood, in the name of my brother who was killed many moons ago a [slimy swamp dweller]");
#:: 	}
#:: 	elsif ($text=~/slimy swamp dweller/i) {
#:: 		quest::say("You imbecile! Can you not tell by my words that he was killed by the webbed hands of a [froglok!]");
#:: 	}
#:: 	elsif ($text=~/froglok/i) {
#:: 		quest::say("The froglok I want to see dead is Dar Strategist Guib, a cherished froglok in that old troll city. He was in an elite troop of frogloks patrolling the Deserts of Ro during the invasion of Grobb. My brother was part of a small unit of Teir'dal tasked with assessing the capabilities of the Guktans for our king and queen. This Guktan discovered my brother's unit and attacked them. Most fled, but my brother was left behind to die. I need to exact my revenge, and I need to [assassinate] this foul froglok.");
#:: 	}
#:: 	elsif ($text=~/assassinate/i) {
#:: 		quest::say("I don't know. Perhaps you should speak to someone who does things like that for a living, like one of our local assassins. Come back and see me when you have found a way to kill it. Now quit pestering me before I grow angry!");
#:: 	}
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
#:: Quest turn-in for Illusion Guktan quest:  https://everquest.allakhazam.com/db/quest.html?quest=2651
#::	if (plugin::takeItems(67001 =>1 )) {
#::		quest::say("You've done it! I'd thank the gods if I believed in them. Take this stone and it will allow you to travel amongst their ranks as one of them. Once you have infiltrated their city give this poisoned ale to Dar Strategist Guib. When the trolls hear of the strategist's death perhaps we can persuade them to leave our city and reclaim theirs. The stone will only work once so use it wisely. If you somehow make a mistake in using it return it to me and I will imbue it once again.");
#::		#:: Give a 67008 - Froglok Stone
#::		quest::summonitem(67008);
#::		#:: Give a 67010 - Mug of Poisoned Ale
#::		quest::summonitem(67010);
#::	}
#::	elsif (plugin::takeItems(67009 =>1 )) {
#::		quest::say("EXCELLENT! This is the best news I've received since those dirty trolls moved in. You have done so well, I may have use for you in the future. For now, I will grant you a spell from my personal library.");
#::		#:: Give a 67011 - Spell: Illusion Guktan
#::		quest::summonitem(67011);
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
