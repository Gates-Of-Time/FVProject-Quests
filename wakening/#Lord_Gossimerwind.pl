sub EVENT_SAY {
    if ($text =~ /hail/i) {
        quest::emote("flutters his wings rapidly, sending shimmering dust through the air around you. Although he speaks in high pitched chirps you somehow understand his meaning. Hello $name, I am the Count of the Tunarean Drixies. Are you a friend of the Tunarean Court?");
    }
    #:: Match if faction is better than Indifferent
    elsif ($faction < 5 && $text =~ /friend/i) {
        quest::say("I am in need of some help. One of my heralds was sent to deliver a message to the Othmir in the Cobalt Scar some time ago and has not returned. I fear for his safety. If your travels should lead you in that direction please attempt to find news of my missing herald.");
    }
    #:: Match if faction is Indifferent or worse
    elsif ($faction >= 5) {
        quest::say("You are no friend of the Tunarean Court.  Leave me.");
    }
}

sub EVENT_ITEM {
    #:: Match if faction is better than Indifferent
    if ($faction < 5) {
        #:: Match a 24876 - Drixie Remains
        if (plugin::takeItems(24876 => 1)) {
            quest::say("Thank you for your assistance, $name, though I am greatly saddened by the death of my herald.  Truly you are a friend of the Tunarean Court.  Take this crest as a token of my gratitude.");
            #:: Give a 24867 - Crest of the Drixie
            quest::summonitem(24867);
            #:: Set factions
            quest::faction(449, 30); #:: + Tunarean Court
            #:: Grant a tiny amount of experience
            quest::exp(100);
        }
        else {
            quest::say("I have no use for this, $name.");
        }
    }
    #:: Match if faction is Indifferent or worse
    else {
        quest::say("I will not aid someone who is not a friend of the Tunarean Court.");
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
