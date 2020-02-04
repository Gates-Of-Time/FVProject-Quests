sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome, my friend! What is it you seek from Laren and the Scouts of Tunare?");
	}
	elsif ($text=~/scouts blade/i) {
		quest::say("So you have heard of the dagger created especially for the rogues of Kelethin! The creator of these blades has since passed away. We mourn his death. And, I am sorry to say, we have no more to offer our new scouts. There is a way though.. A way to gain a blade and a way to [avenge the craftsman].");
	}
	elsif ($text=~/avenge the craftsman/i) {
		#:: Match if faction is Kindly or better
		if ($faction <= 3) {
			quest::say("You must journey to Antonica. Seek out a castle high in the Serpent's Spine. A castle called Highkeep. Search for a man named Fenn Kaedrick. Give him this token and he shall know why you were sent. Perhaps the merchants will know of his whereabouts. Go at once. I have faith in you. Good luck, $name.");
			#:: Give a 12185 - Useless Token
			quest::summonitem(12185);
		}
		#:: Confirmed at Amiable.
		else {
			quest::say("The Scouts of Tunare have no quarrel with you, but perhaps a few less Crushbone Orcs would prove your worth. Then we shall speak.");
		}
	}
	else {
		quest::say("Perhaps more service to Tunare's Scouts will prove your worth.");
	}
}

sub EVENT_ITEM {
	#:: Match for kindly or better faction
	if ($faction <= 3) {
		#:: Match a 12186 - Half Elf Head
		if (plugin::takeItems(12186 => 1)) {
			quest::say("You have proven yourself to be a worthy Scout of Tunare and as such you are worthy to hold the hilt of a scout blade. Remember, rogues in class are we, but in our chests beats the heart of the forest. Our skills are used in defense of Kelethin and her allies. Next you shall speak to Master Tylfon. He will inform you of the scout silvermesh leggings.");
			#:: Give a 7321 - Scouts Blade
			quest::summonitem(7321);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(316, 10);		#:: + Tunare's Scouts
			#:: Grant a large amount of experience
			quest::exp(20000);
			#:: Create a hash for storing cash - 2700 to 2900cp
			my %cash = plugin::RandomCash(2700,2900);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
