sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Eh!!? What do I see before me? A young upstart? Some child pretending to be a great mind? If you wish to test your mettle then you will assist Tergon. Will you [" . quest::saylink("Help Tergon") . "] or are you far [" . quest::saylink("too superior") . "] to deal with such things?");
	}
	if ($text=~/Help Tergon/i) {
		quest::emote("No!! You will help yourself. Your task shall find your skills tested. Succeed and knowledge is yours. Fail and death shall embrace you. Go to the Steamfont Mountains and seek out a troll named Bugglegupp. As a youngster I once tried to attack the beast with a device of mine. It sent an Iron Pellet deep into the beasts head. Kill Bugglegupp and return the Iron Pellet. I hope the Pellet does not get lost in the battle.");
	}
	if ($text=~/too superior/i) {
		quest::emote("Well excuse me!! your majesty. Please forgive my arrogance. Now get out of here, before you stink this place up with that rotting grape you call a brain!");
	}
	if ($text=~/further tasks/i) {
		quest::emote("Not all experience is gained upon the battlefield. We magicians must heighten our minds to become formidable opponents. I see much promise in you, $name. I will require you to [" . quest::saylink("travel abroad") . "] toward Freeport.");
	}
	if ($text=~/travel abroad/i) {
		quest::emote("You will go to Freeport and seek out the Academy of Arcane Science. There you shall find my brother Retlon. He has scribed some new spells in my personal spellbook. Hand him this note as proof of your alliance. He works closely with Master Dooly Jonkers.");
		#:: Give a 18887 - Sealed Letter (Note to Retlon Brenclog)
		quest::summonitem(18887);
	}
	#Toko's Head Quest (Luclin Era)
	#if ($text=~/defector/i) {
		#quest::emote("It seems a gnome magician by the name of Toko Binlittle has gone and left the guild. He joined forces with the [" . quest::saylink("Pirates of Gunthak") . "]. Find him. He must be destroyed. Our secrets cannot be known. Return his head to me and I shall give you the [" . quest::saylink("Elemental Grimoire") . "]");
	#if ($text=~/Pirates of Gunthak/i) {
		#quest::emote("From what I know, the Pirates of Gunthak are from the southern Gulf of Gunthak. It seems as though a small band of them has been operating within the Ocean of Tears, leagues from their own territory.");
	#if ($text=~/Elemental Grimoire/i) {
		#quest::emote("The Elemental Grimoire contains the knowledge which will advance your techniques in research. With it you shall learn to research spells and scribe them for your own spellbook.");
}
sub EVENT_ITEM {
	#:: Turn in for 13333 -  Iron Pellet (Bugglegupp Quest)
	if (plugin::check_handin(\%itemcount, 13333 => 1)) {
		quest::say("So, you have survived. There is no doubt in my mind that you achieved this solely with your own powers. Only a dim one requires the assistance of others. Take this. May it help you in your pursuit of greatness. [" . quest::saylink("Further tasks") . "] may bring you to that point.");
		#:: Give item 15058 - Spell: miscellaneous mage spell
		quest::summonitem(quest::ChooseRandom(15400,15397,15399,15398,15317,15058));
		#:: Give a small amount of xp
		quest::exp(150);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(91,3); 		#Eldritch Collective +
		quest::faction(71,-3); 		#Dark Reflection -
		quest::faction(322,-3); 	#The Dead -
		quest::faction(115,3); 		#Gem Choppers +
		quest::faction(176,3); 		#King Ak'Anon
	}		
		#:: Turn in for 13387 -  Tergon's Spellbook
	if (plugin::check_handin(\%itemcount, 13387 => 1)) {
		quest::say("Thank you $name. I had no doubt you would fulfill my will and return my spellbook.. here is your reward for such effort.");  #LOY Toko's Head Quest Dialogue appends to this "Now I have news of a larger matter. It has to do with a [" . quest::saylink("defector") . "].");
		#:: Give item 15058 - Spell: miscellaneous mage spell
		quest::summonitem(quest::ChooseRandom(15400,15397,15399,15398,15317,15058));
		#:: Give a small amount of xp
		quest::exp(150);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(91,3); 		#Eldritch Collective +
		quest::faction(71,-3); 		#Dark Reflection -
		quest::faction(322,-3); 	#The Dead -
		quest::faction(115,3); 		#Gem Choppers +
		quest::faction(176,3); 		#King Ak'Anon
	}		
		#:: Turn in for 13388 -  Teir`Dal Head (Toko's Head Quest)
	if (plugin::check_handin(\%itemcount, 13388 => 1)) {
		quest::say("Excellent work, $name. It's unfortunate this had to be done, but we cannot allow our secrets to fall into the hands of others.");
		#:: Give item 17502 - Elemental Grimoire
		quest::summonitem(17502);
		#:: Give a small amount of xp
		quest::exp(300);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(91,3); 		#Eldritch Collective +
		quest::faction(71,-3); 		#Dark Reflection -
		quest::faction(322,-3); 	#The Dead -
		quest::faction(115,3); 		#Gem Choppers +
		quest::faction(176,3); 		#King Ak'Anon
	}
        plugin::return_items(\%itemcount);
}
	
