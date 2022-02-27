sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What is it you seek within the tower? Could it be that you are a new apprentice? If so, you are required to don the [apprentice skullcap].");  
	}
	elsif ($text=~/apprentice/i) {
		quest::say("All new members of the Brood of Kotiz are required to don the [apprentice skullcap]. To earn one, a new apprentice is required to fetch four brains for further experiments. Not just any four brains, mind you, but the brains of [sarnak] hatchlings.");
	} 
	elsif ($text=~/sarnak/i) {
		quest::say("Sarnak ? Do not speak loudly, that name. If you seek information on the sarnak, read the tome of this tower. The tower librarian should be found within.");  
	}
 	elsif ($text=~/second rank skullcap/i) {
		quest::say("Looking for the second rank skullcap ? Look no further, but be prepared to earn it. I seek a [faded tapestry]. Now, too, so do you.");
	}
	elsif ($text=~/faded tapestry/i) {
		quest::say("I have heard reports of such a thing found upon Sarnak hatchlings. They must have scampered from the safety of their dwelling with their master's property. I would like to see this tapestry, but only when it has been mended. I need find a necromancer who is [adept at tailoring]."); 
	}
	elsif ($text=~/adept at tailoring/i) {
		quest::say("If you are a member of the Brood and wish to assist you may seek out this tapestry. Find the Torn and Ripped pieces and take them both to a sewing kit. Return with the mended tapestry and your first rank skullcap and I shall see that you are rewarded with coin and a second rank skullcap");
	}
}

sub EVENT_ITEM {
	#:: Match four 12408 - Sarnak Hatchling Brain
	if (plugin::takeItems(12408 => 4)) {
		quest::say("Good work, my young apprentice. You will make a fine addition to our ranks. Here is your first apprentice skullcap. Wear it as a sign of our circle. Do not lose it. Someday you shall wear a necromancer skullcap, but next shall come the [second rank skullcap].");
		#:: Give a 4260 - Apprentice Skullcap - 1st Rank
		quest::summonitem(4260);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 2);		#:: + Brood of Kotiz
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match three 12408 - Sarnak Hatchling Brain
	elsif (plugin::takeItems(12408 => 3)) {
		quest::say("I will require four sarnak whelp brains for my experiment.  When I have them, then you shall have the skullcap of apprentice, first circle.");
		#:: Give three 12408 - Sarnak Hatchling Brain
		quest::summonitem(12408);
		quest::summonitem(12408);
		quest::summonitem(12408);
	}
	#:: Match two 12408 - Sarnak Hatchling Brain
	elsif (plugin::takeItems(12408 => 2)) {
		quest::say("I will require four sarnak whelp brains for my experiment.  When I have them, then you shall have the skullcap of apprentice, first circle.");
		#:: Give two 12408 - Sarnak Hatchling Brain
		quest::summonitem(12408);
		quest::summonitem(12408);
	}
	#:: Match one 12408 - Sarnak Hatchling Brain
	elsif (plugin::takeItems(12408 => 1)) {
		quest::say("I will require four sarnak whelp brains for my experiment.  When I have them, then you shall have the skullcap of apprentice, first circle.");
		#:: Give a 12408 - Sarnak Hatchling Brain
		quest::summonitem(12408);
	}
	#:: Match a 4260 - Apprentice Skullcap - 1st Rank and a 18208 - Mended Tapestry
	elsif (plugin::takeItems(4260 => 1, 18208 => 1)) {
		quest::say("A job well done, apprentice $name. Your fine service shall earn you the second circle apprentice skullcap. I would advise you to forget this tapestry, it is nothing more than an ancient rug of no importance.");
		#:: Give a 4261 - Apprentice Skullcap - 2nd Rank
		quest::summonitem(4261);
		quest::faction(443, 10);		#:: + Brood of Kotiz
		quest::faction(441, 2);			#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(120);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 4260 - Apprentice Skullcap - 1st Rank
	elsif (plugin::takeItems(4260 => 1)) {
		quest::say("I must have the mended tapestry and your first circle apprentice cap before I reward you.");
		#:: Give a 4260 - Apprentice Skullcap - 1st Rank
		quest::summonitem(4260);
	}
	#:: Match a 18208 - Mended Tapestry
	elsif (plugin::takeItems(18208 => 1)) {
		quest::say("I must have the mended tapestry and your first circle apprentice cap before I reward you.");
		#:: Give a 18208 - Mended Tapestry
		quest::summonitem(18208);
	}
	#:: Match a 14793 - Illegible Note: Greaves
	elsif (plugin::takeItems(14793 => 1)) {
		quest::emote("snatches the paper from your hand and hisses in anger. Without even looking at the paper he growls. 'WHAT?! What is this tra...'  He stares down at the paper, mouth hanging open wide in disbelief. He finally continues, saying, 'Very well, then. If you wish to know confidence I have a task for you. Our hated enemies, the sarnak, have a tome we have sought to return to our libraries for centuries. At this point, we believe it to be found in a small fortress they maintain near the Great Lake. One of their scholars will most likely have it on their person. Bring it to me along with two star rubies.'");
	}
	#:: Match a 14811 - Iron Bound Tome, and two 10032 - Star Ruby
	elsif (plugin::takeItems(14811 => 1, 10032 => 2)) {
		#:: Appears to contain an error with 'Glosk', confirmed on live.
		quest::say("AH HAH!  It is found!  Our beloved tome is ba... oh, I suppose you'd like your reference.  Here you are.  Now leave us, Legionnaire.' Glosk then wheels around cackling gleefully, clutching the book to his chest.");
		#:: Give a 14831 - Glosk's Reference: Greaves
		quest::summonitem(14831);
		#:: Ding!
		quest::ding();
		#:: No FEC.
	}
	#:: Match a 14811 - Iron Bound Tome
	elsif (plugin::takeItems(14811 => 1)) {
		quest::say("Do not bother me unless you have all that I asked for, grunt.  Two star rubies AND the book!  Now get OUT of here!");
		#:: Give a 14811 - Iron Bound Tome
		quest::summonitem(14811);
	}
	#:: Match two 10032 - Star Ruby
	elsif (plugin::takeItems(10032 => 2)) {
		quest::say("Do not bother me unless you have all that I asked for, grunt.  Two star rubies AND the book!  Now get OUT of here!");
		#:: Give two 10032 - Star Ruby
		quest::summonitem(10032);
		quest::summonitem(10032);
	}
	elsif (plugin::takeItems(10032 => 1)) {
		quest::say("Do not bother me unless you have all that I asked for, grunt.  Two star rubies AND the book!  Now get OUT of here!");
		#:: Give one 10032 - Star Ruby
		quest::summonitem(10032);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
