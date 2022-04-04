sub EVENT_SAY { 
    if($text=~/Hail/i){
        quest::say("What's a kid like you doing in a dangerous place like this?  Shouldn't you be at home having bread. cakes and milk?"); 
    }
}
