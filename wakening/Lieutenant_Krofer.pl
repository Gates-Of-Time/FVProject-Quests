sub EVENT_SAY {
    #:: Match if faction is worse than Indifferent
    if (($text =~ /hail|next assignment|prepared/i) && $faction > 5) {
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
    elsif ($text =~ /hail/i && $faction <= 5) {
        quest::say("Unless you're the new mercenary reinforcements I suggest you remove yourself from my presence before I decorate the bottom of my boot with your intestines.");
    }
    #:: Match if faction is Indifferent
    elsif (($text =~ /next assignment|prepared/i) && $faction == 5) {
        quest::say("You need to prove your dedication to our cause before I can discuss such matters with you.");
    }
    elsif ($text =~ /next assignment/i && defined $qglobals{tunarean_regiment}) {
        quest::say("Well, ready or not, this must be done now. Out there in the forest are our enemies. For us to be successful, we must know what they are doing and how they are going about it. Our probing attacks have revealed little so we've decided to send you out to gather any info you can. There must be some sort of messenger out there, bring any info you might find.");
    }
    elsif ($text =~ /prepared/i && defined $qglobals{tunarean_regiment}) {
        quest::say("Very well. We've decided to attack the small Sifaye village northeast of here and I want you to coordinate the attack. I will send you into Kael Drakkel with a request for troop assistance. After the squad is assembled you will lead them to the staging point where you will oversee the battle. Here is the request. Take it to Drioc in the city and return here with the troops.");
        #:: Give a 1706 - Krofer's Requisition
        quest::summonitem(1706);
    }
}

sub EVENT_ITEM {
    #:: Match a 1702 - Mercenary Assignment
    if (plugin::takeItems(1702 => 1)) {
        quest::say("Drioc sent you? I suppose one can't expect much from a mercenary. Well then, $name, your first assignment will be to clear out some of this forest's annoying populace. Bring me the meat of one of the raptors, the meat of two panthers, and the remains of one of those living puddles of black sludge found in the caves. You will then have your payment.");
        #:: Grant a small amount of experience
        quest::exp(1000);
        #:: Ding!
        quest::ding();
        quest::setglobal("krofer_assignment", 1, 0, "F");
    }
    #:: Match two 22851 - Panther Meat, a 22852 - Raptor Meat, and a 1703 - Tar Goo Strands
    elsif (plugin::takeItems(22851 => 2, 22852 => 1, 1703 => 1) && defined $qglobals{krofer_assignment}) {
        quest::say("Well, I suppose you may be worth something more than fodder after all. Here is your payment. Speak to me again when you are ready for your next assignment. For now, get some rest, you will need it.");
        #:: Ding!
        quest::ding();
        #:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(429, 10);  #:: + King Tormax
        quest::faction(430, -30); #:: - Claws of Veeshan
        #:: Grant a small amount of experience
        quest::exp(1000);
        quest::givecash(1, 7, 0, 12);
        quest::delglobal("krofer_assignment");
        quest::setglobal("tunarean_regiment", 1, 0, "F");
    }
    #:: Match a 1704 - Sifaye Messenger's Report
    elsif (plugin::takeItems(1704 => 1) && defined $qglobals{tunarean_regiment}) {
        quest::say("Excellent, $name. With this we can plan an attack that might actually accomplish something. Here is your payment. You have also earned this cloak, it should help protect you from the clawing undergrowth of this savage land. Your next mission will be more complex and dangerous, however we may be able to spare a laborer or two to assist you. Rest now, and tell me when you are prepared.");
        #:: Ding!
        quest::ding();
        #:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(429, 10);  #:: + King Tormax
        quest::faction(430, -30); #:: - Claws of Veeshan
        #:: Grant a small amount of experience
        quest::exp(1000);
        quest::givecash(0, 5, 4, 11);
        #:: Give a 1705 - Velium Studded Cloak
        quest::summonitem(1705);
    }
    #:: Match a 1707 - Signed Requisition
    elsif (plugin::takeItems(1707 => 1)) {
        quest::emote("takes the note and looks it over, then sighs and says, 'This will have to be enough. The squad should be here shortly. When they arrive you will march with them to the staging area near the village of those insect Sifaye. When you are satisfied with the formation, give the corporal the order to attack and observe the battle. After the village is destroyed return this report to me and we'll plan our next move.'");
        #:: Grant a small amount of experience
        quest::exp(1000);
        #:: Ding!
        quest::ding();
        #:: Give a 1708 - Mission Report
        quest::summonitem(1708);
        #:: Spawn a The Wakening Land >> Corporal_Hlash (119168), without grid or guild war, at the given location
        quest::spawn2(119168, 0, 0, -4975, -699, -182, 63);
        #:: Spawn a The Wakening Land >> Berzerker_Dolvad (119166), without grid or guild war, at the given location
        quest::spawn2(119166, 0, 0, -4954, -697, -182, 63);
        #:: Spawn a The Wakening Land >> Berzerker_Voldak (119167), without grid or guild war, at the given location
        quest::spawn2(119167, 0, 0, -4954, -671, -182, 63);
        #:: Spawn a The Wakening Land >> Disciple_Atharm (119169), without grid or guild war, at the given location
        quest::spawn2(119169, 0, 0, -4976, -672, -182, 63);
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
    #:: Spawn a The Wakening Land >> NAMESCRIPT (119173), without grid or guild war, at the current location
    quest::spawn2(119173, 0, 0, $x, $y, $z, $h);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
}
