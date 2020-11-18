sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18755 - Tattered Note
	if (plugin::check_hasitem($client, 18755)) { 
		$client->Message(15,"A sly looking Dark Elf turns to address you. 'Come to me, young Wizard. I am Gath N'Mare. Read the note in your inventory and hand it to me so that you may begin on the path of the Wizard. True Power can be yours should you have the will to train hard enough!'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am Gath N`Mare. Read the note in your inventory and hand it to me so that you may begin on the path of the Wizard. True power can be yours should you have the will to train hard enough!");
	}
	elsif ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		quest::summonitem(51121);
	}
	elsif ($text=~/second book/i)	{
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		quest::summonitem(51122);
	}
	elsif ($text=~/who king/i) {
		quest::say("The mighty empire of the Teir'Dal is ruled by King Naythox Thex.  All hail Thex!");
	}
	elsif ($text=~/who the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/where lodge of the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/who queen cristanos/i) {
		quest::say("Queen Cristanos is the queen of Neriak, of course!  She was the one who formed the necromancers and shadowknights into the guild called the Dead.");
	}
	elsif ($text=~/what indigo brotherhood/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what cauldron of hate/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what commons quarter/i) {
		quest::say("You are in the Commons Quarter.  This quarter is designated for all common Teir'Dal.  You can find an abundance of merchants as well as the arena and warriors guild here.");
	}
	elsif ($text=~/what warriors guild/i) {
		quest::say("Within this area you will find the Cauldron of Hate which is home to the Teir'Dal warriors.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18755 - Tattered Note
	if (plugin::takeItems(18755 => 1)) {
		quest::say("I am Gath N'Mare, master wizard of the Tower of the Spurned. Welcome to our guild. Let's get started, shall we?  Here is your tunic, represent us well with it. Morgalanth Tal'Raeloen is our beginning guild trainer. He will teach you the basics and give you a solid learning foundation of magic. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13584 - Stained Red Robe*
		quest::summonitem(13584);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(363, 100); 	#:: + The Spurned
		quest::faction(239, -15);	#:: - The Dead
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
