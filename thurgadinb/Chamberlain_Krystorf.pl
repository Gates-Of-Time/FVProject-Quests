sub EVENT_SAY {
   if ($text =~ /Hail/i) {
      quest::say("Greetings and welcome to Thurgadin, $name. I am Chamberlain Krystorf and it is my duty to assist the Dain in the management of Icewell Keep and the Royal Court. One could say that Seneschal Aldikar is the Sword of the Dain while I am the Shield, protecting all of his interests and those of the kingdom.");
   }
}

sub EVENT_ITEM {
   #:: Match four 29062 - Giant Warrior Helmet
   if (plugin::takeItems(29062 => 4)) {
      quest::say("Well done, $name, the Dain is pleased with your efforts. With a few more brave allies like you, we'll soon be tearing down the halls of Kael Drakkel.");
      #:: Give a random reward item (30215, 30219, 30212, 30263)
      #:: Choose a random 30215 - Coldain Velium Morning Star, 30219 - Coldain Velium Rapier, 30212 - Coldain Velium Short Sword, 30263 - Coldain Velium-Pick
	  quest::summonitem(quest::ChooseRandom(30215,30219,30212,30263));
      #:: Set factions
      quest::faction(406, 10);  #:: + Coldain
      quest::faction(405, 10);  #:: + Dain Frostreaver IV
      quest::faction(429, -30); #:: - King Tormax
      #:: Grant a medium amount of experience
      quest::exp(64000);
      #:: Ding!
      quest::ding();
	  #:: Give exactly 20 platinum
      quest::givecash(0,0,0,20);
   }

   #:: Match a 1199 - Runed Coldain Prayer Shawl or a 8895 - Runed Coldain Prayer Shawl (Dain approved)
   elsif (plugin::takeItems(1199 => 1) || plugin::takeItems(8895 => 1)) {
      #:: Match a Icewell Keep >> Dain_Frostreaver_IV (129003) on the entity list
      my $mob = $entity_list->GetMobByNpcTypeID(129003);
      if ($mob) {
         quest::say("The Dain has been waiting for you, show your shawl to him.");
         #:: Give a 8895 - Runed Coldain Prayer Shawl (Dain approved)
         quest::summonitem(8895);
      }
      else {
         quest::say("One moment the Dain has been waiting for you. I will call for him.. oh here he is now, show your shawl to him.");
         #:: Give a 8895 - Runed Coldain Prayer Shawl
         quest::summonitem(8895);
         #:: Spawn a Icewell Keep >> Dain_Frostreaver_IV (129003), without grid or guild war, at the given location
         quest::spawn2(129003, 0, 0, 4.0, 690.0, 68.38, 128.0);
      }
   }

   #:: Return unused items
   plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
   #:: Match if signal from thurgadinb/129097.pl is "1"
   if ($signal == 1) {
      quest::shout("The Royal Court of Dain Frostreaver the IV is now closed for the night. Those with official business for the crown may return in the morning.");
   }

   #:: Match if signal from thurgadinb/129098.pl is "2"
   elsif ($signal == 2) {
      quest::shout("The Royal Court of Dain Frostreaver IV and his council of advisors is now in session. Those citizens with official business for the crown please report to the throne room at this time.");
   }
}

