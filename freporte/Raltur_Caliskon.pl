sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("May the rage of Innoruuk flow through your veins. Welcome $name. Soon the Dismal Rage shall run rampant in the streets of Freeport. Our numbers grow. Like you, so many feel the rage within. It is now time to [serve Innoruuk].");
	}
	if ($text=~/serve Innoruuk/i) {
		quest::say("Wise choice. We of the Dismal Rage have learned of the value of incompetence. As the Teir'Dal use the ogres and the trolls so to shall the Dismal Rage have A pawn in this game. Ours is the Freeport Militia. They trust us. How unfortunate for them. I want you to go speak with Sir Lucan D'lere, the so called ruler of this city and leader of this mob of ruffians called the Freeport Militia. Tell him you are [from the Shrine of Innoruuk]. Do as he asks. Little favors lead to large debts. And if you should find something of importance, bring it to me not that inept warrior.");
	}
	 if ($text=~/mission/i) {
		quest::say("Antonius Bayle has created a strong alliance with certain groups from four other cities. He and his allies are clearly up to no good, or rather, all good. We require more information. Visiting our fair city is a woman called Lady Shae. We have learned that she is heading to Qeynos soon, returning something called the Bayle List. Find her before she leaves. Bring me her Bayle List III.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18822 -  A Note
	if (plugin::takeItems(18822 => 1)) {
		quest::say("So the great Antonius Bayle wishes to ally himself with the mighty Knights of Truth. How pathetic. It would appear that the alliance has spawned infiltrators of sorts. Of course, we of the Dismal Rage are already aware of this, but I am sure Sir Lucan D'Lere knows nothing as usual. I have a [mission] for any evil shadowknight of Innoruuk.");
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 15 to 25cp
		my %cash = plugin::RandomCash(15,25);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(296,1); 		#:: + Opal Dark Briar
		quest::faction(271,1); 		#:: + Dismal Rage
		quest::faction(281,-3); 	#:: - Knights of Truth
	}
	#:: Turn in for 18810 -  Bayle List III
	if (plugin::takeItems(18810 => 1)) {
		quest::say("You have done well. This is the Bayle List. I have heard of it. It is useless without the remaining two parts. Take the list. You must collect the other two pieces of the list and take them to a scribe by the name of Rathmana Allin. He can be found in the deserts of South Ro. First, you must go ask Venox Tarkog what the Bayle List is. He is here in the shrine and will fill you in on your mission.");
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Give item 18810 - Bayle List III
		quest::summonitem(18810);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
