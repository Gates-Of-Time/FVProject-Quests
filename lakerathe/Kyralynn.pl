sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name! I am the shaman Kyralynn. If you have a banded armor, my husband Vrynn and I can form it into a new shaman armor using this totem and some reagents for the ritual. I can use a banded [bracer], [mail], [helm] or [cloak] to form this new armor.");
	}
	elsif ($text=~/bracer/i) {
		quest::say("The bracer requires a banded bracer, 1 dufrenite, a cauldron shell from an aqua goblin lord in Dagnor's Cauldron, and a bull elephant tooth.");
	}
	elsif ($text=~/helm/i) {
		quest::say("The helm requires a banded helm, 1 ground dufrenite, a glacier bear pelt, and an ogreskin chamois from a lizard page.");
	}
	elsif ($text=~/cloak/i) {
		quest::say("The cloak requires a banded cloak, 1 powdered dufrenite, basalt drake scales, and a driftwood pipe from an isle goblin chieftain.");
	}
	elsif ($text=~/mail/i) {
		quest::say("The mail requires banded mail, 1 crushed dufrenite, a lancer swordfish fin, and Grizzleknot bark.");
	}
}

sub EVENT_ITEM {
	#:: Match a 3061 - Banded Bracer, a 10073 - Dufrenite, a 19031 - Cauldron Shell, and a 19033 - Bull Elephant Tooth
	if (plugin::takeItems(3061 => 1, 10073 => 1, 19031 => 1, 19033 => 1)) {
		quest::say("I have crafted your bracer, use it well.");
		#:: Give a 4945 - Totemic Bracers
		quest::summonitem(4945);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 3053 - Banded Helm, a 19051 - Ground Dufrenite, a 19042 - Glacier Bear Pelt, and a 19040 - Ogreskin Chamois
	elsif (plugin::takeItems(3053 => 1, 19051 => 1, 19042 => 1, 19040 => 1)) {
		quest::say("I have crafted your helm, use it well.");
		#:: Give a 4947 - Totemic Helm
		quest::summonitem(4947);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 3058 - Banded Cloak, a 19052 - Powdered Dufrenite, a 19032 - Basalt Drake Scales, and a 19035 - Driftwood Pipe
	elsif (plugin::takeItems(3058 => 1, 19052 => 1, 19032 => 1, 19035 => 1)) {
		quest::say("I have crafted your cloak, use it well.");
		#:: Give a 4948 - Totemic Cloak
		quest::summonitem(4948);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 3056 - Banded Mail, a 19050 - Crushed Dufrenite, a 19036 - Lancer Swordfish Fin, and a 19044 - Grizzleknot Bark
	elsif (plugin::takeItems(3056 => 1, 19050 => 1, 19036 => 1, 19044 => 1)) {
		quest::say("I have crafted your breastplate, use it well.");
		#:: Give a 4946 - Totemic Breastplate
		quest::summonitem(4946);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
