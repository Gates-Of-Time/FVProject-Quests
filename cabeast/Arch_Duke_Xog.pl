sub EVENT_SPAWN {
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z + 20, $z - 20, 0);
}

sub EVENT_ENTER {
	#:: Match a 18205 - Guild Summons
	if (plugin::check_hasitem($client, 18205)) { 
		$client->Message(15,"As your reptilian eyes adjust to the darkness of the room, an imposing Iksar turns towards you, addressing you with a sharp hiss. 'I am Arch Duke Xog. The time has come young one. You have chosen the path of the Shadowknight. Open your inventory and read the note within. Once you are ready to begin your training, hand the note to me and we will continue.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("These are the sacred unholy grounds of the Crusaders of Greenmist and the Scaled Mystics. If you do not belong to us, you must leave this temple at once or learn great suffering in the name of Cazic-Thule.");
	}
#::	elsif ($text=~/greenmist/i) { #Test of the Lord (Greenmist Quest 7/8)
#::		quest::emote("appears surprised at your words. 'You know of Greenmist? The Unholy Khukri of Rile? We once had knowledge of this weapon, but when our great cities were destroyed in 1056 A.G., so, too, were all the great libraries. We lost all records. An explorer named [Argest] claimed to have found one library still intact. Pure babble.'");
#::	}
#::	elsif ($text=~/argest/i) { #Test of the Lord (Greenmist Quest 7/8)
#::		quest::say("Once a Lord of Pain, Argest is now a great explorer. No lizard has seen more of Kunark than he. He returned one season ago to tell tales of an [ancient library]. He said that he believed that there he would find a tome which would reveal the location of the ancient crusader weapon, Greenmist.");
#::	}
#::	if ($text=~/ancient library/i) { #Test of the Lord (Greenmist Quest 7/8)
#::		quest::say("There are many ancient libraries yet to be discovered. Our once great cities have been decimated, if not by our foes, then by nature itself. Within the outlands are many ruins which have yet to reveal themselves. We look forward to the discovery of these ruins by such explorers as Lord Argest the Great. If only we knew [where] he was...");
#::	}
#::	if ($text=~/where/i) { #Test of the Lord (Greenmist Quest 7/8)
#::		quest::emote("becomes despondent at your question. 'Alas, our chance of locating Greenmist is lost as long as Argest remains missing. Reports have come in from the Legion's deep range patrols that he may be in the Frontier Mountain range. At least, that is where the patrol captain found Argest's walking staff. He might have been captured, killed or even digested!!'");
#::	}
	elsif ($text=~/strange iksar/i) {
		quest::say("Yes, he was dressed in rags and hadn't eaten in days. He rambled on about seemingly nothing, obviously he had lost his mind at some point. The guards brought him in because he told them he had valuable information concerning a captured Crusader. According to the mad man, our missing knight was captured by a group of cultists that follow a false god. The cultists intend on converting him apparently. Your [test] will concern Geanik.");
	}
	elsif ($text=~/test/i) {
		quest::say("Learning Righteousness is learning to listen to one's own heart. At all times our Lord of Fear speaks to us. Our heart is through which he speaks. If we are pure in action and undistracted in mind we can hear the very words of our Father. Your test will be to find our lost Crusader. When you find him you must listen, and act based on what you hear. If your actions are Righteous, I will give you my reference. Bring me proof of your action and two sapphires.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18205 - Guild Summons
	if (plugin::takeItems(18205 => 1)) {
		quest::say("Welcome into our brotherhood. Know you that our way is the way of pain. Do as we say and you shall climb the rungs of knighthood. Listen well to the Lords of Pain within this temple and follow the words of the hierophants, for Cazic-Thule speaks to us through them. Take this khukri. It is the chosen weapon of the Crusaders and can deliver great pain unto our foes. Go now and learn our ways. Seek out Lord Gikzic.");
		#:: Give a 5120 - Pawn's Khukri
		quest::summonitem(5120);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 100); 	#:: + Crusaders of Greenmist
		quest::faction(441, 25); 	#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
	}
#::	elsif (plugin::takeItems(18051 => 1, 5126 => 1)) { #Test of the Lord (Greenmist Quest 7/8)
#::		quest::say("A legible tome of the scrolls of Vok Na Zov! What a find this is!! May the unholy curses of Cazic flow through you. Please accept the weapon of a Lord of Pain. To abandon it is to abandon our ways and earn yourself the hatred of our order.");
#::		quest::summonitem(5128); #Lord of Pain's Khukri
#::		quest::givecash(0,0,0,4); 
#::		quest::exp(4000);
#::		quest::ding();
#::		quest::faction(62,20);
#::		quest::faction(193,10);
#::	}
	#:: Match a 14791 - Illegible Note: Bracer
	elsif (plugin::takeItems(14791 => 1)) {
		quest::emote(" takes the note and glances at it briefly then lets out a heavy sigh and stares out over the city for several minutes. Finally he says quietly, 'Several months ago we lost contact with one of our crusaders. His name is, or was, Geanik. The last we heard from him he was furthering our cause against the loathsome Goblins that reside in Warsliks Wood. Just recently we were visited by a [strange Iksar].'");
	}
	#:: Match a 14807 - Traitor's Heart and two 10034 - Sapphire
	elsif (plugin::takeItems(14807 => 1, 10034 => 2)) {
		quest::say("Thanks for resolving this issue. Here is your reward");
		#:: Give a 14808 - Xog's Reference: Bracer
		quest::summonitem(14808);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(10000);
	}
	#:: Match a 14792 - Illegible Note: Gauntlets
	elsif (plugin::takeItems(14792 => 1)) {
		quest::emote(" takes the note without even a glance in your direction and begins reading. After a long silence, he lets his arms drop to his sides and says quietly, 'We kill, $name. That is our job, our duty in life. Our targets are chosen for us. We merely listen. Right now I am being told there is a traitor not far from here, near the ocean. Go to him and end his life. Bring me his head, and two star rubies. As you do this, try hard to listen to our Lord's instruction. If you hear even a whisper, you will know more righteousness than most of this city.'");
	}
	#:: Match a 14806 - Head of Blackhand, and two 10032 - Star Ruby
	elsif (plugin::takeItems(14806 => 1, 10032 => 2)) {
		quest::say("Well done, $name.");
		#:: Give a 14809 - Xog's Reference: Gauntlet
		quest::summonitem(14809);
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(10000);
	}
#::	else {
#::		plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
