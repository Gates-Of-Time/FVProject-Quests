# items: 62095, 62094, 62203
sub EVENT_SAY {
  if($text=~/hail/i) {
    quest::say("Greetings friend, it is good to be freed from the clutches of those evil creatures. Tell me are you willing to help me bring some [justice] to them?");
  }
  elsif($text=~/justice/i) {
    quest::say("For justice to be brought to them you will need to strike at some of the most powerful goblins found there. Gos deep within the Temple of Droga and bring me back three drogan earth totems. Also I will need Gamolk's Ring of Spirit. Do this and you will be well rewarded.");
  }
}

sub EVENT_ITEM {
  #:: Match a 62095 - Gamolk's Ring of Spirit and a 62094 - Drogan Earth Totem
	if (plugin::takeItems(62095 => 1, 62094 => 3)) {
    quest::say("Excellent $name.  Thank you for your assistance.  Thank this as a token of my.... appreciation.");
    #:: Give a 62203 - Soft Leather Bracer of Gore
		quest::summonitem(62203);
		#:: Ding!
		quest::ding();		
  }

	#:: Return unused items
	plugin::returnUnusedItems();
}