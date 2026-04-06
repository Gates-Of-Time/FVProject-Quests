#:: Nelef the Trader dialogue and key-restoration hand-ins.

sub EVENT_SAY {
    if ($text =~ /Hail/i) {
        quest::say("Good day to you, friend! Tell me, have you [traversed the cold] and the muck to forge through the forsaken tomb of the sleeping dragon? Perhaps you've come across mighty beasts with [prismatic power] beyond imagination?!");
    }
    elsif ($text =~ /traversed the cold/i) {
        quest::say("Aha! I knew you looked like a daring and intrepid adventurer! I've been looking for someone like yourself who has made it through that wretched place alive. I haven't had the privelege of coming across any that have had any [proof] they've been there though, so I'm a little skeptical when someone says they have been there, as you can rightly imagine.");
    }
    elsif ($text =~ /proof/i) {
        quest::say("What proof? Well, let's see. . . Perhaps you can provide me with some kind of trinket that came from the prismatic dragon himself? I'd be most interested in a scale if you were able to get ahold of one.");
    }
    elsif ($text =~ /prismatic power/i) {
        quest::say("Well, I have heard stories of a dragon who was after a prismatic scale and the key to enter the tomb as proof that the sleeping beast had been released. When he took them from the daring adventurers, he destroyed the key because he didn't want those people to return to the tomb. I have no idea why he did this, but if you were one of those unlucky few, please return to me the trinket he gave you and I'll return to you the key to regain entrance to that place.");
    }
}

sub EVENT_ITEM {
    #:: Match a 2700 - Essence Blade.
    if (plugin::takeItems( 2700 => 1)) {
        quest::emote("beams 'Thank you, take this.'");
        #:: Give a 27265 - Sleeper's Key.
        quest::summonitem(27265);
    }
    #:: Match a 2698 - Essence Lens.
    elsif (plugin::takeItems( 2698 => 1)) {
        quest::emote("beams 'Thank you, take this.'");
        #:: Give a 27265 - Sleeper's Key.
        quest::summonitem(27265);
    }
    #:: Match a 2699 - Essence Mace.
    elsif (plugin::takeItems( 2699 => 1)) {
        quest::emote("beams 'Thank you, take this.'");
        #:: Give a 27265 - Sleeper's Key.
        quest::summonitem(27265);
    }
    #:: Match a 2748 - Essence Pearl.
    elsif (plugin::takeItems( 2748 => 1)) {
        quest::emote("beams 'Thank you, take this.'");
        #:: Give a 27265 - Sleeper's Key.
        quest::summonitem(27265);
    }
    #:: Match a 2842 - Essence Ring.
    elsif (plugin::takeItems( 2842 => 1)) {
        quest::emote("beams 'Thank you, take this.'");
        #:: Give a 27265 - Sleeper's Key.
        quest::summonitem(27265);
    }
    #:: Match a 27329 - Prismatic Dragon Scale.
    elsif (plugin::takeItems( 27329 => 1)) {
        quest::emote("beams 'Thank you, take this.'");
        #:: Give a 27265 - Sleeper's Key.
        quest::summonitem(27265);
    }
    else {
        quest::say("I don't need this.");
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}