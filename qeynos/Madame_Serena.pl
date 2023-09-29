sub EVENT_SPAWN {
	quest::set_proximity($x - 20, $x + 20, $y - 20, $y + 20);
}

sub EVENT_ENTER {
	quest::shout("Fortune's told here! Donations accepted!");
}
 
sub EVENT_AGGRO {
	quest::say("I put a curse upon thee!  Thou shalt never sire children!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("So you wish to find a path in whichh to start your destiny. Very well. Open your mind and give me your hand. Tell me the faith which you follow.");
	}
	if ($text=~/follow/i) {
		if ($text=~/bertoxxulous/i) {
			quest::say("The catacombs contain safe haven for you and I. It is our place to you I tell no lie.");
		}
		elsif ($text=~/brell/i) {
			quest::say("The place of true power is usually beneath your feet. Stay in this city and a rare enemy you just may meet.");
		}
		elsif ($text=~/bristlebane/i) {
			quest::say("To be like the king of thieves is the path in which you sway. Go to Crow's after sundown. It is better than in day.");
		}
		elsif ($text=~/cazic thule/i) {
			quest::say("You will find that a slight friend is elvish and dark. Be forewarned that in this city it is best not to bark.");
		}
		elsif ($text=~/erollisi/i) {
			quest::say("To be strong in the way of love is truly the only way. Go into Karana's Paw and enjoy your day.");
		}
		elsif ($text =~ /innoruuk/i) {
			my $fac = $client->GetModCharacterFactionLevel(262); #Guards of qeynos - verified on live
			if ($fac > 249) {
				plugin::DoAnim("shiver");
				quest::say("To hate is your way. Just as the father of the dark race. Go forth to Nekutulos is where you should go at good pace.");
			}
			else {
				quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
			}
		}
		elsif ($text=~/karana/i) {
			quest::say("You will be safe in this city of thunder. Travel to the catacombs for easy plunder.");
		}
		elsif ($text=~/mithaniel/i) {
			quest::say("As is your god you are one of true valor which you cannot part. Go forth into the catacombs and say hail Mister Bloodheart.");
		}
		elsif ($text=~/prexus/i) {
			quest::say("He created the Kedge freaks which are now gone from this land. Go deep into the caves of Jaggedpine and someone will take your hand.");
		}
		elsif ($text=~/quellious/i) {
			quest::say("The tranquility and peace of the child lies within your heart. By fighting the opal elves, you shall be doing your part.");
		}
		elsif ($text=~/rallos zek/i) {
			quest::say("To die in battle is the true and only way. Go into Blackburrow and join the fray.");
		}
		elsif ($text=~/rodcet nife/i) {
			quest::say("The power of healing is brought forth in your mass. Go past the gates and tell Zutros you are from Highpass.");
		}
		elsif ($text=~/solusek/i) {
			quest::say("To step foot upon his land would set your body ablaze. Go far north of Freeport to find the eye in the day.");
		}
		elsif ($text=~/tribunal/i) {
			quest::say("You wish to bring the land of justice for all crimes which are unpaid. Start your mission in Freeport, where crime is unafraid.");
		}
		elsif ($text=~/tunare/i) {
			quest::say("From mother of all elves you comfort and peace. Walk into the crops of Karana and all troubles will cease.");
		}
		elsif ($text=~/veeshan/i) {
			quest::say("The mother of all wyrms has her blood running deep withingreat cities. Be aware that you are not alone in this town of no pity.");
		}
	}
	elsif ($text=~/order of the three/i) {
		quest::say("The Order of Three consists of the three positive circles of the arcane known as magic, enchantment and wizardry.  This guild keeps very busy in its hall near the arena.  All in Qeynos respect their powers.");
	}
	elsif ($text=~/where.*monk guild/i) {
		quest::say("In North Qeynos sits the house of the Silent Fist Clan.  These monks are welcome in Qeynos and often assist in training the Qeynos Guard in hand to hand combat.");
	}
	elsif ($text=~/where.*bank/i) {
		quest::say("Qeynos Hold is South Qeynos is just across from the arena.  You know, over the bridge behind Firepride's.");
	}
	elsif ($text=~/where.*port/i) {
		quest::say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	}
	elsif ($text=~/where.*dock/i) {
		quest::say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	}
	elsif ($text=~/who.*kane/i) {
		quest::say("Commander Kane Bayle is the commander of all the Qeynos Guard.  He is second only to his brother, Antonius Bayle.  His post is in the guard house at the city gates.  Mind you, do not bother him, he has a bit of a temper.");
	}
	elsif ($text=~/who.*circle of unseen hands/i) {
		quest::say("The Circle of the Unseen Hand?  I have heard nothing of them.  Are they some sort of performing magic troupe?");
	}
	elsif ($text=~/(cleric|paladin) guild/i) {
		quest::say("Within Qeynos are the Knights of Thunder and the Priests of Life.  Both of these orders consist of clerics and paladins and are respected by all.  The Hall of Thunder lies in South Qeynos and the Temple of Life is in North Qeynos.");
	}
	elsif ($text=~/(ranger|druid) guild/i) {
		quest::say("I believe you shall find the Protectors of the Pine and Jaggedpine Treefolk in the hollow of Surefall Glade.");
	}
	elsif ($text=~/(necromancer|shadowknight) guild/i) {
		quest::say("What gibberish are you spouting?  There is not, nor will there ever be, such an organization as that within a hundred miles of Qeynos, not with the Qeynos Guard on patrol.  Next you will be inquiring of a rogue guild!  Really!");
	}
	elsif ($text=~/who.*jaggedpine treefolk/i) {
		quest::say("In Surefall Glade there are druids called the Jaggedpine Treefolk.  These men and women often assist our army during times of war.");
	}
	elsif ($text=~/captain linarius/i) {
		quest::say("The Qeynos Tower Guards of the hills and plains are commanded by Captain Linarius Graffe.  He often has much to report.  He is posted in a keep which spans a river.  I believe it is in the northern Plains of Karana.");
	}
	elsif ($text=~/where.*north qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*south qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*inn/i) {
		quest::say("If you need a place to rest, I highly recommend the Lion's Mane Inn and Tavern.  Poor adventurers all huddle together in one of the backrooms of Fish's.");
	}
	elsif ($text=~/where.*weapons/i) {
		quest::say("This city has been blessed with the craftsmanship of the Ironforges.  Their weapons are supreme.  Their shop can be found near the Temple of Life in North Qeynos.  You may also try the local warrior guild.");
	}
}

sub EVENT_ITEM {
	#:: Match 50 gold
	if (plugin::takeCoin(0, 0, 50, 0)) {
		#:: Match if faction is Amiable or better
		if ($faction < 5) {
			quest::say("Fifty gold? You must want a rune of fortune. If you want another one, give fifty gold to Mizr N'Mar in the Neriak library.");
			#:: Give a 10531 - Rune of Fortune
			quest::summonitem(10531);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
			#:: Return coin
			quest::givecash($copper, $silver, $gold, $platinum);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
