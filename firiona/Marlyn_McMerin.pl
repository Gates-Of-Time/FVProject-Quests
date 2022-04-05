sub EVENT_SAY {
  if($text =~ /hail/i) {
    quest::say("Greetings hearty adventurer. Searching for the components necessary for fine shaman spells are we? I have come to Kunark in search of [rare alchemy components], but I have found the dangers of Kunark are far too great for me.");
  }
  if($text=~/rare alchemy components/i){
    quest::say("Grand!! I have heard word of [four rare components]. Collect them for me and I will share with you a rare scroll of [McMerin's Feast].");
  }
  if($text=~/McMerins Feast/i){
    quest::say("Clan McMerin are wise shamans from the North. The secret of McMerin's Feast won't be understandable unless you're a shaman, but you can always pass it on to one.");
  }
  if($text=~/McMerin's Feast/i){
    quest::say("Clan McMerin are wise shamans from the North. The secret of McMerin's Feast won't be understandable unless you're a shaman, but you can always pass it on to one.");
  }
  if($text=~/four rare components/i){
    quest::say("From the lands of Kunark we require some clay of Ghiosk, crushed dread diamond and some powder of a Yun shaman. The rarest component is the bones of one who touched the Bath of Obulus. Find these things, return them to me and the secret of [McMerin's Feast] is yours.");
  }
}

sub EVENT_ITEM {
	#:: Match a 12942 - Strange Ochre Clay, 12945 - Crushed Diamonds, 12944 - Yun Shaman Powder and a 12943 - Greyish Bone Chips
	if (plugin::takeItems(12942=>1, 12945 => 1, 12944 => 1, 12943 =>1)) {
    		quest::say("What's this? This is amazing - you collected them all! To think, the power that these items hold if properly used. Never mind that now, here, take the scroll. You've certainly earned it.");
		#:: Give a 12941 - Spell: Cannibalize II
		quest::summonitem(12941);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(45000);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
