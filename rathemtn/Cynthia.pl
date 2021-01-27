sub EVENT_SAY { 
	if ($text=~/hail/i){
		quest::say("Hello. I am Cynthia.");
	}
}

sub EVENT_ITEM {
	#:: Match 50 gold pieces, and a 10085 - Shining Stone
	if (plugin::takeItemsCoin(0, 0, 50, 0, 10085 => 1)) {
		quest::say("I have enchanted your shining stone. To get it further enchanted, take this stone to Tarn Visilin in High Keep. Tip him 50 golden coins and he will work his magic.");
		#:: Give a 10086 - Glamour Stone
		quest::summonitem(10086);
		#:: Ding!
		quest::ding();
	}
}
