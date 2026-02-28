sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::emote("works at skinning and cleaning the raw furs around him."); 
	}
	elsif($text=~/what armor/i) {
		quest::say("Many armors.  All of animal hides from the islands.  If you wanting armor then I can make for you.  All I ask is you do me favor."); 
	}
	elsif($text=~/what favor/i) {
		quest::say("Snowfangs in need of much help lately.  Once we mighty but now weak.  You help us get stronger.  If you want armor of wolves or cougar then I need you bring twice as many materials.  For each thing you wanting I need thing.  Just tell me what furs you have and I tell you what I need."); 
	}
	elsif($text=~/medium quality dire wolf fur/i) { 
		quest::say("Good wolf fur I make you cloak.  All it take for cloak is fur and skinning rock.  I need two skinning rock though.  I very low on rocks."); 
	}
	elsif($text=~/low quality dire wolf fur/i) {  
		quest::say("Bad fur I make into cap for head.  Keep your small furless skull warm.  You bring me two bark bindings for that.  Bindings for sewing."); 
	}
	elsif($text=~/low quality cougarskin/i) {
		quest::say("More cat skin. You bring more meat but this time bring fatty walrus meat.  Many gnolls need for winter fat.  Keeps gnolls healthy."); 
	}
	elsif($text=~/medium quality cougarskin/i) { 
		quest::say("Grrrrr.  More cat.  All I need for this is cutting shells.  We not get them much but I need."); 
	}
	elsif($text=~/high quality cougarskin/i) {
		quest::say("I not like making things of cat fur.  Smells bad, hurts nose.  You want me to work with that you bring food, lots of food.  You bring me mammoth meats."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 30040 - Medium Quality Cougarskin, and two 30065 - Cutting Shells
	if (plugin::takeItems(30064 => 1, 30065 => 2)) {
		quest::emote("works with the fur for awhile by skinning it and sewing it"); 
		#:: Give a 30020 - Cougarskin Boots
		quest::summonitem(30020);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 30030 - High Quality Cougarskin, and two 13407 - Mammoth Meat
	elsif (plugin::takeItems(30030 => 1, 13407 => 2)) {
		quest::emote("works with the fur for awhile by skinning it and sewing it"); 
		#:: Give a 30027 - Cougarskin Mask
		quest::summonitem(30027);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 30031 - Low Quality Cougarskin, and two 30097 - Fatty Walrus Meat
	elsif (plugin::takeItems(30031 => 1, 30097 => 2)) {
		quest::emote("works with the fur for awhile by skinning it and sewing it"); 
		#:: Give a 30028 - Cougarskin Sleeves
		quest::summonitem(30028);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 30025 - Medium Quality Dire Wolf Fur, and two 30062 - Skinning Rocks
	elsif (plugin::takeItems(30025 => 1, 30062 => 2)) {
		quest::emote("works with the fur for awhile by skinning it and sewing it"); 
		#:: Give a 25019 - Dire Wolf Hide Cloak
		quest::summonitem(25019);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 30023 - High Quality Dire Wolf Fur, and two 30063 - Bark Bindings
	elsif (plugin::takeItems(30023 => 1, 30063 => 2)) {
		quest::emote("works with the fur for awhile by skinning it and sewing it"); 
		#:: Give a 30029 - Direwolf Fur Hood
		quest::summonitem(30029);
		#:: Ding!
		quest::ding();
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}