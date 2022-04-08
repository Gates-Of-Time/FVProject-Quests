sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("Greetings hearty adventurer. Searching for the components necessary for fine shaman spells are we? I have come to Kunark in search of [rare alchemy components], but I have found the dangers of Kunark are far too great for me.");
	}
	elsif ($text=~/rare alchemy components/i) {
		quest::say("I have heard word of four rare components - the clay of Ghiosk, crushed dread diamonds and powder of Yun. Most rare are chips from the bones of one who has touched the Bath of Obulus.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12942 - Strange Ochre Clay, a 12945 - Crushed Diamonds, a 12944 - Yun Shaman Powder, and a 12943 - Greyish Bone Chips
	if (plugin::takeItems(12942=>1, 12945 => 1, 12944 => 1, 12943 =>1)) {
    		quest::say("Incredible! You have done well. I reward you with a spell which has been kept in my clan. I offer its secrets to one I now consider family.");
		#:: Give a 12941 - Spell: Cannibalize II
		quest::summonitem(12941);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);			#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);			#:: + Emerald Warriors
		quest::faction(312, 3);			#:: + Storm Guard
		quest::faction(441, -1);		#:: - Legion of Cabilis
		quest::Faction(313, -1);		#:: - Pirates Of Gunthak
		#:: Grant a large amount of experience
		quest::exp(5000);
	}
	#:: Match a 12942 - Strange Ochre Clay
	elsif (plugin::takeItems(12942=>1)) {
		quest::say("I requested the bone chips which touched the Bath of Obulus, clay of Ghiosk, powder of Yun and crushed dread diamonds.");
		#:: Give a 12942 - Strange Ochre Clay
		quest::summonitem(12942);
	}
	#:: Match a 12945 - Crushed Diamonds
	elsif (plugin::takeItems(12945 => 1)) {
		quest::say("I requested the bone chips which touched the Bath of Obulus, clay of Ghiosk, powder of Yun and crushed dread diamonds.");
		#:: Give a 12945 - Crushed Diamonds
		quest::summonitem(12945);
	}
	#:: Match a 12944 - Yun Shaman Powder
	elsif (plugin::takeItems(12944 => 1)) {
		quest::say("I requested the bone chips which touched the Bath of Obulus, clay of Ghiosk, powder of Yun and crushed dread diamonds.");
		#:: Give a 12944 - Yun Shaman Powder
		quest::summonitem(12944);
	}
	#:: Match a 12943 - Greyish Bone Chips
	elsif (plugin::takeItems(12943 =>1)) {
		quest::say("I requested the bone chips which touched the Bath of Obulus, clay of Ghiosk, powder of Yun and crushed dread diamonds.");
		#:: Give a 12943 - Greyish Bone Chips
		quest::summonitem(12943);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
