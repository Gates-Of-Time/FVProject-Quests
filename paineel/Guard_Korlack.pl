sub EVENT_SAY {
    if ($faction <= 5) {
        if ($text=~/hail/i) {
            quest::say("Uggg. You needz [keyz]? Rrrrrrr.");
        }
        elsif ($text=~/key/i) {
            quest::say("Uggggg. Take dis keyz.");
            #:: Give a 6378 - Bone Crafted Key
		    quest::summonitem(6378);
        }
    }
}