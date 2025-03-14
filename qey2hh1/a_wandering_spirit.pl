sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::emote("stops and flashes brightly for a moment. It seems to be regarding you with interest.");
		quest::pause(30);
	} if($faction <= 3) {
		if($text=~/Shield of Falsehood/i) {
			quest::say("Yes, I have taken Marr's Promise along with Woe and Envy and fashioned them together to create the Shield of Falsehood. Wield this in defense of possession and the weakness that comes with hoarding treasure instead of using it to accomplish your goals. May it serve you well, $race.");
			#:: Give a 1679 - Shield of Falsehood
			quest::summonitem(1679);
		}  if($text=~/last path/i) {
			quest::say("You have trusted us along the paths we have set before you. You have been known to be patient and await the right moment. And now, you have learned the wisdom to act in our best interest. However, one last path awaits, to determine if you have the ability to act out what must be done.");
			quest::say("There are many troubles about the world we try to rub out but none is more serious than the curse on what the wasichu call the Emerald Jungle. Go there and find one of our spirits. Show them the gem you have been given and follow the path they set you on.");
			#:: Give a 1668 - Sparkling Gem
			quest::summonitem(1668);
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 1667 - Small Gem
	if(plugin::takeItems(1667 => 1)) {
		quest::say("Oh, it is you, shaman! Good! You must hurry before it's too late. Go now to the Mountains they call Rathe and find them! They need your help quickly! They will know you when they see you and instruct you on how you can help, but you must hurry!");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(404, 250); 	#:: + Truespirit
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 1675 - Marr's Promise, a 1676 - Woe and a 1677 - Envy
	elsif(plugin::takeItems(1675 => 1, 1676 => 1, 1677 => 1)) {
		quest::emote("nods somberly and takes the items. After a moment, he says, 'It is unfortunate that it came to this, but nothing else was to be done. Both paragons had lost sight of their virtures to protect the items given to them. The mere protection of these material belongings was not as important to Mithaniel Marr or Bertoxulous as it was that they act with righteousness in their minds and purpose in their hearts.");
		quest::say("You saw this and acted accordingly. For that, we will reward you with the three treasures made into one to ward off the falsehood of possession, the [Shield of Falsehood]. You have walked the path and now, as your final test, we must set you along one [last path].");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(404, 200); 	#:: + Truespirit
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 1669 - Obsidian Pebble and a 1670 - Marble Pebble
	elsif(plugin::takeItems(1669 => 1, 1670 => 1)) {
		quest::say("This is a sad day. You have failed and strayed from the path set before you. Please try to live as close to the spirits as you are able, though this is the closest you will ever get.");
		quest::depop_withtimer();
	}
	#:: Match a 1669 - Obsidian Pebble
	elsif(plugin::takeItems(1669 => 1)) {
		quest::say("This is a sad day. You have failed and strayed from the path set before you. Please try to live as close to the spirits as you are able, though this is the closest you will ever get.");
		quest::depop_withtimer();
	}
	#:: Match a 1670 - Marble Pebble
	elsif(plugin::takeItems(1670 => 1)) {
		quest::say("This is a sad day. You have failed and strayed from the path set before you. Please try to live as close to the spirits as you are able, though this is the closest you will ever get.");
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();  
}
