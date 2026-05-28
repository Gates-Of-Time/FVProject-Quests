sub EVENT_SAY {
    #:: Match if faction is worse than Indifferent
    if (($text =~ /hail|supplies|giants|eastern wastes|wakening land|great divide|klezendian/i) && $faction > 5) {
        my $random = int(rand(3));

        if ($random == 0) {
            quest::say("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.");
        }
        elsif ($random == 1) {
            quest::say("Is that your BREATH, or did something die in here?  Now go away!");
        }
        else {
            quest::say("I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself.");
        }
    }
    #:: Match if faction is Indifferent or better
    elsif ($faction <= 5) {
        if ($text =~ /hail/i) {
            quest::emote("Greetings, $name.  I am Svekk, a humble servant of Wenglawks.  It is my job to keep track of the supplies here.  I also sell mundane wares.");
        }
        elsif ($text =~ /supplies/i) {
            quest::say("We have all kinds of supplies!  Normally we deliver them to the giants who live outside Kael.");
        }
        elsif ($text =~ /giants/i) {
            quest::emote("There are several encampments in the eastern wastes that barter for supplies with us monthly.  The great divide also has a small outpost of Kromrif who strive to beat the Coldain back into their city of Thurgadin and of course the outposts in the wakening lands.  Our last batch of deliveries did not reach their intended targets.  The runners have not been heard from since they were dispatched either.");
        }
        elsif ($text =~ /eastern wastes/i) {
            quest::say("The Kromrif of the Eastern wastes are more savage than those who dwell within Kael Drakkel.  Normally they can fend for themselves but recently Fjloaren of the Icebane clan has requested we help them with a shipment of supplies.  We have yet to receive payment for the supplies but you are more than welcome to purchase supplies for them and deliver them.  It has been a most unforgiving season upon the wastes I believe.");
        }
        elsif ($text =~ /wakening land/i) {
            quest::emote("Korzak Stonehammer is the name of the man whom we usually deliver to in the Wakening Land.  His men are attempting to expand Kael further into that accursed forest.  If you buy a pack of supplies and deliver it to him I am sure he would repay you handsomely.  A single pack will only cost you a mere five hundred pieces of gold.");
        }
        elsif ($text =~ /great divide/i) {
            quest::say("If you wish to deliver supplies to the warriors in the great divide that is wonderful. One small problem arises.   I do not know you, $race.  I would not trust you as far as I could throw a dragon.  If you pay for the supplies and deliver them the men at the fortress will surely repay you.  A pack of basic supplies only costs a meager five hundred gold pieces.  If you choose to purchase the supplies and deliver them take them to a man named Bekerak Coldbones at the outpost.");
        }
        elsif ($text =~ /klezendian/i) {
            quest::emote("Klezendian crystals can be found in the Crystal Caverns beneath the eastern wastes.  The Rygorr orcs mine Velium and various metals from its rich walls.  Be warned though, the crystal caverns are not a safe place, nameless beasts and even some Coldain call It their home.");
        }
    }
}

sub EVENT_ITEM {
    #:: Match if faction is Indifferent or better
    if ($faction <= 5) {
        if (plugin::takeCoin(50000)) {
            quest::emote("heaves a large pack from a pile in the corner and sets it before you.  'I wish you luck in your endeavor, $race.'");
            #:: Ding!
            quest::ding();
            #:: Grant a tiny amount of experience
            quest::exp(250);
            #:: Give a 25266 - Giant Sack of Supplies
            quest::summonitem(25266);
        }
        #:: Match a 25278 - Velium Torque
        elsif (plugin::takeItems(25278 => 1)) {
            quest::say("Ahh, a Velium torque!  Here, I'll give you one hundred pieces of gold for that!'  Svekk places the torque in his pocket and drops some coins at his feet.");
            #:: Ding!
            quest::ding();
            #:: Set factions
            quest::faction(448, 10);  #:: + Kromzek
            quest::faction(419, 10);  #:: + Kromrif
            quest::faction(429, 10);  #:: + King Tormax
            quest::faction(430, -30); #:: - Claws of Veeshan
            #:: Grant a tiny amount of experience
            quest::exp(250);
            #:: Give exactly 15 platinum
            quest::givecash(0, 0, 0, 15);
        }
        #:: Match a 25267 - Bekerak's Letter to Svekk
        elsif (plugin::takeItems(25267 => 1)) {
            quest::say("This is unbelievable!  The fool is asking for things I don't even have in stock!  Listen, $name, you're the one that wanted to help them out, I'm just here working for Wenglawks.  I can get most of these supplies ready but I have no source for Klezendian Crystals.  I will start bundling the more mundane items Bekerak wants.  If you find any Klezendian return to me with the crystal and this voucher.");
            #:: Ding!
            quest::ding();
            #:: Set factions
            quest::faction(448, 10);  #:: + Kromzek
            quest::faction(419, 10);  #:: + Kromrif
            quest::faction(429, 10);  #:: + King Tormax
            quest::faction(430, -30); #:: - Claws of Veeshan
            #:: Grant a tiny amount of experience
            quest::exp(250);
            #:: Give a 25270 - Supply Voucher
            quest::summonitem(25270);
        }
        #:: Match a 25270 - Supply Voucher and a 25271 - Klezendian Crystal
        elsif (plugin::takeItems(25270 => 1, 25271 => 1)) {
            quest::say("Did you travel to the crystal caverns to get that crystal, $name?  You are quite brave for a $race.  I have the other supplies ready for your trip, they are quite heavy but I think you will get by.");
            #:: Ding!
            quest::ding();
            #:: Set factions
            quest::faction(448, 10);  #:: + Kromzek
            quest::faction(419, 10);  #:: + Kromrif
            quest::faction(429, 10);  #:: + King Tormax
            quest::faction(430, -30); #:: - Claws of Veeshan
            #:: Grant a tiny amount of experience
            quest::exp(250);
            #:: Give a 25269 - Large Supply Sack for Bekerak
            quest::summonitem(25269);
        }
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
