#:: Create a scalar variable to store wrapper state
$wrapper = 0;

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What you want?!! Face so ugly you scare fish away!! ..sniff, sniff. Smell so bad, too!! Me sure is hungry. Wish had [grub locker].");
	}
	elsif ($text=~/grub locker/i) {
		quest::say("You gots grub locker!! Give to me. Me sick of fish and not many dwarves fall off ship. Me pay a plat to get me grub locker from the Gobbler in Neriak. Go to him and say you [deliver grub locker] if you wants one plat.");
	}
	elsif ($text=~/wrapper/i) {
		if ($wrapper == 1) {
			quest::say("You no get my wrapper!! Me use it later when me needs to make more room in stomach!! You never get it!!");
			#:: Update the wrapper variable
			$wrapper = 0;
		}
	}
}

		

sub EVENT_ITEM {
	#:: Match a 12203 - Grub Locker
	if (plugin::takeItems(12203 => 1)) {
		quest::say("Oooh!! Grub locker! There is a loud click. He opens the locker and unwraps dwarf pickles. What this dumb wrapper? R, E, C, I, P, E.. Ahh!! It say pickles!! Me read good. Here your plat. Me give you little more. Me was very hungry for pickles.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(235,10);			#:: + Da Bashers
		quest::faction(222,10);			#:: + Broken Skull Clan
		#:: Grant a small amount of experience
		quest::exp(150);
		#:: Create a hash for storing cash - 1500 to 2000cp
		my %cash = plugin::RandomCash(1500,2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Update wrapper variable
		$wrapper = 1;
		#:: Add a 18940 - Tattered Recipe to loot
		$npc->AddItem(18940);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
