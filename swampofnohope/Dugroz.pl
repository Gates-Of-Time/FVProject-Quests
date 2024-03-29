# Quest for Charasis (Howling Stones) Key

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Fffrroaaak!!  Go away!  I don't want to [work for them] anymore! Go find another slave!");
	}
	elsif ($text=~/work/i) {
		quest::emote("looks relieved and eyes you, considering. Finally, he begins to recant his tale. 'I was once the slave of an important Iksar necromancer. I was his Dugroz, his head slave. One night, I heard two other slaves talking about me. I could barely hear them but what I did hear frightened me. My master was going to use me one last time. He was going to sacrifice me to craft a spell component for one of his most powerful spells. Hearing this, I used my privileges as his head slave and made my [escape].'");
	}
	elsif ($text=~/escape/i) {
		quest::say("As the head slave, I was allowed to move freely throughout my master's compound. I came across one of the slavemasters asleep in his chair and carefully relieved him of his [keys]. Then, quietly, I made my escape.");
	}
	elsif ($text=~/keys/i) {
		quest::say("After I escaped, I lost myself in the depths of the swamp. I discarded all the keys but one. I will gladly give it to you if you can do me a [small favor].");
	}
	elsif ($text=~/small favor/i) {
		quest::emote("blinks his eyes and leans forward. He whispers so quietly you must strain to hear him, 'I have taken up the same magics as my master. I require two components to complete a spell I have been researching for quite some time. The first is a vampire's fang. I have heard tales of a vampire who haunts the ruins of Kaesora. I also need a jade weapon stained by the blood of a chokidai. Look in the Lake of Ill Omen at the sarnak outpost. The leader used to herd chokidai, or so I am told.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 7236 - Xalgozian Fang and a 7256 - Jade Chokidai Prod
	if (plugin::takeItems(7236 => 1, 7256 => 1)) {
		quest::say("My thanks to you, $name. Take this key--I know not what door it opens. Now if I can just find that necklace of power that I took from my master's lair!");
		#:: Give a 20600 - Key to Charasis
		quest::summonitem(20600);
		quest::set_zone_flag(105);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 7236 - Xalgozian Fang and a 7254 - Jade Chokidai Prod (prenerf)
	elsif (plugin::takeItems(7236 => 1, 7254 => 1)) {
		quest::say("My thanks to you, $name. Take this key--I know not what door it opens. Now if I can just find that necklace of power that I took from my master's lair!");
		#:: Give a 20600 - Key to Charasis
		quest::summonitem(20600);
		quest::set_zone_flag(105);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
	}
 	#:: Return unused items
	plugin::returnUnusedItems();
}
