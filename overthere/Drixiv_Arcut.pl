sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("sighs heavily and after a long while says, 'Leave us, $race. Leave us to our eternal damnation.'");
	}
	elsif ($text=~/curse/i) {
		quest::emote("twists his face into a frown and says, 'You read what's written, $race. It's clear enough so we won't bother to explain the details. We can only stand our guard and hope for [redemption].'");
	}
	elsif ($text=~/redemption/i) {
		quest::emote("grits his teeth and snaps, 'It's very simple, $name! We are fallen! We seek redemption! We guard our 'brothers' here among the Howling Stones until we are relieved. Whether that will ever happen, we do not know. We can only hope that by providing the great warriors of the legion with our [ancient armor], we will earn salvation.'");
	}
	elsif ($text=~/ancient armor/i) {
		quest::say("You wish the armor of our ancestors? The armor donned by the Guard whose duty was to protect the Chosen? A warrior relies not on strength alone, but many virtues. If a warrior learns to balance each virtue, then he may be fit to guard the Chosen. Each piece of armor reflects a [virtue], and each virtue must be learned before the armor is given.");
	}
	elsif ($text=~/virtue/i) {
		quest::say("The virtues symbolized by the armor I keep are confidence and righteousness. The [boots], [greaves], [gauntlets], and [bracers]. Bring me proof that you have mastered these virtues as well as a piece of Banded armor of the type you desire and the appropriate armor shall be yours, $name. If you wish the other pieces you must speak to my brother.'");
	}
	elsif ($text=~/boots/i) {
		quest::say("You wish the boots worn by the ancients? Then you must first master the virtue of confidence. For our brothers of the dead, confidence is the virtue that allows them to control the forces that would tear them apart if they knew it not. When a warrior steps, he must be confident, for a weak step cannot crush your enemies. Take this note to the current Harbinger in Cabilis and learn from him.");
		#:: Give item 14794 - Illegible Note: Boots
		quest::summonitem(14794);
	}
	elsif ($text=~/greaves/i) {
		quest::say("Our legs move us forward. If we move with hesitance we will surely fall and leave our charge exposed. Before you can wear the greaves, you must learn from the Brood of Kotiz. For if they did not wield their powers over the dead with confidence, their life forces would be sucked from them instantly, leaving them empty husks. Take this note to the Harbinger and listen to his instructions.");
		#:: Give item 14793 - Illegible Note: Greaves
		quest::summonitem(14793); 
	}
	elsif ($text=~/gauntlets/i) {
		quest::say("Our hands are our most useful and deadly instruments, after our minds. When we use them other than in service of our lord and ancestors, our actions are false. Without knowing righteousness we can never be sure if our actions are in the name of fear. The Chosen, the Crusaders of Greenmist, know fear intimately. Their actions are never without the blessing of our lord. Take this note to the Archduke. He will recognize my writing and instruct you.");
		#:: Give item 14792 - Illegible Note: Gauntlets
		quest::summonitem(14792);
	}
	elsif ($text=~/bracer/i) {
		quest::say("The bracers of our ancestors embody righteousness. When we strike, and our forearms are soaked in the blood of our enemies, our purpose must be pure. Else that blood will burn our souls and anger that which we live for. Go and find the Archduke in Cabilis and give him my note. He will teach you of righteousness. For if our chosen did not know righteousness, our people would not be. Go!");
		#:: Give item 14791 - Illegible Note: Bracer
		quest::summonitem(14791);
	}
}

sub EVENT_ITEM {  
	#:: Match a 14813 - Glosk's Reference: Boots and a 3064 - Banded Boots
	if (plugin::takeItems(14813 => 1, 3064 => 1)) {
		#:: Give item 4983 - Trooper Scale Boots
		quest::summonitem(4983);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(10000);
	}
	#:: Match a 14808 - Xog's Reference: Bracer and a 3061 - Banded Bracer
	elsif (plugin::takeItems(14808 => 1, 3061 => 1)) {
		#:: Give item 4980 - Trooper Scale Bracers
		quest::summonitem(4980);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(10000);
	}
	#:: Match a 14831 - Glosk's Reference: Greaves and a 3063 - Banded Leggings
	elsif (plugin::takeItems(14831 => 1, 3063 => 1)) {
		#:: Give item 4982 - Trooper Scale Greaves
		quest::summonitem(4982);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(10000);
	}
	#:: Match a 14809 - Xog's Reference: Gauntlet and a 3062 - Banded Gauntlets
	elsif (plugin::takeItems(14809 => 1, 3062 => 1)) {
		#:: Give item 4981 - Trooper Scale Gauntlets
		quest::summonitem(4981);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(10000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
