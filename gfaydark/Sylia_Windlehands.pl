sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18783 - Tattered Note
	if (plugin::check_hasitem($client, 18783)) {
		$client->Message(15,"Sylia Windlehands, a beautiful elven bard addresses you. 'Welcome young one. I am Sylia Windlehands. I will start your training in the ways of the Bard. Read the note in your inventory and when you are ready to start training, hand it to me. Never underestimate the power of song, my friend and you will go far!'");
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Salutations! The Song Weavers are always glad to add a new voice to the choir.  In addition to your voice. will you also [fetch spiderling silk]?  We need some to replace our worn lute strings.  Carry out this task in high tempo and we will show our gratitude.");
	}
	elsif ($text=~/fetch spiderling silk/i) {
		quest::say("Very spirited of you!!  Gather four spiderling silk and return them to me.  Good hunting, my friend!!");
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
	#:: Match a 18783 - Tattered Note
	if (plugin::takeItems(18783 => 1)) {
		quest::say("Greetings. friend. I am Sylia.  I see that you wish to join our humble guild.  Good.  Here is a gift for you - your guild tunic.  Once you are ready to begin your training please make sure that you see Sarialiyn Tranquilsong, She can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instructd you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13534 - Faded Brown Tunic*
		quest::summonitem(13534);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(401, 100);	#:: + Song Weavers
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match four 13099 - Spiderling Silk
	elsif (plugin::takeItems(13099  => 4)) {
		quest::say("Splendid job! Now if you can just keep a tune, you'll be a fine bard.");
		#:: Give a 13000 - Hand Drum
		quest::summonitem(13000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(401, 1);		#:: + Song Weavers
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 90 to 110cp
		my %cash = plugin::RandomCash(40,60);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
