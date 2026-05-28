sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($CircletFalinkan == 1) {
            if ($text =~ /hail/i) {
                quest::say("Greetings, Traveler. I do not receive many visitors to my quarters here, besides the occasional unfortunate treasure seeker that often will make for a good snack.");
            }
            elsif ($text =~ /kardakor.*sent.*me/i) {
                quest::say("You are sent from Kardakor are you? Well surely he must have sent you to stand before me for a reason.");
            }
            elsif ($text =~ /talisman.*identif/i) {
                quest::say("Ah of course, It has been quite a long time sense my powers of identification have been requested. If you are sent from Kardakor then your intent must be well directed. I do have a favor to ask of you before I identify your talisman. I seek some rare treasures to further some studies that I have been working on for a long time.");
            }
            elsif ($text =~ /rare.*treasures/i) {
                quest::say("There are 3 items that I seek to continue my studies of some various and musterious magics. Bring to me the teachings of a high ranking Kromzek that I hear goes by the name of Gkrean, a chipped fang from a beast deep within the Cursed Necropolis. Also for good measure, I require the Head of a Kromzek Staff Sergeant to prove to your dedication to our cause. Present these 3 items to me along with your Talisman that you wish to learn more about and I shall do my best to identify its origin for you.");
            }
        }
        elsif ($text =~ /hail/i) {
            quest::say("Greetings, Traveler. I do not receive many visitors to my quarters here, besides the occasional unfortunate treasure seeker that often will make for a good snack.");
        }
    }
}

sub EVENT_ITEM {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($CircletFalinkan == 1) {
            #:: Match a 1861 - Old Worn Talisman, a 1864 - Teachings of Gkrean, a 1865 - Head of Staff Sergeant Drioc, and a 1863 - Chipped Fang
            if (plugin::takeItems(1861 => 1, 1864 => 1, 1865 => 1, 1863 => 1)) {
                quest::say("So you finally made it ! Head back to Ralgyn to get your reward.");
                #:: Give a 1866 - Glanitar's Imbued Talisman
                quest::summonitem(1866);
                #:: Set factions
                quest::faction(436, 20);  #:: + Yelinak
                quest::faction(430, 20);  #:: + Claws of Veeshan
                quest::faction(448, -10); #:: - Kromzek
                #:: Grant a large amount of experience
                quest::exp(100000);
                quest::targlobal("CircletFalinkan", "2", "Y1", 114002, $charid, 114);
            }
            #:: Match a 1861 - Old Worn Talisman
            elsif (plugin::takeItems(1861 => 1)) {
                quest::say("It would be my guess that you present this to me in hopes of finding out more about the magics it possesses. Before I can do this I require some rare treasures that you must present to me.");
                #:: Give a 1861 - Old Worn Talisman
                quest::summonitem(1861);
            }
        }
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
