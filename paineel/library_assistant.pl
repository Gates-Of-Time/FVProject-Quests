sub EVENT_SAY {   
    if($text=~/hail/i){
        quest::say("Lots to do! Many books to place and scrolls to file! Feel free to browse but. please. don't make a mess!");
    }
}
