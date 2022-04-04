sub EVENT_SAY { 
    if($text=~/Hail/i){
        quest::say("Hail.  I urge you not to venture too far from the outpost.  We may not hear your cries for help."); 
    }
}
