sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What is it you seek? Eternal suffering?");
	}
	elsif ($text=~/eternal suffering/i) {
		#:: Match a 5122 - Squire's Khukri
		if (plugin::check_hasitem($client, 5122)) {
			quest::say("Then follow the words of Cazic-Thule and may his blessed curses rain upon your soul as they shall on all of his faithful servants. Were you [sent] to me by Gikzic?");
		}
	}
	elsif ($text=~/sent/i) {
		#:: Match a 5122 - Squire's Khukri
		if (plugin::check_hasitem($client, 5122)) {
			quest::say("Then you must be the squire who found the ancient tome, 'The Origins of Pain'. I can use a talented crusader such as yourself. In my dreams, Cazic-Thule has spoken to me. He instructed me to seek out the 'Skull of Torture' which was last reported to be within the torture tower of the ancient Lord of Pain, Kurn. Will you [accept the calling]?");
		}
	}
	elsif ($text=~/accept the calling/i) {
		#:: Match a 5122 - Squire's Khukri
		if (plugin::check_hasitem($client, 5122)) {
			quest::say("As if you had a choice. Seek out the tower of Kurn and find the Skull of Torture. You should be able to easily recognize this skull as it glows with the power of Cazic Thule. Return it to me with your squire's khukri and I shall reward you with the knight's khukri. Go at once.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 12401 - Glowing Skull, and a 5122 - Squire's Khukri
	if (plugin::takeItems(12401 => 1, 5122 => 1)) {
		quest::say("Excellent work! You are no squire. You are now a knight of the crusaders. Your next step shall be zealot. And every zealot wields a magical khukri.");
		#:: Give a 5123 - Knight's Khukri
		quest::summonitem(5123);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(441, 1);		#:: + Legion of Cabilis
		#:: Grant a moderate amount of experience
		quest::exp(1500);
		#:: Create a hash for storing cash - 900 to 1500cp
		my %cash = plugin::RandomCash(900, 1500);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12401 - Glowing Skull
	elsif (plugin::takeItems(12401 => 1)) {
		quest::say("You will be rewarded with the knight's khukri when I have possession of your squire's khukri and the Skull of Torture.");
		#:: Give a 12401 - Glowing Skull
		quest::summonitem(12401);
	}
	#:: Match a 5122 - Squire's Khukri
	elsif (plugin::takeItems(5122 => 1)) {
		quest::say("You will be rewarded with the knight's khukri when I have possession of your squire's khukri and the Skull of Torture.");
		#:: Give a 5122 - Squire's Khukri
		quest::summonitem(5122);
	}
	plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
