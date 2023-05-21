#:: Test of Charm - enchanter epic - start of quest
#:: Items: 17861, 10631, 10632, 10633, 10634, 10604, 10637, 10612

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Hello my dear. I am quite pleased to make your acquaintance. Perhaps even charmed!");
  }
  if ($text=~/i need a sack/i && plugin::check_hasitem($client,10604)) {
    quest::say("Take this sack and combine the items I requested in it. Then return it to me.");
	#:: Give item 17861 - An Enchanters Sack
    quest::summonitem(17861); #An Enchanters Sack
  }
  if ($text=~/gems/i) {
    quest::say("I have prepared some gems that you will need to trap the essence. You will need to force a diamond, sapphire, ruby and emerald onto special creatures to obtain their essence.");
  }
  if ($text=~/diamond/i) {
    quest::say("Here is the diamond that I have prepared for you. Its only purpose is to trap the essence of a particular book worm. If you should fail in your first attempt, do not worry. I will provide you with another.");
	#:: Give item 10631 - Dull Diamond
    quest::summonitem(10631);
  }
  if ($text=~/sapphire/i) {
    quest::say("Here is the sapphire that I have prepared for you. Take it and give it to the one referred to as the Golden Faerie.");
	#:: Give item 10632 - Dull Sapphire
    quest::summonitem(10632);
  }
  if ($text=~/ruby/i) {
    quest::say("Blood red is the ruby that I have given you. The city that you must travel to has no sun, but still a day and night. And at night, the mist could suffocate one. Tis the fate of poor Jaxion.");
	#:: Give item 10633 - Dull Ruby
    quest::summonitem(10633);
  }
  if ($text=~/emerald/i) {
    quest::emote("jumps.");
    quest::say("Eeekk... a scorpion. I thought they rid this area of these critters. Those things give me the creepers. Take this emerald and be on your way.");
	#:: Give item 10634 - Dull Emerald
    quest::summonitem(10634);
  }
}

sub EVENT_ITEM {
	#:: Match 10604 - Jeb's Seal
	if (plugin::takeItems(10604 => 1)) {
		quest::say("Oh it must be time to reveal the staff! The piece I will help you craft is encrusted with magical gems. These gems contain the essence of various creatures. Alone they have very little power. Combined together they are much more powerful. They must be combined in a sack. Just ask if you don't have one.");
		#:: Give item 10604 - Jeb's Seal
		quest::summonitem(10604);
	}
	#:: Match 10637 - A Sack For Nadia
	elsif (plugin::takeItems(10637 => 1)) {
		quest::say("Lovely! You are indeed quite the charmer. Here, take the third part, and seek out the last master. The time draws near.");
		quest::faction(404,30); #:: + True Spirit
		#:: Give 10,000 experience
		quest::exp(10000);
		#:: Give item 10612 - 3rd Piece of Staff
		quest::summonitem(10612);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

# EOF Zone: firiona ID: 84116 NPC: Nadia_Starfeast
