sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You dare to intrude upon the presence of a Lord of Pain?!  Such foolish acts can only be those of a knight in training.  Are you a [knight in training]?");
	}
	elsif ($text=~/knight in training/i) {
		quest::say("If you are a pawn, then let us begin with a simple test.  Complete the test and you shall be rewarded with a new khukri.  Do you [wish to perform the test of a pawn]?");
	}
	elsif ($text=~/test of a pawn/i) {
		quest::say("You shall carry this pack.  Within it you shall combine 4 sarnak hatchling heads. When you have the full sarnak head pack then you shall return it to me along with your pawn's khukri and I shall reward you with the khukri of a knave. Beware, for the sarnak are our most hated foes and even their whelps are quite formidable fighters. Be sure to seek out Klok Mugruk. He may have some curscale armor available.");
		#:: Give a 17017 - Sarnak Head Pack
		quest::summonitem(17017);
	}
	elsif ($text=~/greater concern/i) {
		quest::say("A tome has been taken from us. An expeditionary unit was returning to Cabilis when they were overtaken by a band of froglok raiders. The odds were greatly in their favor, but our forces would soon cut them down. Then, as abruptly as the battle began, it came to an end. The frogs retreated. The only item they took was an ancient tome entitled 'The Origins of Pain'. What the frogs want with it is unknown to us. Will you [retrieve the tome]?");
	}
	elsif ($text=~/retrieve the tome/i) {
		quest::say("The tome ripped open in battle. There were but ten pages. This is one of those pages. You must find the remainder and the tome binder. Place the pages within the binder and once you combine them, the binder shall magically lock. Do not look upon the pages, for the words would bring a great madness upon you. Your task is simply to seek out the froglok raiders and return the magically locked tome to me. Return it with a knave's khukri and I shall give you a more powerful weapon.");
		#:: Give a 18229 - Page of a Tome
		quest::summonitem(18229);
	}
}

sub EVENT_ITEM {
	#:: Match a 12381 - Full Pack of Sarnak Heads, and a 5120 - Pawn's Khukri
	if (plugin::takeItems(12381 => 1, 5120 => 1)) {
		quest::say("You have learned to behead your opponents with great precision. Take the khukri of the knave. It shall prove most formidable in combat when wielded by a young crusader. You may now assist us with a [greater concern] than your training.");
		#:: Give a 5121 - Knave's Khukri
		quest::summonitem(5121);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 10);	#:: + Crusaders of Greenmist
		quest::faction(441, 2);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 50 to 150cp
		my %cash = plugin::RandomCash(50, 150);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12381 - Full Pack of Sarnak Heads
	elsif (plugin::takeItems(12381 => 1)) {
		quest::say("I instructed you to return the full sarnak head pack and also your pawn's khukri.");
		#:: Give a 12381 - Full Pack of Sarnak Heads
		quest::summonitem(12381);
	}
	#:: Match a 5120 - Pawn's Khukri
	elsif (plugin::takeItems(5120 => 1)) {
		quest::say("I instructed you to return the full sarnak head pack and also your pawn's khukri.");
		#:: Give a 5120 - Pawn's Khukri
		quest::summonitem(5120);
	}
	#:: Match a 12382 - Magically Locked Tome, and a 5121 - Knave's Khukri
	elsif (plugin::takeItems(12382 => 1, 5121 => 1)) {
		quest::say("You have done as instructed. You are wise to hand this tome to me. It could bring you nothing more than insanity. As your reward, you shall have the squire's khukri. Soon you shall wield the knight's khukri, but that is for another Lord of Pain to decide.");
		#:: Give a 5122 - Squire's Khukri
		quest::summonitem(5122);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 10);	#:: + Crusaders of Greenmist
		quest::faction(441, 2);		#:: + Legion of Cabilis	
		#:: Grant a small amount of experience
		quest::exp(300);
		#:: Create a hash for storing cash - 250 to 350cp
		my %cash = plugin::RandomCash(250, 350);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
 	#:: Match a 12382 - Magically Locked Tome
	elsif (plugin::takeItems(12382 => 1, 5121 => 1)) {
		quest::say("I shall keep this and you shall get no reward, unless you wield a knave's khukri. If so, then hand me that also and I shall give you a squire's khukri. A finer weapon to deal out pain.");
		#:: Give a 12382 - Magically Locked Tome
		quest::summonitem(12382);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
