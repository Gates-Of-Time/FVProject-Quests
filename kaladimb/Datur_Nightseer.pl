sub EVENT_SPAWN {
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	if (($ulevel == 1) && ($class eq "Paladin")) {
		$client->Message(15,"Datur Nightseer glances your way. 'Ah a new recruit! Welcome, young one! Read the note in your inventory and then hand it to me when you wish to begin your training!'");
	}
}

#sub EVENT_SAY { # LDoN content
#	if ($client->GetGlobal("paladin_epic") ==9) {
#		if ($text=~/prayer bead/i) {
#		  quest::say("You're trying to tell me that those beads in your hand are supposed to help cure someone?");
#		}
#		elsif ($text=~/yes/i) {
#		  quest::say("Well who am I to argue with you. I'm just a holy knight of Brell! Lad, I'm feeling a little parched. Help an old knight out and run along down to a pub and get me a bottle of that double brewed double dry stout.");
#		}
#	}
#}

sub EVENT_ITEM {
	#:: Match a 18768 - Folded Parchment
	if (plugin::check_handin(\%itemcount, 18768 => 1)) {
		quest::say("Welcome, we are the Paladins of the Underfoot. I am Datur, and I will help teach you the word and will of the Duke of Below, Brell Serilis. Here is our guild tunic. Let's get started, shall we?");
		#:: Give a 13514 - Dusty Tunic*
		quest::summonitem(13514);
		#:: Set Factions
		quest::faction(44,100); 	# Clerics of Underfoot
		quest::faction(169,100); 	# Kazon Stormhammer
		quest::faction(219,75); 	# Miners Guild 249
	}
	#:: Match a 12279 - Chalice Case
	if (($faction <= 4) && (plugin::check_handin(\%itemcount, 12279 => 1))) {
		quest::say("The chalice is returned!! Praise be to Brell!! You have proven yourself to our church and have earned our respect. Let me welcome you into our brotherhood with the Cape of Underfoot. Wear it with pride as all of our finest paladins do.");
		#:: Give a 12281 - Cape of Underfoot
		quest::summonitem(12281); # Cape of Underfoot
		#:: Set Factions
		quest::faction(44, 25); 	# Clerics of Underfoot
		quest::faction(169, 25); 	# Kazon Stormhammer
		quest::faction(219, 25); 	# Miners Guild 249
		quest::exp(250);
		quest::givecash(0, 0, 0, 3);
	}
# LDON content
#   if ($client->GetGlobal("paladin_epic")==9 && plugin::check_handin(\%itemcount, 51157 => 1)) { # Bottle of Double Brewed Double Dry Stout
#	  quest::summonitem(69963); # Kaladim Prayer Bead
#	  quest::say("Now that is a tasty beverage!! It sure is strong too for this tiny dwarf! I guess I should give you some kind of thanks. Take this jewel that I found and see if it will help your friend Kemik. I wish I had the second jewel that was with it. You will find that one with a young but brave froglok.");
#   }
#   do all other handins first with plugin, then let it do disciplines
#   plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
	#:: Return Unused Items
	plugin::return_items(\%itemcount);
}
# edited by SS Removed LDON Content
#END of FILE Zone:kaladimb  ID:67029 -- Datur_Nightseer
