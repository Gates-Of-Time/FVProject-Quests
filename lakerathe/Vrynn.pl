sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, spiritwalker. I am called Vrynn. If you have banded armor, my wife Kyralynn and I can form it into a new shaman armor using this totem and some reagents for the ritual. I make armor from banded [boots], [gauntlets], [sleeves], and [leggings].");
	}
 	elsif ($text=~/boots/i) {
		quest::say("The boots require banded boots, 1 dufrenite, an orc chief's tongue from Lesser Faydark, and terror spines from a tentacle terror in Najena.");
	}
	elsif ($text=~/gauntlets/i) {
		quest::say("The gauntlets require banded gauntlets, 1 crushed dufrenite, a mammoth rib bone, and a griffenne downfeather.");
	}
	elsif ($text=~/sleeves/i) {
		quest::say("The sleeves require banded sleeves, 1 ground dufrenite, ghoul carrion from Estate of Unrest, and charger hoof chips.");
	}
	elsif ($text=~/leggings/i) {
		quest::say("The leggings require banded leggings, 1 powdered dufrenite, a Permafrost snowball from a goblin wizard, and bone barbs from Estate of Unrest."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 3064 - Banded Boots, a 10073 - Dufrenite, a 19039 - Chief's Tongue, and a 19041 - Terror Spines
	if (plugin::takeItems(3064 => 1, 10073 => 1, 19039 => 1, 19041 => 1)) {
		quest::say("I have crafted your boots, use them well.");
		#:: Give a 4941 - Totemic Boots
		quest::summonitem(4941);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 3062 - Banded Gauntlets, a 19050 - Crushed Dufrenite, a 19043 - Mammoth Rib Bone, and a 19046 - Griffenne Downfeather
	elsif (plugin::takeItems(3062 => 1, 19050 => 1, 19043 => 1, 19046 => 1)) {
		quest::say("I have crafted your gauntlets, use them well.");
		#:: Give a 4942 - Totemic Gauntlets
		quest::summonitem(4942);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 3060 - Banded Sleeves, a 19051 - Ground Dufrenite, a 19038 - Ghoul Carrion, and a 19045 - Charger Hoof Chips
	elsif (plugin::takeItems(3060 => 1, 19051 => 1, 19038 => 1, 19045 => 1)) {
		quest::say("I have crafted your sleeves, use it well.");
		#:: Give a 4943 - Totemic Vambraces
		quest::summonitem(4943);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 3063 - Banded Leggings, a 19052 - Powdered Dufrenite, a 19034 - Permafrost Snowball, and a 19037 - Bone Barbs
	elsif (plugin::takeItems(3063 => 1, 19052 => 1, 19034 => 1, 19037 => 1)) {
		quest::say("I have crafted your leggings, use them well.");
		#:: Give a 4944 - Totemic Greaves
		quest::summonitem(4944);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
