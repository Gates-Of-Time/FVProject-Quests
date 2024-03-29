sub EVENT_SPAWN {
	#:: Create a timer 'gragrot_depop' that triggers every 300 seconds (5 min)
	quest::settimer("gragrot_depop", 300);
}

sub EVENT_TIMER {
	#:: Match the timer 'gragrot_depop'
	if ($timer eq "gragrot_depop") {
		quest::stoptimer("gragrot_depop");
		quest::depop();
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! So you think you are a mighty Knight of Shadows? We must test these skills. Are you ready to begin the test?  Or do you think you have already proof of your deeds?");
	}
	elsif ($text=~/ready/i) {
		quest::say("Great, let us waste no more time! I offer to you three challenges: Bash, smash, or slash. What do you wish to be tested in?");
	}
	elsif ($text=~/bash/i) {
		my $reward = "Amulet of the Sphinx Eye";
		if (quest::is_classic_enabled()) {
			$reward = "Sphinx Eye Amulet";
		}
		elsif (quest::is_the_ruins_of_kunark_enabled()) {
			$reward = "Sphinx Eye Amulet";
		}
				
		quest::say("Gragrot like bashin. Gragrot say you like bashin too! Give Gragrot an Ebon Tessera, a Sphinx Eye Opal, and a Finely Crafted Amulet. Gragrot then give you $reward.");
	}
	elsif ($text=~/smash/i) {
		my $reward = "Crimson Ring of the Djinni";
		if (quest::is_classic_enabled()) {
			$reward = "Djinni's Finger Ring";
		}
		elsif (quest::is_the_ruins_of_kunark_enabled()) {
			$reward = "Djinni's Finger Ring";
		}
				
		quest::say("Gragrot wants you smashin. Smash, smash, and return a Copper Disk, a Small Sapphire, and a Silvery Ring. Then Gragrot give you $reward.");
	}
	elsif ($text=~/slash/i) {
		quest::say("Gragrot see you is powerful, but Gragrot wonders if you is good at Slashin. Gragrot says return with a Diaphanous Globe, a piece of dried leather, and a Finely Woven Cloth Belt. Gragrot then give you pegasus hide belt.");
	}
}

sub EVENT_ITEM {
	#:: Match a 20929 - Ebon Tessera, a 20997 - Sphinx Eye Opal, and a 20998 - Finely Crafted Amulet
	if (plugin::takeItems(20929 => 1, 20997 => 1, 20998 => 1)) {			#:: Shadowknight Test of Bash
		quest::say("You is powerful! Take this!");
		if (quest::is_classic_enabled()) {
			#:: Give a 14554 - Sphinx Eye Amulet
			quest::summonitem(14554);
		}
		elsif (quest::is_the_ruins_of_kunark_enabled()) {
			#:: Give a 14554 - Sphinx Eye Amulet
			quest::summonitem(14554);
		}
		else {
			#:: Give a 27705 - Amulet of the Sphinx Eye
			quest::summonitem(27705);
		}

		#:: Ding!
		quest::ding();
		#:: Grant a huge amount of experience
		quest::exp(100000);
		quest::depop();
	}
	#:: Match a 20936 - Copper Disc, a 20999 - Small Sapphire, and a 20700 - Silvery Ring
	elsif (plugin::takeItems(20936 => 1, 20999 => 1, 20700 => 1)) {			#:: Shadowknight Test of Smash
		quest::say("You is powerful! Take this!");
		if (quest::is_classic_enabled()) {
			#:: Give a 14553 - Djinni Finger Ring
			quest::summonitem(14553);
		}
		elsif (quest::is_the_ruins_of_kunark_enabled()) {
			#:: Give a 14553 - Djinni Finger Ring
			quest::summonitem(14553);
		}
		else {
			#:: Give a 27706 - Crimson Ring of the Djinni
			quest::summonitem(27706);
		}

		#:: Ding!
		quest::ding();
		#:: Grant a huge amount of experience
		quest::exp(100000);
		quest::depop();
	}
	#:: Match a 20943 - Diaphanous Globe, a 20701 - Dried Leather, and a 20702 - Finely Woven Cloth Belt
	elsif (plugin::takeItems(20943 => 1, 20701 => 1, 20702 => 1)) {			#:: Shadowknight Test of Slash
		quest::say("You is powerful! Take this!");
		#:: Give a 2704 - Pegasus-Hide Belt
		quest::summonitem(2704);
		#:: Ding!
		quest::ding();
		#:: Grant a huge amount of experience
		quest::exp(100000);
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
