sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetin's! Justice speaks through us. We're the followers o' the Tribunal. We act as judge. jury and executioner fer all misled Northmen. Sometimes we must also execute our swift justice upon evil races. such as th' [" . quest::saylink("ice goblins") . "].");
	}
	if ($text=~/ice goblins/i) {
		quest::say("The ice goblins are a weak race. They pose no threat to our community. but lately we've heard rumors of ice goblins that can cast spells. They're said to be as weak as the goblin warriors. so I seek to employ the talents of our young shamans to [" . quest::saylink("hunt the goblin casters") . "].");
	}
	if ($text=~/hunt the goblin casters/i) {		
		quest::say("Aye. ye'll serve justice.  I must find the source o' their recent spellcasting ability.  I hear reports o' glowing necklaces upon these wicked beasts' necks. Get me one o' these casters' necklaces. Return them in any condition at all. Go! Justice awaits yer return.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13968 - Shattered Caster Beads
	if (plugin::check_handin(\%itemcount, 13968 => 1)) {
		quest::say("Shattered! This has happened frequently! These beads are very delicate. They're useless to me now, however, I'll reward ye fer the execution of yet more goblin casters. Continue yer work. The Tribunal watches ye!");
		quest::summonitem(quest::ChooseRandom(15270, 15275, 15075, 15271, 15279, 15212, 15079));
		#::Ding!
		quest::ding();
		#:: Grant a small amount of coin
		quest::givecash(0,0,6,0);
		#:: Grand a small amount of experience
		quest::exp(800);
		#:: Set Factions
		quest::faction(213,1); 		# + Merchants of Halas
		quest::faction(33,-1);		# - Circle of Unseen Hands
		quest::faction(294,10);		# + Shamen of Justice
		quest::faction(48,-1);		# - Coalition of Tradefolk Underground
		quest::faction(137,-2);		# - Hall of the Ebon Mask
	}
	if ($class eq "shaman") {
		#:: Match 13969 - Caster Beads
		if (plugin::check_handin(\%itemcount, 13969 => 1)) {
			quest::say("Finally! Intact! This IS good news! I can continue me investigation now. As fer yer loyal deed, I'll offer ye this, the Gavel of Justice. May ye employ it well in the service o' justice.");
			#:: Give a 6028 - Gavel of Justice
			quest::summonitem(6028);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of coin
			quest::givecash(0,0,0,1);
			#:: Grant a moderate amount of experience
			quest::exp(1600);
			#:: Set Factions
			quest::faction(213,3);		# + Merchants of Halas
			quest::faction(33,-3);		# - Circle of Unseen Hands
			quest::faction(294,25);		# + Shamen of Justice
			quest::faction(48,-3);		# - Coalition of Tradefolk Underground
			quest::faction(137,-5);		# - Hall of the Ebon Mask
		}
	}
    	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS
