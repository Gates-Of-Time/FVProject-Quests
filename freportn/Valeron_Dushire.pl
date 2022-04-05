sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I am Sir Valeron Dushire, leader of the order of the Knights of Truth. If your soul shines with purity and strength, I urge you to join our order. The might of Mithaniel Marr stands behind all who join. Soon that might will help us free this city from the tyranny of the [Freeport Militia].");
	}
	elsif ($text=~/freeport militia/i) {
		quest::say("The Freeport Militia took control of this city long ago. They are nothing more than a group of thugs not worthy of respect. They follow the words of [Sir Lucan] D'Lere. He has been a thorn in this city's side for too long. If you wish to aid us in the fight against tyranny, go speak with Jemoz or Sir Theron. May the Truthbringer shine upon your soul.");
	}
	elsif ($text=~/sir lucan/i) {
		quest::say("Lucan is a bad seed. You see, I trained Sir Lucan. He was nothing more than a street rat who was taken in by the Temple of Marr. The priests taught him and found him to be very agile and strong. They requested either the Priests of Marr or the Knights of Truth take him on as a squire. Gygus could not spare the trainers at the time and so we took the boy. The boy became a man, and a very formidable knight. Then something [went awry].");
	}
	elsif ($text=~/went awry/i) {
		quest::say("During one of our crusades into the lands of Norrath, we left Sir Lucan in charge of the remaining knights. He did much good and the people respected him. He was overtaken by power. He soon began to hire mercenaries to guard the city, calling them the Freeport Militia. His true downfall began when he killed Sentry Dillius, a paladin of the Priests of Marr. His divine powers were stripped from his soul. He was a paladin no longer. He and his militia now control the city. They treat it as their playground and bully the populace. Someone must [stop] Sir Lucan.");
	}
	elsif ($text=~/stop/i) {
		quest::say("That would be good, but I doubt you can. We have been trying for years and are unable to get him apart from the militia. If you do the impossible and destroy Sir Lucan, bring me his testimony. Every knight of the Hall of Truth carries a signed testimony. Sir Lucan still holds his.");
	}
	elsif ($text=~/him/i) {
		quest::say("According to this crest on the tunic, you have recovered one of the bones of a lost Paladin [Hero].");
	}
	elsif ($text=~/diggs duggan/i) {
		quest::say("According to this crest on the tunic, you have recovered one of the bones of a lost Paladin [Hero].");
	}
	elsif ($text=~/hero/i) {
		quest::say("His name has been long lost but his legend lives on in every young knight who aspires to continue his fight. He attempted to quell an evil that resided within Kithicor, perverting nature itself. Much to his relief, it was an earthly foe he fought against and not a denizen summoned from the planes of evil. Then, suddenly, he was surrounded by dozens of dark elves. He was captured and taken to the Dead to be experimented upon and had his soul twisted by vile necromantic magics. Then the Tier'Dal cast his remains to the winds. Where they landed, no one knew, until now. You have found one of his bones. I hereby charge you with a Holy Quest to bring this Hero's bones back for a burial with honors. Do you [accept], knight?");
	}
	elsif ($text=~/accept/i) {
		quest::say("Good! I knew you would. It is one of the highest honors one can receive. Your quest will not be easy for I know not where his other bones lay. A spy of ours within Neriak was able to surmise that six of his bones along with his sword and shield were scattered throughout Norrath. You must search far and wide to find the remaining pieces, as you already have one.. Do not give up. It is now your sacred duty. Once you have retrieved all eight pieces, come back to me and inform me that you [have all the bones].");
	}
	elsif ($text=~/have all the bones/i) {
		#:: Match a 6700 - Dusty Old Skull
		if (plugin::check_hasitem($client, 6700)) {
			#:: Match a 6701 - Dusty Old Leg Bone
			if (plugin::check_hasitem($client, 6701)) {
				#:: Match a 6702 - Dusty Old Jawbone
				if (plugin::check_hasitem($client, 6702)) {
					#:: Match a 6703 - Dusty Old Finger Bones
					if (plugin::check_hasitem($client, 6703)) {
						#:: Match a 6704 - Dusty Old Backbone
						if (plugin::check_hasitem($client, 6704)) {
							#:: Match a 6705 - Dusty Ribcage
							if (plugin::check_hasitem($client, 6705)) {
								#:: Match a 6706 - Dusty Broken Shield
								if (plugin::check_hasitem($client, 6706)) {
									#:: Match a 6707 - Dusty Broken Sword
									if (plugin::check_hasitem($client, 6707)) {
										quest::say("Excellent! You are indeed worthy to bear the title of Holy Knight! Now, about the coffin. I have spoken with Ping Fuzzlecutter, outside the western gates. Ask him about the coffin and once it is made, bring it to Simon Aldicott of Marr. I shall have Simon meet you by the lake in the Commonlands after Ping gives you the coffin.");
									}
								}
							}
						}
					}
				}
			}
		}
	}		
}

sub EVENT_ITEM {
	#:: Match a 18737 - A tattered note
	if (plugin::takeItems(18737 => 1 )) {
		quest::say("Welcome to the Guild, here's your guild tunic. Now, let's get to work.");
		#:: Give item 13554 - Faded Purple Tunic*
		quest::summonitem(13554);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(271, -15);		#:: - Dismal Rage
		quest::faction(281, 100);		#:: + Knights of Truth
		quest::faction(330, -15);		#:: - The Freeport Militia
		quest::faction(362, 20);		#:: + Priests of Marr
		quest::faction(311, 10);		#:: + Steel Warriors
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 18827 - A Testimony of Truth
	elsif (plugin::takeItems(18827 => 1 )) {
		quest::say("Praise be to Marr!! You have done the impossible!! Sir Lucan is finally sent to the higher courts of the Tribunal. The city now has a chance to prosper. The Hall of Truth has been redeemed and gives you thanks. Take this, it is the Sword of Faith. May you wield it with righteousness. Beware of the remainder of the militia. They will be hunting for your head.");
		#:: Give item 13947 - Brilliant Sword of Faith
		quest::summonitem(13947);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(271, -15);		#:: - Dismal Rage
		quest::faction(281, 100);		#:: + Knights of Truth
		quest::faction(330, -15);		#:: - The Freeport Militia
		quest::faction(362, 20);		#:: + Priests of Marr
		quest::faction(311, 10);		#:: + Steel Warriors
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 6701 - Dusty Old Leg Bone
	elsif (plugin::takeItems(6701 => 1)) {
		quest::say("Hail, adventurer! I... what's this? Where did you get this? Never mind.. I.. I never thought we would find [him]!");
		#:: Give a 6701 - Dusty Old Leg Bone
		quest::summonitem(6701);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
