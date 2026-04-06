sub EVENT_SAY {
    if ($text=~/hail/i) {
        quest::say("Hail to ya, Traveller, and well met! My Name's Garath, a warrior by trade, though I do dabble in some merchanting on the side. My exploring brought me here, and I saw some wonderous things. I ventured inside this ancient tomb with some friends, and oh! The horrors we encountered! I barely made it out alive, but I did manage to pick up some [weapons to trade].");
    }
    elsif ($text=~/weapons/i) {
        quest::say("Interested in a trade, are ya? Well, let me tell ya.. I headed into this tomb in hopes of getting a sword I could use, maybe a warhammer.. Humm, yeah a hammer woulda been good also.. Anyhow, I was unlucky in finding those, but I did manage to get a couple weapons... Sadly, they're really more suited to a [Monk] or a [Knight], not really much use to a warrior like myself at all.");
    }
    elsif ($text=~/monk/i) {
        quest::say("Ah, my eyes fail me lately.. Maybe the cold weather is getting to me? Well, in any case, I picked up some velium hand wraps inside the Tomb here, quite nice.. Yes indeed. I guess I would trade them to ya if you were to give me a warhammer for em. I gotta say, I'm not picky. I'd accept either a primal or a priceless warhammer, and give you these wraps in a straight trade. Heck, I'd take one of each and give you both these hand wraps.");
    }
    elsif ($text=~/knight/i) {
        quest::say("Knight? Yeah, I don't make much distinction, paladin or shadow knight, they're all knights to me. Well, look here, I got two swords from inside the tomb, but I'll be damned if either of em was suited for a warrior. Clearly a knight's blade, what bad luck for me. I was hopin for a good warsword. That's why I'm standin out here ya know? I was hopin I could find someone who might swap me either a primal or priceless warsword, and take one of these knightly swords in trade.");
    }
}

sub EVENT_ITEM {
    #:: Match a 27301 - Priceless Velium Battlehammer.
    if (plugin::takeItems(27301 => 1)) {
        quest::say("Ah, excellent! Guess standin out here in the cold proved worthwhile for me after all. You take that weapon and enjoy it, I know I`ll be getting some use of this one. Safe travel to ya, friend!");
		#:: Give a 5833 - Priceless Velium Fist Wraps.
        quest::summonitem(5833);
		#:: Grant a small amount of experience.
		quest::exp(1000);
    }
    #:: Match a 27321 - Primal Velium Battlehammer.
    elsif (plugin::takeItems(27321 => 1)) {
        quest::say("Ah, excellent! Guess standin out here in the cold proved worthwhile for me after all. You take that weapon and enjoy it, I know I`ll be getting some use of this one. Safe travel to ya, friend!");
		#:: Give a 27320 - Primal Velium Fist Wraps.
        quest::summonitem(27320);
		#:: Grant a small amount of experience.
		quest::exp(1000);
    }
    #:: Match a 27300 - Priceless Velium Warsword.
    elsif (plugin::takeItems(27300 => 1)) {
        quest::say("Ah, excellent! Guess standin out here in the cold proved worthwhile for me after all. You take that weapon and enjoy it, I know I`ll be getting some use of this one. Safe travel to ya, friend!");
		#:: Give a 5834 - Priceless Velium Knight's Sword.
        quest::summonitem(5834);
		#:: Grant a small amount of experience.
		quest::exp(1000);
    }
    #:: Match a 27328 - Primal Velium Warsword.
    elsif (plugin::takeItems(27328 => 1)) {
        quest::say("Ah, excellent! Guess standin out here in the cold proved worthwhile for me after all. You take that weapon and enjoy it, I know I`ll be getting some use of this one. Safe travel to ya, friend!");
		#:: Give a 5835 - Primal Velium Knight's Sword.
        quest::summonitem(5835);
		#:: Grant a small amount of experience.
		quest::exp(1000);
    }
    else {
        quest::say("I have no use for this, $name.");
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}