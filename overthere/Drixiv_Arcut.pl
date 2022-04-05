sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Begone unless you seek the armor of the [trooper]");
  }
  elsif ($text=~/trooper/i) {
    quest::say("I can provide [boots], [bracer], [gauntlets], or [greaves]");
  }
  elsif ($text=~/boots/i) {
    quest::say("You wish the boots worn by the ancients? Then you must first master the virtue of confidence. For our brothers of the dead, confidence is the virtue that allows them to control the forces that would tear them apart if they knew it not. When a warrior steps, he must be confident, for a weak step cannot crush your enemies. Take this note to the current Harbinger in Cabilis and learn from him.");
    #:: Give item 14794 - Illegible Note: Boots
		quest::summonitem(14794);
  }
  elsif ($text=~/bracer/i) {
    quest::say("The bracers of our ancestors embody righteousness. When we strike, and our forearms are soaked in the blood of our enemies, our purpose must be pure. Else that blood will burn our souls and anger that which we live for. Go and find the Archduke in Cabilis and give him my note. He will teach you of righteousness. For if our chosen did not know righteousness, our people would not be. Go!");
    #:: Give item 14791 - Illegible Note: Bracer
		quest::summonitem(14791);
  }
  elsif ($text=~/gauntlets/i) {
    quest::say("Our hands are our most useful and deadly instruments, after our minds. When we use them other than in service of our lord and ancestors, our actions are false. Without knowing righteousness we can never be sure if our actions are in the name of fear. The Chosen, the Crusaders of Greenmist, know fear intimately. Their actions are never without the blessing of our lord. Take this note to the Archduke. He will recognize my writing and instruct you.");
    #:: Give item 14792 - Illegible Note: Gauntlets
		quest::summonitem(14792);
  }
  elsif ($text=~/greaves/i) {
    quest::say("Our legs move us forward. If we move with hesitance we will surely fall and leave our charge exposed. Before you can wear the greaves, you must learn from the Brood of Kotiz. For if they did not wield their powers over the dead with confidence, their life forces would be sucked from them instantly, leaving them empty husks. Take this note to the Harbinger and listen to his instructions.");
    #:: Give item 14793 - Illegible Note: Greaves
		quest::summonitem(14793); 
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
